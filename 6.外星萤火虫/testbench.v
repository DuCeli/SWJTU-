`timescale 1ns / 1ns		//仿真时间单位/时间精度
module testbench();		//信号声明
	reg f0,clk,p,sta;
	wire f1,f2;
	
	parameter T = 20;	//初始周期20ns
	initial		//复位
	begin
		clk = 0;
		p 	 = 0;
		sta = 0;
		#10000000	//10ms
		p   = 1;
		#5000000	//5ms
		sta = 1;
	end
	initial
	begin//20组f0,f0周期1ms，频率1000Hz
		f0=1;
		#250000
		f0=0;
		#1750000
		f0=1;
		#150000
		f0=0;
		#1850000
		f0=1;
		#200000
		f0=0;
		#1800000
		f0=1;
		#180000
		f0=0;
		#1820000/*0.5KHz*/
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#80000
		f0=0;
		#920000
		f0=1;
		#180000
		f0=0;
		#820000/*1KHz*/
		f0=1;
		#50000
		f0=0;
		#780000
		f0=1;
		#150000
		f0=0;
		#680000
		f0=1;
		#30000
		f0=0;
		#800000
		f0=1;
		#130000
		f0=0;
		#700000/*1.2Khz*/
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#820000
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#180000
		f0=0;
	end
	always #(T/2)
		clk=~clk;
	Top divider(.clk(clk),.f0(f0),.f1(f1));
endmodule
