include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)
find_or_build_package(sdformat8 QUIET)
find_or_build_package(ignition-plugin1 QUIET)
find_or_build_package(ignition-transport6 QUIET)
find_or_build_package(ignition-common3 QUIET)
find_or_build_package(ignition-gui1 QUIET)
find_or_build_package(ignition-physics1 QUIET)
find_or_build_package(ignition-math6 QUIET)

ycm_ep_helper(ignition-gazebo1 TYPE HG
                               STYLE BITBUCKET
                               REPOSITORY ignitionrobotics/ign-gazebo
                               TAG ign-gazebo1
                               DEPENDS ignition-cmake2
                                       sdformat8
                                       ignition-plugin1
                                       ignition-transport6
                                       ignition-common3
                                       ignition-gui1
                                       ignition-physics1
                                       ignition-fuel_tools3
                               COMPONENT osrf)
