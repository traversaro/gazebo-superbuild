include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-tools QUIET)
find_or_build_package(ignition-msgs0 QUIET)

ycm_ep_helper(ignition-transport1 TYPE HG
                                  STYLE BITBUCKET
                                  REPOSITORY ignitionrobotics/ign-transport
                                  TAG ign-transport1
                                  DEPENDS ignition-tools
                                          ignition-msgs0
                                  COMPONENT osrf)
