include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(ignition-math2 TYPE HG
                             STYLE BITBUCKET
                             REPOSITORY ignitionrobotics/ign-math
                             TAG ign-math2
                             COMPONENT osrf
							 CMAKE_ARGS -DBUILD_TESTING:BOOL=${BUILD_TESTING})
