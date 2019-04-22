include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(ignition-cmake2 TYPE HG
                              STYLE BITBUCKET
                              REPOSITORY ignitionrobotics/ign-cmake
                              TAG ign-cmake2
                              COMPONENT osrf)
