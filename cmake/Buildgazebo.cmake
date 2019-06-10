include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-math4 QUIET)
find_or_build_package(ignition-msg1 QUIET)
find_or_build_package(ignition-transport4 QUIET)
find_or_build_package(SDFormat QUIET)

ycm_ep_helper(gazebo TYPE HG
                     STYLE BITBUCKET
                     REPOSITORY osrf/gazebo
                     TAG gazebo9
                     DEPENDS ignition-math4
                             ignition-msg1
                             ignition-transport4
                             SDFormat
                     COMPONENT osrf
					 CMAKE_ARGS -DBUILD_TESTING:BOOL=${BUILD_TESTING})
