include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)

ycm_ep_helper(ignition-common3 TYPE HG
                               STYLE BITBUCKET
                               REPOSITORY ignitionrobotics/ign-common
                               TAG gz11
                               DEPENDS ignition-cmake2
                               COMPONENT osrf)
