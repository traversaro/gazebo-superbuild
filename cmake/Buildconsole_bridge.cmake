include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(console_bridge TYPE GIT
              STYLE GITHUB
              REPOSITORY ros/console_bridge.git
              TAG master
              COMPONENT osrf
              CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
			  CMAKE_ARGS -DBUILD_TESTING:BOOL=${BUILD_TESTING})
