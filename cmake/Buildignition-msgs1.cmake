include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake0 QUIET)
find_or_build_package(ignition-math4 QUIET)

ycm_ep_helper(ignition-msgs1 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-msgs
                             TAG ign-msgs1
                             DEPENDS ignition-cmake0
                                     ignition-math4
                             COMPONENT osrf)
