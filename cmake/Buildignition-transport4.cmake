include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-tools QUIET)
find_or_build_package(ignition-msgs1 QUIET)

ycm_ep_helper(ignition-transport4 TYPE HG
                                  STYLE BITBUCKET
                                  REPOSITORY ignitionrobotics/ign-transport
                                  TAG ign-transport4
                                  DEPENDS ignition-tools
                                          ignition-msgs1
                                  COMPONENT osrf
                                  CMAKE_CACHE_ARGS -DBUILD_TESTING:BOOL=OFF)
