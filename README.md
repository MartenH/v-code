

# State

V is an interresting language and is under heavy development.
These examples starts with v0.25


# Examples





## Running under msys2


## Running under msys2

* Download and install msys2
* Install 




$ find /mingw64 -name ft2build.h
/mingw64/include/freetype2/ft2build.h


C_INCLUDE_PATH=/mingw64/include/freetype2/



## Modules...

It seems as the modulures are at `~/.vmodules/` so to install for ui.

```bash
rm -rf ~/.vmodules/ui/
```



## Debugging

 v build -cg users.v


  -g                Generate debugging information in the backtraces. Add *V* line numbers to the generated executable.
  -cg               Same as -g, but add *C* line numbers to the generated executable instead of *V* line numbers.
  -keep_c           Do NOT remove the generated .tmp.c files after compilation.
                    It is useful when using debuggers like gdb/visual studio, when given after `-g` / `-cg`.
  -pretty_c         Run clang-format over the generated C file, so that it looks nicer. Requires you to have clang-format.
  -show_c_cmd  



mahi@big MINGW64 ~/git/v
$ git clone --depth=1 https://github.com/ubawurinna/freetype-windows-binaries thirdparty/freetype/

$ v build -cg -keep_c -pretty_c -show_c_cmd users.v


gcc  -std=gnu11 -Wall -Wextra -Wno-unused-variable -Wno-unused-parameter -Wno-unused-result -Wno-unused-function -Wno-missing-braces -Wno-unused-label -g3 -no-pie -Werror=implicit-function-declaration -o "users.exe" "C:\msys64\tmp\v\users.tmp.c" -municode "C:\Users\mahi\git\v\thirdparty\stb_image\stbi.o" "C:\Users\mahi\git\v\thirdparty\glad\glad.o" -ldbghelp -I "C:\Users\mahi\git\v\thirdparty\stb_image" -lws2_32 -I "C:\Users\mahi\git\v\thirdparty\glad" -I "C:\Users\mahi\git\v\thirdparty\glfw" -L "C:\Users\mahi\git\v\thirdparty\glfw" -lgdi32 -lshell32 -lglfw3 -I "C:\Users\mahi\git\v\thirdparty\freetype\include" -L "C:\Users\mahi\git\v\thirdparty\freetype\win64" -lfreetype



$ pacman -Q --info mingw-w64-x86_64-freetype

$ pacman -Qqe | grep freetype


$ v build  -cg -keep_c -pretty_c -show_c_cmd users.v



0x00000000004262fb in ui__Stack_get_subscriber (b=0x82ed00) at C:\msys64\tmp\v\users.tmp.c:10868
10868   C:\msys64\tmp\v\users.tmp.c: No such file or directory.

 /c/msys64/tmp/v/users.tmp.c


 GDB
 
PATH=%PATH%;c:\mingw-w64\mingw32\bin



