include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(ignition-math6 QUIET)
find_or_build_package(ignition-tools QUIET)


ycm_ep_helper(ignition-msgs3 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-msgs
                             TAG ign-msgs3
                             DEPENDS ignition-cmake2
                                     ignition-math6
                                     ignition-tools
                             COMPONENT osrf)
