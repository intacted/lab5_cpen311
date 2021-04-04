module TB_fast ();

reg clock_1;
reg clock_2;
reg pulse;

wire out;

fast_to_slow #(1) dut (
    .clk1(clock_1),
    .clk2(clock_2),
    .in (pulse),
    .out(out)
);


initial begin
    clock_1=0;
    clock_2=0;
    #5;
    forever begin
        clock_1=1;
        #5;
        clock_2=1;
        clock_1=0;
        #5;
        clock_2=0;
    end
end

initial begin
    pulse=0;
    #5;
    pulse=1;
    #1000;
    $stop;
end

endmodule