function [Ts,TimeonAir,Data_Rate,packet] = Lora_Mod_Parameter_Calculation(SF,BW,Number_Preamble,CR,messeage_length)
     packet=8 + max([ceil((8*(messeage_length + 5) - 4.*SF + 28 + 16.*1 - 20.*0)/(4.*(SF - 2.*0))).*(CR + 4) 0]) ;
    Ts=(2^SF)/BW;
    Rs=1/Ts;
    TimeonAir=(Number_Preamble+4.25+packet)*Ts;
    Data_Rate=SF*Rs*(4/(4+CR));
    


end