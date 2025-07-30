module ripple_adder(input [2:0]x, input [2:0]y, input cin, output cout, output [2:0] s);
    
    wire cout1;
    wire cout2;

    sum sum1(.x(x[0]), .y(y[0]), .cin(cin), .cout(cout1), .s(s[0]));
    sum sum2(.x(x[1]), .y(y[1]), .cin(cout1), .cout(cout2), .s(s[1]));
    sum sum3(.x(x[2]), .y(y[2]), .cin(cout2), .cout(cout), .s(s[2]));

endmodule