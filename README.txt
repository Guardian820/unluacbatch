STEPS TO USE THIS SCRIPT:

0. CREATE A NEW FOLDER AND COPY/MOVE "unluac.jar", "unluabatch.bat" AND ALL YOUR FOLDERS CONTAINING .LUA FILES INSIDE THIS NEW FOLDER. 
1. RUN (or DOUBLE-CLICK) "unluabatch.bat".
2. READ INSTRUCTIONS INSIDE THE CONSOLE AND ENTER "YES".
3. THE SCRIPT WILL START TO DECOMPILE ALL LUA FILES TO A UNDERSTANDABLE CODE.
4. Just remembering that the script is recursive, so you don't need to worry about troubles if the original project has a lot of folders and subfolders, this script will decompile all the .lua files it finds, starting by the directory that it was initially executed (obvious).
5. This script also depends on LUAC to work and LUAC also needs java to run, so make sure your have installed JAVA on your machine.

https://sourceforge.net/projects/unluac/

unluac is a decompiler for Lua 5.0 through 5.4. It runs on Lua chunks that have been compiled with the standard Lua compiler. It requires that debugging information has not been stripped from the chunk. (By default, the Lua compiler includes this debugging information.)

This program is written in Java. A JAR package is available in the downloads section so you don't have to compile it. It runs from the command line and accepts a single argument: the file name of a Lua chunk. The decompiled code is printed to the standard output.

Here is an example usage of unluac:
java -jar unluac.jar myfile.lua > myfile_decompiled.lua

The current version also has pretty good support for Lua 5.0 and Lua 5.1. Support for later versions is also good if the code doesn't use too many gotos.