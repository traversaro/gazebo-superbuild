include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-math2 QUIET)

ycm_ep_helper(ignition-msgs0 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-msgs
                             TAG default
                             DEPENDS ignition-math2
                             COMPONENT osrf)
