include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(ignition-commons3 QUIET)
find_or_build_package(ignition-tools QUIET)


ycm_ep_helper(ignition-fuel_tools3 TYPE HG
                                   STYLE BITBUCKET
                                   REPOSITORY ignitionrobotics/ign-fuel-tools
                                   TAG ign-fuel-tools3
                                   DEPENDS ignition-cmake2
                                           ignition-commons3
                                           ignition-tools
                                   COMPONENT osrf)
