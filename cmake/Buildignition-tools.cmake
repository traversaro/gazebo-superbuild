include(YCMEPHelper)
include(FindOrBuildPackage)

include(YCMEPHelper)

ycm_ep_helper(ignition-tools TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-tools
                             TAG default
                             COMPONENT osrf
							 CMAKE_ARGS -DBUILD_TESTING:BOOL=${BUILD_TESTING})
