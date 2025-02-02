`timescale 1ns / 1ps

/*
Main Clock Timer circuit for 8 Bit CPU Project


image of circuit:
https://github.com/manc4s/Clock_Timer/blob/main/Clock%20Timer%20Circuit.png

inputs:
astable_pulse, select_switch, manual pulse, hlt switch
outputs:
led0 to show manual pulse, led1 to show astable pulse, led15 to show Clock timer output. 
*/

module clock_timer(
    input clk, //100Mhz
    input wire select_switch, //select switch
    input wire manual_pulse,  // button input
    input wire hlt, // stop switch
    output wire clock8bit, //represents final output of clock circuit


    //Output LED's for visualizing pulse
    output wire manual_pulse_led,  //manual
    output wire one_hz_led  //astable
    );


    
    wire onehzclock; //represents divided clock
    wire[2:0] output_lines; //used for wires in the circuit(3 channel bus name output_lines)


    //tie led's for visualizing directly to their respective signals
    assign manual_pulse_led = manual_pulse;
    assign one_hz_led = onehzclock;


    //call the astable_pulse module from
    //astable_pulse.v 
    //should be located in the design sources folder alongside this .v file.
        //clk input as clk and divided_clk output as onehzclock
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
