# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build"

# Include any dependencies generated for this target.
include CMakeFiles/K1D.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/K1D.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/K1D.dir/flags.make

CMakeFiles/K1D.dir/K1D_MAIN.cpp.o: CMakeFiles/K1D.dir/flags.make
CMakeFiles/K1D.dir/K1D_MAIN.cpp.o: ../K1D_MAIN.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/K1D.dir/K1D_MAIN.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/K1D.dir/K1D_MAIN.cpp.o -c "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/K1D_MAIN.cpp"

CMakeFiles/K1D.dir/K1D_MAIN.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/K1D.dir/K1D_MAIN.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/K1D_MAIN.cpp" > CMakeFiles/K1D.dir/K1D_MAIN.cpp.i

CMakeFiles/K1D.dir/K1D_MAIN.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/K1D.dir/K1D_MAIN.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/K1D_MAIN.cpp" -o CMakeFiles/K1D.dir/K1D_MAIN.cpp.s

# Object files for target K1D
K1D_OBJECTS = \
"CMakeFiles/K1D.dir/K1D_MAIN.cpp.o"

# External object files for target K1D
K1D_EXTERNAL_OBJECTS =

K1D: CMakeFiles/K1D.dir/K1D_MAIN.cpp.o
K1D: CMakeFiles/K1D.dir/build.make
K1D: /usr/local/lib/libopencv_gapi.so.4.8.0
K1D: /usr/local/lib/libopencv_stitching.so.4.8.0
K1D: /usr/local/lib/libopencv_alphamat.so.4.8.0
K1D: /usr/local/lib/libopencv_aruco.so.4.8.0
K1D: /usr/local/lib/libopencv_bgsegm.so.4.8.0
K1D: /usr/local/lib/libopencv_bioinspired.so.4.8.0
K1D: /usr/local/lib/libopencv_ccalib.so.4.8.0
K1D: /usr/local/lib/libopencv_dnn_objdetect.so.4.8.0
K1D: /usr/local/lib/libopencv_dnn_superres.so.4.8.0
K1D: /usr/local/lib/libopencv_dpm.so.4.8.0
K1D: /usr/local/lib/libopencv_face.so.4.8.0
K1D: /usr/local/lib/libopencv_freetype.so.4.8.0
K1D: /usr/local/lib/libopencv_fuzzy.so.4.8.0
K1D: /usr/local/lib/libopencv_hdf.so.4.8.0
K1D: /usr/local/lib/libopencv_hfs.so.4.8.0
K1D: /usr/local/lib/libopencv_img_hash.so.4.8.0
K1D: /usr/local/lib/libopencv_intensity_transform.so.4.8.0
K1D: /usr/local/lib/libopencv_line_descriptor.so.4.8.0
K1D: /usr/local/lib/libopencv_mcc.so.4.8.0
K1D: /usr/local/lib/libopencv_quality.so.4.8.0
K1D: /usr/local/lib/libopencv_rapid.so.4.8.0
K1D: /usr/local/lib/libopencv_reg.so.4.8.0
K1D: /usr/local/lib/libopencv_rgbd.so.4.8.0
K1D: /usr/local/lib/libopencv_saliency.so.4.8.0
K1D: /usr/local/lib/libopencv_stereo.so.4.8.0
K1D: /usr/local/lib/libopencv_structured_light.so.4.8.0
K1D: /usr/local/lib/libopencv_superres.so.4.8.0
K1D: /usr/local/lib/libopencv_surface_matching.so.4.8.0
K1D: /usr/local/lib/libopencv_tracking.so.4.8.0
K1D: /usr/local/lib/libopencv_videostab.so.4.8.0
K1D: /usr/local/lib/libopencv_viz.so.4.8.0
K1D: /usr/local/lib/libopencv_wechat_qrcode.so.4.8.0
K1D: /usr/local/lib/libopencv_xfeatures2d.so.4.8.0
K1D: /usr/local/lib/libopencv_xobjdetect.so.4.8.0
K1D: /usr/local/lib/libopencv_xphoto.so.4.8.0
K1D: /usr/local/lib/libSDL2.so
K1D: /opt/ros/noetic/lib/libtf.so
K1D: /opt/ros/noetic/lib/libtf2_ros.so
K1D: /opt/ros/noetic/lib/libactionlib.so
K1D: /opt/ros/noetic/lib/libtf2.so
K1D: /opt/ros/noetic/lib/libcv_bridge.so
K1D: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
K1D: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
K1D: /opt/ros/noetic/lib/libimage_transport.so
K1D: /opt/ros/noetic/lib/libmessage_filters.so
K1D: /opt/ros/noetic/lib/libclass_loader.so
K1D: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
K1D: /usr/lib/x86_64-linux-gnu/libdl.so
K1D: /opt/ros/noetic/lib/libroscpp.so
K1D: /usr/lib/x86_64-linux-gnu/libpthread.so
K1D: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
K1D: /opt/ros/noetic/lib/librosconsole.so
K1D: /opt/ros/noetic/lib/librosconsole_log4cxx.so
K1D: /opt/ros/noetic/lib/librosconsole_backend_interface.so
K1D: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
K1D: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
K1D: /opt/ros/noetic/lib/libxmlrpcpp.so
K1D: /opt/ros/noetic/lib/libroslib.so
K1D: /opt/ros/noetic/lib/librospack.so
K1D: /usr/lib/x86_64-linux-gnu/libpython3.8.so
K1D: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
K1D: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
K1D: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
K1D: /opt/ros/noetic/lib/libroscpp_serialization.so
K1D: /opt/ros/noetic/lib/librostime.so
K1D: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
K1D: /opt/ros/noetic/lib/libcpp_common.so
K1D: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
K1D: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
K1D: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
K1D: /usr/local/lib/libopencv_shape.so.4.8.0
K1D: /usr/local/lib/libopencv_highgui.so.4.8.0
K1D: /usr/local/lib/libopencv_datasets.so.4.8.0
K1D: /usr/local/lib/libopencv_plot.so.4.8.0
K1D: /usr/local/lib/libopencv_text.so.4.8.0
K1D: /usr/local/lib/libopencv_ml.so.4.8.0
K1D: /usr/local/lib/libopencv_phase_unwrapping.so.4.8.0
K1D: /usr/local/lib/libopencv_optflow.so.4.8.0
K1D: /usr/local/lib/libopencv_ximgproc.so.4.8.0
K1D: /usr/local/lib/libopencv_video.so.4.8.0
K1D: /usr/local/lib/libopencv_videoio.so.4.8.0
K1D: /usr/local/lib/libopencv_imgcodecs.so.4.8.0
K1D: /usr/local/lib/libopencv_objdetect.so.4.8.0
K1D: /usr/local/lib/libopencv_calib3d.so.4.8.0
K1D: /usr/local/lib/libopencv_dnn.so.4.8.0
K1D: /usr/local/lib/libopencv_features2d.so.4.8.0
K1D: /usr/local/lib/libopencv_flann.so.4.8.0
K1D: /usr/local/lib/libopencv_photo.so.4.8.0
K1D: /usr/local/lib/libopencv_imgproc.so.4.8.0
K1D: /usr/local/lib/libopencv_core.so.4.8.0
K1D: CMakeFiles/K1D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable K1D"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/K1D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/K1D.dir/build: K1D

.PHONY : CMakeFiles/K1D.dir/build

CMakeFiles/K1D.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/K1D.dir/cmake_clean.cmake
.PHONY : CMakeFiles/K1D.dir/clean

CMakeFiles/K1D.dir/depend:
	cd "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software" "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software" "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build" "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build" "/home/enriccog/Developer/K1D-RoboCup-RMRC-2023/Main software/build/CMakeFiles/K1D.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/K1D.dir/depend
