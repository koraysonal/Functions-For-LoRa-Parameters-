function [S]=Receiver_sensivity(SF,BW,NF)
    S=-174 +10*log10(BW) + NF + ((SF==7)*-7.5+(SF==8)*-10+(SF==9)*-12.5+(SF==10)*-15+(SF==11)*-17.5+(SF==12)*-20);


end