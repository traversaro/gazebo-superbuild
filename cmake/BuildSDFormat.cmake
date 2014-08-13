include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(TinyXML QUIET)
find_or_build_package(urdfom 

include(YCMEPHelper)

ycm_ep_helper(SDFormat TYPE HG
                       STYLE BITBUCKET
                       REPOSITORY osrf/sdformat)
