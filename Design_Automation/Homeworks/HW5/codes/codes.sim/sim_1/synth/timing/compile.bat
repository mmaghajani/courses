@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
echo "xvlog -m64 --relax -prj sqrt_vlog.prj"
call %xv_path%/xvlog  -m64 --relax -prj sqrt_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
