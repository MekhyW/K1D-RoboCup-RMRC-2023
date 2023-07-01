#include <iostream>
#include <string>
#include <opencv4/opencv2/opencv.hpp>
#include "ROS_communication.h"
#include "Claw.h"
#include "Gamepad_controller.h"
#include "Thermal_gas.h"
#include "QR_read.h"
#include "Motion_detection.h"
#include "Hazmat_detection.h"
using namespace std;
using namespace cv;
int resolution_horizontal = 640;
int resolution_vertical = 480;
VideoCapture captureA;
VideoCapture captureB;
Mat frameA = Mat::zeros(resolution_horizontal, resolution_vertical, CV_8UC3);
Mat frameB = Mat::zeros(resolution_horizontal, resolution_vertical, CV_8UC3);
Mat webcam_image = Mat::zeros(2 * resolution_horizontal, resolution_vertical, CV_8UC3);

void openCamera()
{
	captureA.open(4);
	captureB.open(6);
	captureA.set(CAP_PROP_FPS, 30);
	captureB.set(CAP_PROP_FPS, 30);
}

float mapPwm(float n, float fromLow, float fromHigh, float outLow, float outHigh) {
    float normalized = (n - fromLow) / (fromHigh - fromLow);
    return outLow + normalized * (outHigh - outLow);
}

void MoveManual()
{
	PublishOpenCR(gamepad_command, gamepad_value_1, gamepad_value_2);
}

void MoveAutonomous()
{
	const float wheelBase = 0.12;
	const float wheelRadius = 0.055;
	const float fromLow = -3 / (2*wheelRadius);
	const float fromHigh = 3 / (2*wheelRadius);
	const float toLow = -200;
	const float toHigh = 200;
	float l = ((2*cmdvel_linear_x) - (cmdvel_angular_z*wheelBase)) / (2*wheelRadius);
  	float r = ((2*cmdvel_linear_x) + (cmdvel_angular_z*wheelBase)) / (2*wheelRadius);
	uint16_t pwm_l = mapPwm(l, fromLow, fromHigh, toLow, toHigh);
	uint16_t pwm_r = mapPwm(r, fromLow, fromHigh, toLow, toHigh);
	PublishOpenCR("MotorsMove", pwm_l, pwm_r);
}

void checkUserInput()
{
	cout << gamepad_command << " " << to_string(gamepad_value_1) << " " << to_string(gamepad_value_2) << "\n";
	if (gamepad_command == "RaiseFrontFlippers")
		RaiseFrontFlippers();
	else if (gamepad_command == "LowerFrontFlippers")
		LowerFrontFlippers();
	else if (gamepad_command == "RaiseBackFlippers")
		RaiseBackFlippers();
	else if (gamepad_command == "LowerBackFlippers")
		LowerBackFlippers();
	else if (gamepad_command == "First+" && dexterity_mode)
		FirstPlus();
	else if (gamepad_command == "First-" && dexterity_mode)
		FirstMinus();
	else if (gamepad_command == "Second+" && dexterity_mode)
		SecondPlus();
	else if (gamepad_command == "Second-" && dexterity_mode)
		SecondMinus();
	else if (gamepad_command == "ClawOpen" && dexterity_mode)
		ClawOpen();
	else if (gamepad_command == "ClawClose" && dexterity_mode)
		ClawClose();
	else if (gamepad_command == "Third+" && dexterity_mode)
		ThirdPlus();
	else if (gamepad_command == "Third-" && dexterity_mode)
		ThirdMinus();
	else if (gamepad_command == "OpenGripper" && dexterity_mode)
		ClawOpen();
	else if (gamepad_command == "CloseGripper" && dexterity_mode)
		ClawClose();
	else if (!autonomous_mode && !gamepad_command.empty())
		MoveManual();
	else if (autonomous_mode)
		MoveAutonomous();
}

void captureFrame()
{
	captureA >> frameA;
	captureB >> frameB;
	resize(frameA, frameA, Size(resolution_horizontal, resolution_vertical), INTER_NEAREST);
	resize(frameB, frameB, Size(resolution_horizontal, resolution_vertical), INTER_NEAREST);
	hconcat(frameA, frameB, webcam_image);
}

void checkSensorsFeed()
{
	ReadOpenCR();
	UpdateGas(current_gas);
	UpdateThermal(current_temperature);
	captureFrame();
	if (qr_detection)
		webcam_image = ReadQR(webcam_image);
	if (hazmat_detection)
		webcam_image = DetectHazmat(webcam_image);
	if (motion_detection)
		webcam_image = DetectMotionAbsdiff(webcam_image);
}


void setup(int argc, char** argv) 
{
	system("gnome-terminal -- play '|rec --buffer 512 -d'");
	ConnectROS(argc, argv);
	namedWindow("K1D");
	namedWindow("CO2");
	namedWindow("Thermal");
	openCamera();
	InitializeQR();
	InitializeHazmat();
}


void loop()
{
	if (SDL_GameControllerGetPlayerIndex(gGameController) < 1)
		InitializeGamepad();
	UpdateGamepadInput();
	checkUserInput();
	checkSensorsFeed();
	imshow("K1D", webcam_image);
	imshow("CO2", gas_image);
	imshow("Thermal", thermal_image);
	waitKey(1);
}


int main(int argc, char** argv)
{
	setup(argc, argv);
	while (true)
	{
		try {loop();}
		catch (const std::exception& e){cout << e.what() << endl;}
		catch (ros::Exception &e ){cout << e.what() << endl;}
		catch (const cv::Exception& e){cout << e.what() << endl;}
		catch (...){cout << "Unknown error occurred!" << endl;}
	}
	return 0;
}