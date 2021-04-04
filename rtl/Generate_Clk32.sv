//generates a clk with given frequency using counters
module generate_clk32 (inclk, outclk, div_clk_count,reset);
    input   logic inclk;
    input   logic reset;
    output  logic outclk;
    input   logic [31:0]div_clk_count;
	reg [31:0]count;

//counters counts up on rising edge of clk_50 until desired div_clk_count
    always @(posedge inclk,negedge reset)  begin
        //initialize the counter
        if(!reset)begin
            outclk <=0;
            count <= 0;
        end
        else begin
            //resets after counting up to the given value
            if(count >= div_clk_count)begin
                outclk <= ~outclk;
                count <= 0;
            end
            else begin
                count <=count+1;
            end  
        end
    end
    
endmodule