include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(ignition-cmake0 TYPE HG
                              STYLE BITBUCKET
                              REPOSITORY ignitionrobotics/ign-cmake
                              TAG default
                              COMPONENT osrf)
