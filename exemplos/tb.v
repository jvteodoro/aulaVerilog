module tb();
    reg [2:0] x;
    reg [2:0] y;
    reg cin;
    wire cout;
    wire [2:0] s;
    ripple_adder ripple_adder(.x(x), .y(y), .cin(cin), .cout(cout), .s(s));

    initial begin
        $dumpfile("file.vcd");
        $dumpvars(0, tb);
        x <= 2;
        y <= 1;
        cin <= 0;
        #10;
        $display("Sum: %b (%d)", s, s);
    end

endmodule