@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 2b77be1e376b4273909e6434db572fcf -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_behav xil_defaultlib.TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
