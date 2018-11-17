

Gazebo Superbuild
=================

Meta-repository that uses [CMake](https://cmake.org/)/[YCM](http://robotology.github.io/ycm) to simplify download and compilation of the [Gazebo simulator](http://gazebosim.org/) and its dependencies from source.

## Rationale
To compile Gazebo from source, you need to download and compile a lot of other
dependecies from source, for example `SDFormat` and the `ignition` libraries. 

This repo enable the automatic download/compilation/installation of all this libraries 
automatically using only CMake. 

### How to use 

#### CMake options
* `ENABLE_GAZEBO` (Default: ON) : if this option is enabled, the superbuild downloads and compiles the latest version of Gazebo 9, and all the necessary dependencies.
* `ENABLE_IGN_GAZEBO` (Default: OFF) : if this option is enabled, the superbuild downloads and compiles the latest development of Gazebo 11 (also known as "Ignition Gazebo") and all the necessary dependencies.

#### Linux/macOS

##### Uninstall binary packages

If you want to compile Gazebo, SDFormat and all the ignition libraries from sources, remember to uninstall all the relevant 
packages from apt or homebrew before starting to use the `gazebo-superbuild` . Otherwise, the [YCM](http://robotology.github.io/ycm)'s [find_or_build_package](http://robotology.github.io/ycm/gh-pages/git-master/module/FindOrBuildPackage.html#find_or_build_package) command will find the binary version of Gazebo and its dependencies and will not build anything from source. Alternative, you can manually set the [`USE_SYSTEM_<package>`](http://robotology.github.io/ycm/gh-pages/git-master/manual/ycm-superbuild.7.html?highlight=use_system_#ycm-superbuild-manual-for-developers) CMake variables for all the packages that you want to build from source instead of using from binaries.

To uninstall the binary packages in Debian/Ubuntu, run the following command: 
~~~
sudo apt-get remove '.*gazebo.*' '.*sdformat.*' '.*ignition-.*'
~~~


To uninstall the binary packages in macOS Homebrew, `brew uninstall` all formulas that start with `gazebo`, `sdformat` or `ignition` .

##### Compilation 
Follow the instructions available at http://gazebosim.org/tutorials?tut=install_from_source&cat=install 
to download the non-OSRF dependencies of Gazebo, then avoid to manually download any repository from bitbucket, 
but just compile this project as any other CMake-based project: 
~~~
git clone https://github.com/traversaro/gazebo-superbuild
cd gazebo-superbuild
mkdir build
cd build
ccmake ..
make
~~~
The make step will download all the sub-projects in the `gazebo-superbuild/osrf` folder, and 
will create build directories for all the sub-projects in the `gazebo-superbuild/build` folder. 
All the project will also be installed in `gazebo-superbuild/build/install`. 

#### Windows 
The current way of building Gazebo on Windows ( http://gazebosim.org/tutorials?tut=install_on_windows&cat=install) is assuming a fixed filesystem layout for the projects and their dependies, so at the moment it is not possible to use gazebo-superbuild on Windows (even if in theory it would be possible).

#### Experimental instructions 
**This instructions are NOT working at the moment, they are meant for developers working on it.**
**This instructions required Visual Studio 2015 or 2017.**
See https://bitbucket.org/osrf/gazebo/issues/2129/visual-studio-2015-compatibility .

Build Gazebo dependencies using [`vcpkg`](https://github.com/Microsoft/vcpkg) : 
~~~
./vcpkg install --triplet x64-windows boost cppzmq curl dlfcn-win32 ffmpeg freeimage protobuf ogre qt5 qwt tbb zeromq zlib zziplib
~~~
**Note: vcpkg builds all this packages from sources, and so the process can be extremly slow (several hours) and uses tens of Gigabytes of space.**

TODO: compile the superbuild.


