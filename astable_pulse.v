`timescale 1ns / 1ps

module astable_pulse(
    input wire clk,               // 100 MHz clock input
    output reg divided_clk = 0
    );
     // Output clock, initialized to 0

    
    localparam div_value = 50_000_000;  // Correct value for 1 Hz (toggle every 50 million cycles)
    
    integer counter_value = 0;  // 32-bit counter

    always @(posedge clk) begin
        if (counter_value >= div_value - 1) begin
            counter_value <= 0;                // Reset counter
            divided_clk <= ~divided_clk;       // Toggle output clock
        end
        else begin
            counter_value <= counter_value + 1;  // Increment counter
        end
    end
   
endmodule
