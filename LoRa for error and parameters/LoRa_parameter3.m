
BW=[125000 250000 500000];
SF=7;
CR=[0 1 2 3 4];
Data_ratee=[];
ii=1;
for i=1:5
    for j=1:3
   Data_rate= LoRaDataRate(BW(j),7,CR(i));
   Data_ratee=[Data_ratee Data_rate]; 
    
    
    end
    
    Data_ratee1(ii,:)=Data_ratee;
    ii=ii+1;
    Data_ratee=[];
end
XX={'0','1','2','3','4'};
h=bar(Data_ratee1);
set(gca,'xticklabel',XX);
set(h, {'DisplayName'}, {'Bandwidth=125 kHz','Bandwidth=250kHz','Bandwidth=500kHz'}');
xlabel('CR');
ylabel('Data Rate');
legend;
grid on;

clear;

ii=1;
Data_ratee=[];
SF=[7 8 9 10 11 12];
BW=[125000 250000 500000];
for i=1:6
    for j=1:3
   Data_rate= LoRaDataRate(BW(j),SF(i),1);
   Data_ratee=[Data_ratee Data_rate]; 
    
    
    end
    
    Data_ratee1(ii,:)=Data_ratee;
    ii=ii+1;
    Data_ratee=[];
end
figure
XX={'7','8','9','10','11','12'};
h=bar(Data_ratee1);
set(gca,'xticklabel',XX);
set(h, {'DisplayName'}, {'Bandwidth=125 kHz','Bandwidth=250kHz','Bandwidth=500kHz'}');
xlabel('Spreading Factor (SF)');
ylabel('Data Rate');
legend;
grid on;