@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 5e4d1130fc9a4976afe717af8b0ade51 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sqrt_behav xil_defaultlib.sqrt -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
