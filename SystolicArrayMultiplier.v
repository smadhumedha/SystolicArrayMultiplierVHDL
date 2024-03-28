
`timescale 1ns / 1ps
module SystolicArrayMultiplier(

	input [31:0] dataa1,
	input [31:0] datab1,
	input [31:0] dataa2,
	input [31:0] datab2,
	input [31:0] dataa3,
        input [31:0] datab3,
	input clk, rst,
	output reg [63:0] adder_out1,
	output reg [63:0] adder_out2,
    output reg [63:0] adder_out3,
    output reg [63:0] adder_out4,
        output reg [63:0] adder_out5,
        output reg [63:0] adder_out6,
        output reg [63:0] adder_out7,
        output reg [63:0] adder_out8,
            output reg [63:0] adder_out9
    );
    reg  [31:0] dataa_reg=0, datab_reg=0,dataa2_reg=0, datab2_reg=0,dataa3_reg=0, datab3_reg=0;
    reg  [31:0] dataa_reg1=0, datab_reg1=0,dataa2_reg1=0, datab2_reg1=0,dataa3_reg1=0, datab3_reg1=0;
    reg  [31:0] dataa_reg2=0, datab_reg2=0,dataa2_reg2=0, datab2_reg2=0,dataa3_reg2=0, datab3_reg2=0;
    reg  [31:0] dataa_reg3=0, datab_reg3=0,dataa2_reg3=0, datab2_reg3=0,dataa3_reg3=0, datab3_reg3=0;
            wire [63:0] o1,o2,o3,o4,o5,o6,o7,o8,o9;
    mac1 m1(dataa1,datab1,clk,rst,o1);
     always@(posedge clk )
    begin
        dataa_reg<=dataa1;
        datab_reg<=datab1;
                              datab2_reg<=datab2; 
                              dataa2_reg<=dataa2;
                                         datab3_reg<=datab3; 
                                         dataa3_reg<=dataa3;        
                             end      
    mac1 m2(dataa_reg,datab2_reg,clk,rst,o2);
     
       mac1 m4(dataa2_reg,datab_reg,clk,rst,o4);
       
       always@(posedge clk )
                            begin
                                datab_reg1<=datab_reg; 
                                dataa_reg1<=dataa_reg;
                                                      datab2_reg1<=datab2_reg; 
                                                      dataa2_reg1<=dataa2_reg;
                                                                 datab3_reg1<=datab3_reg; 
                                                                 dataa3_reg1<=dataa3_reg;         
                            end  
       mac1 m5(dataa2_reg1,datab2_reg1,clk,rst,o5);
       mac1 m3(dataa_reg1,datab3_reg1,clk,rst,o3);
       mac1 m7(dataa3_reg1,datab_reg1,clk,rst,o7);
       always@(posedge clk )
                            begin
                                datab_reg2<=datab_reg1; 
                                dataa_reg2<=dataa_reg1;
                                                      datab2_reg2<=datab2_reg1; 
                                                      dataa2_reg2<=dataa2_reg1;
                                                                 datab3_reg2<=datab3_reg1; 
                                                                 dataa3_reg2<=dataa3_reg1;         
                            end
      mac1 m8(dataa3_reg2,datab2_reg2,clk,rst,o8);
      mac1 m6(dataa2_reg2,datab3_reg2,clk,rst,o6);
always@(posedge clk )
                                  begin
                                      datab_reg3<=datab_reg2; 
                                      dataa_reg3<=dataa_reg2;
                                                            datab2_reg3<=datab2_reg2; 
                                                            dataa2_reg3<=dataa2_reg2;
                                                                       datab3_reg3<=datab3_reg2; 
                                                                       dataa3_reg3<=dataa3_reg2;         
                                  end         
      mac1 m9(dataa3_reg3,datab3_reg3,clk,rst,o9);                            
    always@*
    begin
            adder_out1<=o1;
            adder_out2<=o2;
            adder_out3<=o3;
            adder_out4<=o4;
            adder_out5<=o5;
            adder_out6<=o6;
                        adder_out7<=o7;
                        adder_out8<=o8;
                        adder_out9<=o9;
    end           
endmodule


