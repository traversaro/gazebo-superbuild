include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

find_or_build_package(ignition-math2 QUIET)

ycm_ep_helper(SDFormat TYPE HG
                       STYLE BITBUCKET
                       REPOSITORY osrf/sdformat
                       TAG default
                       DEPENDS ignition-math2
                       COMPONENT osrf)
