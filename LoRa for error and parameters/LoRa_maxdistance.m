function [D,RSSI]=max_distance(SF,BW,tx_power,cable_length,freq,antenna_gain)
switch SF
    case 7
        SNR_limit=-7.5;
    case 8
        SNR_limit=-10;
    case 9
        SNR_limit=-12.5;
    case 10
        SNR_limit=-15;
    case 11
        SNR_limit=-17.5;
    case 12
        SNR_limit=-20;
end


cable_loss=cable_length*18.2/30.48;
    
EIRP=tx_power-cable_loss+antenna_gain;
Sensivity=-174 +10*log10(BW)+6+SNR_limit;
d=0.001; %(km)
D=0;
a=1.1*log10(freq)-0.7 -(1.56*log10(freq)-0.8);
C=-4.78*(log10(freq)^2)+18.33*log10(freq)-40.98;
B=44.9-6.55*log10(2);
A=69.55+26.16*log10(freq)-13.82*log10(2)-a*1;

RSSI=EIRP;
while( RSSI>=Sensivity)
     path_loss=A+B*log10(d)+C;
    RSSI=EIRP-path_loss+antenna_gain-cable_loss;
    d=d+0.001;
    x=d;

end  
D=x;
end