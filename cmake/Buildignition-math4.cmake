include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake0 QUIET)

ycm_ep_helper(ignition-math4 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-math
                             TAG ign-math4
                             DEPENDS ignition-cmake0
                             COMPONENT osrf
							 CMAKE_ARGS -DBUILD_TESTING:BOOL=${BUILD_TESTING})
