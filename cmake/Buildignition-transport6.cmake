include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-tools QUIET)
find_or_build_package(ignition-msgs3 QUIET)

ycm_ep_helper(ignition-transport6 TYPE HG
                                  STYLE BITBUCKET
                                  REPOSITORY ignitionrobotics/ign-transport
                                  TAG ign-transport6
                                  DEPENDS ignition-tools
                                          ignition-msgs3
                                  COMPONENT osrf
                                  CMAKE_CACHE_ARGS -DBUILD_TESTING:BOOL=OFF)
