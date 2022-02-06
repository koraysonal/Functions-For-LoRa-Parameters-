
clear;
 clc;
BERRr=[];
BERR_S=[];
PERR_S=[];
PERRr=[];
Data_ratee=[];
TempBERR_S=[];
TempPERR_S=[];
TempBERRr=[];
TempPERRr=[];
SFF=[];
BWW=[];
CRR=[];
bw=[125000 250000 500000];
   
     for CR=1:3:4
         for j=1:3
              BW=bw(j);
            for SF=7:12
                if(SF==7)
                SNR=-7.5;
                end
                if(SF==8)
                SNR=-10;
                end
                if(SF==9)
                SNR=-12.5;
                end
                if(SF==10)
                SNR=-15;
                end
                if(SF==11)
                SNR=-17.5;
                end
                if(SF==12)
                SNR=-20;
                end
                Data_rate= LoRaDataRate(BW,SF,CR);
                    for x=1:200
                    [BER_S,PER_S]=  LoraErrorr(SF,BW,SNR,CR,Data_rate);
                    BERR_S=[BERR_S BER_S];
                    PERR_S=[PERR_S PER_S];
                    %BERRr=[BERRr BER];
                    %PERRr=[PERRr PER];
                    end
                    Data_ratee=[Data_ratee Data_rate];
                    BWW=[BWW BW];
                    SFF=[SFF SF];
           %         CRR=[CRR CR];
                    BERR_mean=mean(BERR_S);
                    PERR_mean=mean(PERR_S);
                   
   
                    TempBERR_S=[TempBERR_S BERR_mean];
                    TempPERR_S=[TempPERR_S PERR_mean];
              %      TempBERRr=[TempBERRr BERRr];
              %      TempPERRr=[TempPERRr PERRr];
           
            BERR_S=[];
            PERR_S=[];
         %   BERRr=[];
          %  PERRr=[];
            end
         
         
         
         end
   
     
   
    figure
    stem3(SFF,BWW,TempBERR_S);
    xlabel('SF');
    ylabel('BW');
    zlabel('BER');
     title (sprintf('Simulation Bit Error Rate ,Coding Rate is %d ',CR));
     grid on;
    
     figure
    stem3(SFF,BWW,TempPERR_S);
    xlabel('SF');
    ylabel('BW');
    zlabel('PER');
     title (sprintf('Simulation Packet Error Rate,Coding Rate is %d',CR));
     grid on;
     
      figure
    stem3(SFF,BWW,Data_ratee);
    xlabel('SF');
    ylabel('BW');
    zlabel('Data_rate');
     title (sprintf('Data Rate and Coding Rate is %d ',CR));
     grid on;
     
     figure
     stem(TempPERR_S,Data_ratee,'rd');
     xlabel('Packet Error Rate');
    ylabel('Data Rate');
     title (sprintf('Data Rate ,Packet Error Rate and Coding Rate is %d ',CR));
     grid on;
     
     figure
     stem(TempBERR_S,Data_ratee,'bd');
     xlabel('Bit Error Rate');
    ylabel('Data Rate');
     title (sprintf('Data Rate ,Bit Error Rate and Coding Rate is %d ',CR));
     grid on;
    
%      for xx=1:18
%          TempBERR_S(i)
    
     
     
     
     
      TempBERR_S=[];
   TempPERR_S=[];
   SFF=[];
BWW=[];
Data_ratee=[];

    end






