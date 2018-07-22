@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 75d63f7295fc49bc9520609adb091fbd -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_behav xil_defaultlib.TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
