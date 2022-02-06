clear 
clc 
close
i=1;
z=1;
Payload=[5 20 35 50 65];
TimeonAirrr=[];
for x=1:5

for SF=7:12
   
 [Ts,TimeonAir,Data_Rate] = Lora_Mod_Parameter_Calculation(SF,125000,8,1,Payload(x)); %Cr ={1,2,3,4} Number_preamble ve Number_paylaod byte cinsinden
   Tss(i)=Ts;
   TimeonAirr(i)=TimeonAir;
   Data_Ratee(i)=Data_Rate;
   i=i+1;
   
end
TimeonAirrr(z,:)=TimeonAirr;
z=z+1;
TimeonAirr=[];
i=1;
end

figure
 plot((7:12),Tss);
 title('Symbol duration ');
 ylabel('Ts in sec');
 xlabel('SF');
 grid on;
figure
 plot((7:12),TimeonAirr*1000);
 title('Time on Air');
 ylabel('TİOA in milisec');
 xlabel('SF');
 grid on;
figure
 plot((7:12),Data_Ratee);
 title('Data rate ');
 ylabel('Data Rate ');
 xlabel('SF');
 grid on;
 
 for x=1:5
    
    plot(7:12,TimeonAirrr(x,:),'d-');
    hold on;
end
 xlabel('SF');
ylabel('Time on Air in second');
legend('Payload byte:5','Payload byte:20','Payload byte:35','Payload byte:50','Payload byte:65','Location','Northwest');
grid on;
 %%
 clear
i=1;
x=1;
Payload=[15 30 45 ];
for CR=0:4
    for j=1:3
        
        [Ts,TimeonAir,Data_Rate,packet] = Lora_Mod_Parameter_Calculation(7,125000,8,CR,Payload(j)); %Cr ={1,2,3,4} Number_preamble ve Number_paylaod byte cinsinden
       Tss(i)=Ts;
        packett(i)=packet;
        TimeonAirr(i)=TimeonAir;
        Data_Ratee(i)=Data_Rate;
        
        i=i+1;
    end
    
    TimeonAirrr(x,:)=TimeonAirr*1000;
    Data_Rateee(x,:)=Data_Ratee;
    

   i=1;
   x=x+1;
    Data_Ratee=[];
    TimeonAirr=[];
   Tss=[];
end

% for x=1:5
%     
%     plot(0:4,TimeonAirrr(x,:),'d-');
%     hold on;
% end
% xlabel('CR');
% ylabel('Time on Air in milisecond');
% legend('Payload byte:5','Payload byte:20','Payload byte:35','Payload byte:50','Payload byte:65','Location','Northwest');
% grid on;

% figure
%  plot((0:4),Tss);
%  title('Symbol duration ');
%  ylabel('Ts in sec');
%  xlabel('CR');
%  grid on;
% figure
%  plot((0:4),TimeonAirr*1000);
%  title('Time on Air');
%  ylabel('TİOA in milisec');
%  xlabel('CR');
%  grid on;
% figure
%  plot((0:4),Data_Ratee);
%  title('Data rate ');
%  ylabel('Data Rate ');
%  xlabel('CR');
%  grid on;
%  figure
XX={'0','1','2','3','4'};
h=bar(TimeonAirrr);
set(h, {'DisplayName'}, {'Payload=15 Byte','Payload=30 Byte','Payload=45 Byte'}');
xlabel('Coding Rate');
ylabel('Time On Air (msec)');
set(gca,'xticklabel',XX);
legend('Location','Northwest');
grid on;
 
 %%
 clear
i=1;
x=1;
Payload=[5 20 35 50 65];
BW=[125000 250000 500000];
for j=1:5
    for xx=1:3
        
        [Ts,TimeonAir,Data_Rate,packet] = Lora_Mod_Parameter_Calculation(7,BW(xx),8,1,Payload(j)); %Cr ={1,2,3,4} Number_preamble ve Number_paylaod byte cinsinden
       Tss(i)=Ts;
        packett(i)=packet;
        TimeonAirr(i)=TimeonAir;
        Data_Ratee(i)=Data_Rate;
        
        i=i+1;
    end
    
    TimeonAirrr(x,:)=TimeonAirr;
    Data_Rateee(x,:)=Data_Ratee;
    

   i=1;
   x=x+1;
    Data_Ratee=[];
    TimeonAirr=[];
   Tss=[];
end

for x=1:5
    
    plot([125000 250000 500000],TimeonAirrr(x,:)*1000,'d-');
    hold on;
end
xlabel('BW');
ylabel('Time on Air in milisecond');
legend('Payload byte:5','Payload byte:20','Payload byte:35','Payload byte:50','Payload byte:65','Location','Northeast');
grid on;
%%
 clear
i=1;
x=1;
SF=7:12;
BW=[125000 250000 500000];
for j=1:6
    for xx=1:3
        
        [Ts,TimeonAir,Data_Rate,packet] = Lora_Mod_Parameter_Calculation(SF(j),BW(xx),8,1,20); %Cr ={1,2,3,4} Number_preamble ve Number_paylaod byte cinsinden
       Tss(i)=Ts;
        packett(i)=packet;
        TimeonAirr(i)=TimeonAir;
        Data_Ratee(i)=Data_Rate;
        
        i=i+1;
    end
    
    TimeonAirrr(x,:)=TimeonAirr;
    Data_Rateee(x,:)=Data_Ratee;
    

   i=1;
   x=x+1;
    Data_Ratee=[];
    TimeonAirr=[];
   Tss=[];
end
figure
XX={'7','8','9','10','11','12'};
h=bar(TimeonAirrr);
set(h, {'DisplayName'}, {'Bandwidth=125 kHz','Bandwidth=250kHz','Bandwidth=500kHz'}');
xlabel('Spreading Factor (SF)');
ylabel('Time On Air');
legend('Location','Northwest');
set(gca,'xticklabel',XX);
grid on;

