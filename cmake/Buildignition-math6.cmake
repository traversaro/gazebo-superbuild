include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)

ycm_ep_helper(ignition-math6 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-math
                             TAG ign-math6
                             DEPENDS ignition-cmake2
                             COMPONENT osrf)
