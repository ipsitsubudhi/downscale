# downscale

## Requirements 

The following things are required to be pre-installed in the PC\
1.CMake\
2.vcpkg

CMake can be installed from the cmake website and the environment variables can be adjusted accordingly and for the vcpkg one should run the following commands
 

**1.Clone the repository and go inside the vcpkg folder**
```shell
git clone https://github.com/microsoft/vcpkg.git \
cd vcpkg\
```

**2. Run the bootstrap script**
```shell
On Windows
.\bootstrap-vcpkg.bat
On Linux/MacOS
./bootstrap-vcpkg.sh
```


**3.Add vcpkg to your environment**
```shell
On Windows
set "VCPKG_ROOT=C:\path\to\vcpkg"
set PATH=%VCPKG_ROOT%;%PATH%

On Linux
export VCPKG_ROOT=/path/to/vcpkg
export PATH=$VCPKG_ROOT:$PATH
```

Otherwise other than setting the environment variables in the terminal
One can adjust these on CMakePresets.json in the following lines
        **"CMAKE_TOOLCHAIN_FILE": "/opt/vcpkg/scripts/buildsystems/vcpkg.cmake"**
        **"VCPKG_ROOT": "/opt/vcpkg"**



After doing all this in the demos folder and in the graph.cpp file 
adjust the Line 143 and give the suitable location of the CSV file that is meant to be read
and also adjust the Lines 170 for the total number of columns in the CSV files
and Line 172 and Line 173 refer to the required columns numbers in the x-Axis and y-Axis vectors


and after all this

remove the build folder by the command
**rm -rf build** if it exists
and then run the following commands

**mkdir build
cd build
cmake ..**

and once it installs all the required dependencies
build the program by the following ways 

**cd ..
cd build
./graph**
