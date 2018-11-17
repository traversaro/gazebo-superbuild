include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(ignition-math6 QUIET)
find_or_build_package(ignition-common3 QUIET)
find_or_build_package(ignition-plugin1 QUIET)
find_or_build_package(ignition-transport6 QUIET)
find_or_build_package(ignition-rendering1 QUIET)
find_or_build_package(ignition-msgs3 QUIET)
find_or_build_package(ignition-tools QUIET)



ycm_ep_helper(ignition-gui1 TYPE HG
                            STYLE BITBUCKET
                            REPOSITORY ignitionrobotics/ign-gui
                            TAG gz11
                            DEPENDS ignition-cmake2
                                    ignition-math6
                                    ignition-common3
                                    ignition-plugin1
                                    ignition-transport6
                                    ignition-rendering1
                                    ignition-msgs3
                                    ignition-tools
                            COMPONENT osrf)
