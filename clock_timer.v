`timescale 1ns / 1ps


module clock_timer(
    input clk,
    input wire select_switch,
    input wire manual_pulse,
    input wire hlt,
    output wire clock8bit,
    output wire manual_pulse_led,
    output wire one_hz_led
    );
    
    wire onehzclock;
    wire[2:0] output_lines;
    
    assign manual_pulse_led = manual_pulse;
    assign one_hz_led = onehzclock;
    
    astable_pulse ap (
        .clk(clk), 
        .divided_clk(onehzclock)
        );
    
    //at this point we should have
    //inputs:
            //ap
            //select_switch
            //manual_pulse
            //hlt
            
    //outputs:
            //output_lines[0]
            //output_lines[1]
            //output_lines[2]
            //clock8bit
    // 0 and 1 go into a or gate, and then that output and line 2 go into an and gate for the findal clock8bit output
    
    assign output_lines[0] = onehzclock & select_switch;
    assign output_lines[1] = (~select_switch)& manual_pulse;
    assign output_lines[2] = ~hlt;
    
    
    wire combination_line = (output_lines[0]| output_lines[1]);
    assign clock8bit = combination_line & output_lines[2];
    
    
endmodule
