include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-math43 QUIET)

ycm_ep_helper(SDFormat TYPE HG
                       STYLE BITBUCKET
                       REPOSITORY osrf/sdformat
                       TAG default
                       DEPENDS ignition-math4
                       COMPONENT osrf)
