include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-math4 QUIET)

ycm_ep_helper(SDFormat TYPE HG
                       STYLE BITBUCKET
                       REPOSITORY osrf/sdformat
                       TAG sdf6
                       DEPENDS ignition-math4
                       COMPONENT osrf)
