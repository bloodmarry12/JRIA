@echo off
set java_home=%JAVA_HOME_1_5%
set path=%JAVA_HOME_1_5%\bin;%path%
ant %1

@echo on