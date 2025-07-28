module teste_tb();
    reg a;
    wire b;

    teste uut(a, b);

    initial begin
        a <= 0;
        #10;
        $display("b: %b", b);
    end
endmodule