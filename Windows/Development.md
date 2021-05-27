# C/C++  
### Install Visual Studio IDE or C++ Build Tools  
- https://code.visualstudio.com/docs/cpp/config-msvc  
## Install GCC (Mingw)  
This VS Codet config walks you through the setup  
- https://code.visualstudio.com/docs/cpp/config-mingw  
    
#### Install vcpkg  
- https://docs.microsoft.com/en-us/cpp/build/vcpkg?view=msvc-160  
- https://github.com/Microsoft/vcpkg  
```code
git clone https://github.com/microsoft/vcpkg
.\vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg integrate install
```  
####  Building  
**You must start a developer prompt and then run vscode from there**
This sets up environment variables required for the build to work with the cl compiler.  
Once in a developer prompt, navigate to your project folder and start up vscode from there, this well setup everything you need to be able to use the cl compiler.  
```code
code .
```  