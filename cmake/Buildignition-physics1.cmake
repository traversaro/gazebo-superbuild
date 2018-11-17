include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(ignition-common3 QUIET)
find_or_build_package(ignition-math6 QUIET)
find_or_build_package(ignition-plugin1 QUIET)
find_or_build_package(sdformat8 QUIET)


ycm_ep_helper(ignition-physics1 TYPE HG
                                STYLE BITBUCKET
                                REPOSITORY ignitionrobotics/ign-physics
                                TAG default
                                DEPENDS ignition-cmake2
                                        ignition-common3
                                        ignition-math6
                                        ignition-plugin1
                                        sdformat8
                                COMPONENT osrf)
