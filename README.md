

Gazebo Superbuild
=================

Meta-repository that uses [CMake](https://cmake.org/)/[YCM](http://robotology.github.io/ycm) to simplify download and compilation of the [Gazebo simulator](http://gazebosim.org/) and its dependencies from source.

## Rationale
To compile Gazebo from source, you need to download and compile a lot of other
dependecies from source, for example `SDFormat` and the `ignition` libraries. 

This repo enable the automatic download/compilation/installation of all this libraries 
automatically using only CMake. 

### How to use 

#### Linux/macOS

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


