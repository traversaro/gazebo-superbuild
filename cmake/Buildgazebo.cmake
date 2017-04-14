include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-math3 QUIET)
find_or_build_package(ignition-msg0 QUIET)
find_or_build_package(ignition-transport3 QUIET)
find_or_build_package(SDFormat QUIET)

ycm_ep_helper(gazebo TYPE HG
                     STYLE BITBUCKET
                     REPOSITORY osrf/gazebo
                     TAG default
                     DEPENDS ignition-math3
                             ignition-msg0
                             ignition-transport3
                             SDFormat
                     COMPONENT osrf)
