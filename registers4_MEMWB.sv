module registers_MEMWB(
    input clk,
    input reset,

    //INPUT
    input [31:0] in_alu_out,
    input [31:0] in_mem_out,

    input [4:0] in_rd,
    input in_mem_to_reg,
    input in_write_enable,

    //OUTPUT
    output reg [31:0] out_alu_out,
    output reg [31:0] out_mem_out,

    output reg [4:0] out_rd,
    output reg out_mem_to_reg,
    output reg out_write_enable
);

initial begin
    out_alu_out = 0;
    out_mem_out = 0;
    out_rd = 0;
    out_mem_to_reg = 0;
    out_write_enable = 0;
end

always @(posedge clk) begin
    if (reset) begin
        out_alu_out <= 0;
        out_mem_out <= 0;
        out_rd <= 0;
        out_mem_to_reg <= 0;
        out_write_enable <= 0;       
    end
    out_alu_out <= in_alu_out;
    out_mem_out <= in_mem_out;

    out_rd <= in_rd;
    out_mem_to_reg <= in_mem_to_reg;
    out_write_enable <= in_write_enable;
end

endmodule
