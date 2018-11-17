include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(ignition-math6 QUIET)

ycm_ep_helper(sdformat8 TYPE HG
                        STYLE BITBUCKET
                        REPOSITORY osrf/sdformat
                        TAG gz11
                        DEPENDS ignition-math6
                        COMPONENT osrf)
