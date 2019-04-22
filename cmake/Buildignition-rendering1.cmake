include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(ignition-math6 QUIET)
find_or_build_package(ignition-common3 QUIET)


ycm_ep_helper(ignition-rendering1 TYPE HG
                                  STYLE BITBUCKET
                                  REPOSITORY ignitionrobotics/ign-rendering
                                  TAG ign-rendering1
                                  DEPENDS ignition-cmake2
                                          ignition-math6
                                          ignition-common3
                                  COMPONENT osrf)
