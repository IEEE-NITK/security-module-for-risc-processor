`timescale 1ns / 1ps

module expandedKey(
    input [3:0] round,
    output reg [127:0] out
    );
    
    wire [7:0] keys [175:0];
    
    assign keys[0] = 8'h01;
    assign keys[1] = 8'h04;
    assign keys[2] = 8'h02;
    assign keys[3] = 8'h03;
    assign keys[4] = 8'h01;
    assign keys[5] = 8'h03;
    assign keys[6] = 8'h04;
    assign keys[7] = 8'h0a;
    assign keys[8] = 8'h09;
    assign keys[9] = 8'h0b;
    assign keys[10] = 8'h07;
    assign keys[11] = 8'h0f;
    assign keys[12] = 8'h0f;
    assign keys[13] = 8'h06;
    assign keys[14] = 8'h03;
    assign keys[15] = 8'h00;
    assign keys[16] = 8'h6f;
    assign keys[17] = 8'h7f;
    assign keys[18] = 8'h61;
    assign keys[19] = 8'h75;
    assign keys[20] = 8'h6e;
    assign keys[21] = 8'h7c;
    assign keys[22] = 8'h65;
    assign keys[23] = 8'h7f;
    assign keys[24] = 8'h67;
    assign keys[25] = 8'h77;
    assign keys[26] = 8'h62;
    assign keys[27] = 8'h70;
    assign keys[28] = 8'h68;
    assign keys[29] = 8'h71;
    assign keys[30] = 8'h61;
    assign keys[31] = 8'h70;
    assign keys[32] = 8'hce; 
    assign keys[33] = 8'h90;
    assign keys[34] = 8'h30;
    assign keys[35] = 8'h30;
    assign keys[36] = 8'ha0;
    assign keys[37] = 8'hec;
    assign keys[38] = 8'h55;
    assign keys[39] = 8'h4f;
    assign keys[40] = 8'hc7;
    assign keys[41] = 8'h9b;
    assign keys[42] = 8'h37;
    assign keys[43] = 8'h3f;
    assign keys[44] = 8'haf;
    assign keys[45] = 8'hea;
    assign keys[46] = 8'h56;
    assign keys[47] = 8'h4f;
    assign keys[48] = 8'h4d;
    assign keys[49] = 8'h21;
    assign keys[50] = 8'hb4;
    assign keys[51] = 8'h49;
    assign keys[52] = 8'hed;
    assign keys[53] = 8'hcd; 
    assign keys[54] = 8'he1;
    assign keys[55] = 8'h06;
    assign keys[56] = 8'h2a;
    assign keys[57] = 8'h56;
    assign keys[58] = 8'hd6;
    assign keys[59] = 8'h39;
    assign keys[60] = 8'h85;
    assign keys[61] = 8'hbc;
    assign keys[62] = 8'h80;
    assign keys[63] = 8'h76;
    assign keys[64] = 8'h20;
    assign keys[65] = 8'hec;
    assign keys[66] = 8'h8c;
    assign keys[67] = 8'hde;
    assign keys[68] = 8'hcd;
    assign keys[69] = 8'h21;
    assign keys[70] = 8'h6d;
    assign keys[71] = 8'hd8;
    assign keys[72] = 8'he7;
    assign keys[73] = 8'h77;
    assign keys[74] = 8'hbb;
    assign keys[75] = 8'he1;
    assign keys[76] = 8'h62;
    assign keys[77] = 8'hcb;
    assign keys[78] = 8'h3b;
    assign keys[79] = 8'h97;
    assign keys[80] = 8'h2f;
    assign keys[81] = 8'h0e; 
    assign keys[82] = 8'h04;
    assign keys[83] = 8'h74;
    assign keys[84] = 8'he2;
    assign keys[85] = 8'h2f;
    assign keys[86] = 8'h69;
    assign keys[87] = 8'hac;
    assign keys[88] = 8'h05;
    assign keys[89] = 8'h58;
    assign keys[90] = 8'hd2;
    assign keys[91] = 8'h4d;
    assign keys[92] = 8'h67;
    assign keys[93] = 8'h93;
    assign keys[94] = 8'he9;
    assign keys[95] = 8'hda;
    assign keys[96] = 8'hd3;
    assign keys[97] = 8'h10;
    assign keys[98] = 8'h53;
    assign keys[99] = 8'hf1;
    assign keys[100] = 8'h31;
    assign keys[101] = 8'h3f;
    assign keys[102] = 8'h3a;
    assign keys[103] = 8'h5d;
    assign keys[104] = 8'h34;
    assign keys[105] = 8'h67;
    assign keys[106] = 8'he8;
    assign keys[107] = 8'h10;
    assign keys[108] = 8'h53;
    assign keys[109] = 8'hf4;
    assign keys[110] = 8'h01;
    assign keys[111] = 8'hca;
    assign keys[112] = 8'h2c;
    assign keys[113] = 8'h6c;
    assign keys[114] = 8'h27; 
    assign keys[115] = 8'h1c;
    assign keys[116] = 8'h1d;
    assign keys[117] = 8'h53;
    assign keys[118] = 8'h1d;
    assign keys[119] = 8'h41;
    assign keys[120] = 8'h29;
    assign keys[121] = 8'h34;
    assign keys[122] = 8'hf5;
    assign keys[123] = 8'h51;
    assign keys[124] = 8'h7a;
    assign keys[125] = 8'hc0;
    assign keys[126] = 8'hf4;
    assign keys[127] = 8'h9b;
    assign keys[128] = 8'h16;
    assign keys[129] = 8'hd3;
    assign keys[130] = 8'h33;
    assign keys[131] = 8'hc6;
    assign keys[132] = 8'h0b;
    assign keys[133] = 8'h80;
    assign keys[134] = 8'h2e;
    assign keys[135] = 8'h87;
    assign keys[136] = 8'h22;
    assign keys[137] = 8'hb4;
    assign keys[138] = 8'hdb;
    assign keys[139] = 8'hd6;
    assign keys[140] = 8'h58;
    assign keys[141] = 8'h74;
    assign keys[142] = 8'h2f;
    assign keys[143] = 8'h4d;
    assign keys[144] = 8'h9f;
    assign keys[145] = 8'hc6;
    assign keys[146] = 8'hd0;
    assign keys[147] = 8'hac;  
    assign keys[148] = 8'h94;
    assign keys[149] = 8'h46;
    assign keys[150] = 8'hfe;
    assign keys[151] = 8'h2b;
    assign keys[152] = 8'hb6;
    assign keys[153] = 8'hf2;
    assign keys[154] = 8'h25;
    assign keys[155] = 8'hfd;
    assign keys[156] = 8'hee;
    assign keys[157] = 8'h86;
    assign keys[158] = 8'h0a;
    assign keys[159] = 8'hb0;
    assign keys[160] = 8'hed;
    assign keys[161] = 8'ha1;
    assign keys[162] = 8'h37;
    assign keys[163] = 8'h84;
    assign keys[164] = 8'h79;
    assign keys[165] = 8'he7;
    assign keys[166] = 8'hc9;
    assign keys[167] = 8'haf;
    assign keys[168] = 8'hcf;
    assign keys[169] = 8'h15;
    assign keys[170] = 8'hec;
    assign keys[171] = 8'h52;
    assign keys[172] = 8'h21;
    assign keys[173] = 8'h93;
    assign keys[174] = 8'he6;
    assign keys[175] = 8'he2;
    
    always@(*) begin
        case(round)
            0: out = {keys[0], keys[1], keys[2], keys[3], keys[4], keys[5], keys[6], keys[7], keys[8], keys[9], keys[10], keys[11], keys[12], keys[13], keys[14], keys[15]};
            1: out = {keys[16], keys[17], keys[18], keys[19], keys[20], keys[21], keys[22], keys[23], keys[24], keys[25], keys[26], keys[27], keys[28], keys[29], keys[30], keys[31]};
            2: out = {keys[32], keys[33], keys[34], keys[35], keys[36], keys[37], keys[38], keys[39], keys[40], keys[41], keys[42], keys[43], keys[44], keys[45], keys[46], keys[47]};
            3: out = {keys[48], keys[49], keys[50], keys[51], keys[52], keys[53], keys[54], keys[55], keys[56], keys[57], keys[58], keys[59], keys[60], keys[61], keys[62], keys[63]};
            4: out = {keys[64], keys[65], keys[66], keys[67], keys[68], keys[69], keys[70], keys[71], keys[72], keys[73], keys[74], keys[75], keys[76], keys[77], keys[78], keys[79]};
            5: out = {keys[80], keys[81], keys[82], keys[83], keys[84], keys[85], keys[86], keys[87], keys[88], keys[89], keys[90], keys[91], keys[92], keys[93], keys[94], keys[95]};
            6: out = {keys[96], keys[97], keys[98], keys[99], keys[100], keys[101], keys[102], keys[103], keys[104], keys[105], keys[106], keys[107], keys[108], keys[109], keys[110], keys[111]};
            7: out = {keys[112], keys[113], keys[114], keys[115], keys[116], keys[117], keys[118], keys[119], keys[120], keys[121], keys[122], keys[123], keys[124], keys[125], keys[126], keys[127]};
            8: out = {keys[128], keys[129], keys[130], keys[131], keys[132], keys[133], keys[134], keys[135], keys[136], keys[137], keys[138], keys[139], keys[140], keys[141], keys[142], keys[143]};
            9: out = {keys[144], keys[145], keys[146], keys[147], keys[148], keys[149], keys[150], keys[151], keys[152], keys[153], keys[154], keys[155], keys[156], keys[157], keys[158], keys[159]};
            10: out = {keys[160], keys[161], keys[162], keys[163], keys[164], keys[165], keys[166], keys[167], keys[168], keys[169], keys[170], keys[171], keys[172], keys[173], keys[174], keys[175]};
        endcase
    end
    
endmodule
