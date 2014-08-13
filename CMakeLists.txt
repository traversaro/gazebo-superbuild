cmake_minimum_required(VERSION 2.8.11)
project(gazebo-superbuild NONE)

## we have to enable C because it is currently used
## by CMake to describe packages (in Config*.cmake files)
enable_language(C)

# makes available local cmake modules
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set(GAZEBO-SUPERBUILD_MAJOR_VERSION 0)
set(GAZEBO-SUPERBUILD_MINOR_VERSION 1)
set(GAZEBO-SUPERBUILD_PATCH_VERSION 0)
set(GAZEBO-SUPERBUILD_VERSION ${GAZEBO-SUPERBUILD_MAJOR_VERSION}.${GAZEBO-SUPERBUILD_MINOR_VERSION}.${GAZEBO-SUPERBUILD_PATCH_VERSION})

include(CTest)
include(FeatureSummary)

# Enables unmerged patches to CMake modules, this is required for the superbuild to work
set(YCM_USE_CMAKE_PROPOSED TRUE CACHE BOOL "Use files including unmerged cmake patches")

# we want to make YCM a soft dependency
include(YCMBootstrap)

include(FindOrBuildPackage)
include(YCMEPHelper)

# For now just download SDFormat and its dependencies
find_or_build_package(SDFormat)

feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)