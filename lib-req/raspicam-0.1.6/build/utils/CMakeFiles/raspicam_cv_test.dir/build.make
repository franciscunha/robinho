# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build

# Include any dependencies generated for this target.
include utils/CMakeFiles/raspicam_cv_test.dir/depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/raspicam_cv_test.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/raspicam_cv_test.dir/flags.make

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o: utils/CMakeFiles/raspicam_cv_test.dir/flags.make
utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o: ../utils/raspicam_cv_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o"
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o -c /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/utils/raspicam_cv_test.cpp

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.i"
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/utils/raspicam_cv_test.cpp > CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.i

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.s"
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/utils/raspicam_cv_test.cpp -o CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.s

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.requires:

.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.requires

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.provides: utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.requires
	$(MAKE) -f utils/CMakeFiles/raspicam_cv_test.dir/build.make utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.provides.build
.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.provides

utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.provides.build: utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o


# Object files for target raspicam_cv_test
raspicam_cv_test_OBJECTS = \
"CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o"

# External object files for target raspicam_cv_test
raspicam_cv_test_EXTERNAL_OBJECTS =

utils/raspicam_cv_test: utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o
utils/raspicam_cv_test: utils/CMakeFiles/raspicam_cv_test.dir/build.make
utils/raspicam_cv_test: src/libraspicam.so.0.1.6
utils/raspicam_cv_test: src/libraspicam_cv.so
utils/raspicam_cv_test: /usr/local/lib/libopencv_gapi.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_stitching.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_aruco.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_bgsegm.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_bioinspired.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_ccalib.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_dnn_objdetect.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_dnn_superres.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_dpm.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_highgui.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_face.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_freetype.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_fuzzy.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_hfs.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_img_hash.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_intensity_transform.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_line_descriptor.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_quality.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_rapid.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_reg.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_rgbd.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_saliency.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_stereo.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_structured_light.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_phase_unwrapping.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_superres.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_optflow.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_surface_matching.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_tracking.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_datasets.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_plot.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_text.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_dnn.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_videostab.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_videoio.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_xfeatures2d.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_ml.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_shape.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_ximgproc.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_video.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_xobjdetect.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_imgcodecs.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_objdetect.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_calib3d.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_features2d.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_flann.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_xphoto.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_photo.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_imgproc.so.4.2.0
utils/raspicam_cv_test: /usr/local/lib/libopencv_core.so.4.2.0
utils/raspicam_cv_test: utils/CMakeFiles/raspicam_cv_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable raspicam_cv_test"
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raspicam_cv_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/raspicam_cv_test.dir/build: utils/raspicam_cv_test

.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/build

utils/CMakeFiles/raspicam_cv_test.dir/requires: utils/CMakeFiles/raspicam_cv_test.dir/raspicam_cv_test.cpp.o.requires

.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/requires

utils/CMakeFiles/raspicam_cv_test.dir/clean:
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils && $(CMAKE_COMMAND) -P CMakeFiles/raspicam_cv_test.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/clean

utils/CMakeFiles/raspicam_cv_test.dir/depend:
	cd /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6 /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/utils /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils /home/francisco/Desktop/Projects/P2/robinho/raspicam-0.1.6/build/utils/CMakeFiles/raspicam_cv_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/raspicam_cv_test.dir/depend
