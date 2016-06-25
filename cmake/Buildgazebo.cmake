include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-math2 QUIET)
find_or_build_package(ignition-transport1 QUIET)
find_or_build_package(SDFormat QUIET)

ycm_ep_helper(gazebo TYPE HG
                     STYLE BITBUCKET
                     REPOSITORY osrf/gazebo
                     TAG default
                     DEPENDS ignition-math2
                             ignition-transport1
                             SDFormat
                     COMPONENT osrf)
