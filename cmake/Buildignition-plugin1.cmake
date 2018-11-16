include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-cmake2 QUIET)

ycm_ep_helper(ignition-plugin1 TYPE HG
                               STYLE BITBUCKET
                               REPOSITORY ignitionrobotics/ign-plugin
                               TAG ign-plugin1
                               DEPENDS ignition-cmake2
                               COMPONENT osrf)
