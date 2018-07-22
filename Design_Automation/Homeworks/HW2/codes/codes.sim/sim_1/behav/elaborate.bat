@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 2c30558b2e6a4389b46363d90f06a719 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot frequency_divider_behav xil_defaultlib.frequency_divider -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
