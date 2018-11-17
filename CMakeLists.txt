cmake_minimum_required(VERSION 2.8.11)
project(gazebo-superbuild NONE)

## we have to enable C because it is currently used
## by CMake to describe packages (in Config*.cmake files)
enable_language(C CXX)

# makes available local cmake modules
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(CTest)
include(FeatureSummary)

# Enables unmerged patches to CMake modules, this is required for the superbuild to work
set(YCM_USE_CMAKE_PROPOSED TRUE CACHE BOOL "Use files including unmerged cmake patches")

# we want to make YCM a soft dependency
include(YCMBootstrap)

include(FindOrBuildPackage)
include(YCMEPHelper)

option(ENABLE_GAZEBO "Build Gazebo 9." ON)
option(ENABLE_IGN_GAZEBO "Build the experimental version of Gazebo 11 (ign-gazebo)." OFF)

if(ENABLE_GAZEBO)
  find_or_build_package(gazebo)
endif()

if(ENABLE_IGN_GAZEBO)
  find_or_build_package(ignition-gazebo)
endif()

feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)
