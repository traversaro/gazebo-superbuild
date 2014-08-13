include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(TinyXML QUIET)
find_or_build_package(console_bridge QUIET)

ycm_ep_helper(urdfdom_headers TYPE GIT
              STYLE GITHUB
              REPOSITORY traversaro/urdfdom_headers.git
              TAG master
              COMPONENT osrf
              DEPENDS console_bridge
                      TinyXML)
