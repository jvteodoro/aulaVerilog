module sum(input x, input y, input cin, output s, output cout);
    assign s = x ^ y ^ cin;
    assign cout = (x&y)|(x&cin)|(y&cin);
endmodule