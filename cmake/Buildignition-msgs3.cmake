include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake0 QUIET)
find_or_build_package(ignition-math6 QUIET)
find_or_build_package(ignition-tools QUIET)


ycm_ep_helper(ignition-msgs3 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-msgs
                             TAG gz11
                             DEPENDS ignition-cmake2
                                     ignition-math6
                                     ignition-tools
                             COMPONENT osrf)
