clear ;
close all;
clc

BW=125000;CR=1;
BERR_S=[];
PERR_S=[];
TempBERR_S=[];
TempPERR_S=[];
TempPERR_S12=[];
TempPERR_S11=[];
TempPERR_S10=[];
TempPERR_S9=[];
TempPERR_S8=[];
TempPERR_S7=[];
TempBERR_S12=[];
TempBERR_S11=[];
TempBERR_S10=[];
TempBERR_S9=[];
TempBERR_S8=[];
TempBERR_S7=[];
x=1;

for SF=7:12
    
    if(SF==7)
        SNR=-17:-7;
        Data_rate7=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate7);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S7=[TempBERR_S7 BERR_mean];
            TempPERR_S7=[TempPERR_S7 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        figure(1)
        
        semilogy(-17:-7,TempPERR_S7,'rd-');
        xlabel('SNR');
        ylabel('Packet Error Rate');
        hold on;
        grid on;
       
%        
%         semilogy(-17:-7,TempBERR_S7,'rd-');
%         xlabel('SNR');
%         ylabel('Bit Error Rate');
%         hold on;
%         grid on;
        
        %  end
        BERR_S=[];
        PERR_S=[];
        TempBERR_S=[];
        TempPERR_S=[];
        
    elseif(SF==8)
        SNR=-20:-10;
        Data_rate8=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate8);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S8=[TempBERR_S8 BERR_mean];
            TempPERR_S8=[TempPERR_S8 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        
        semilogy(-20:-10,TempPERR_S8,'bs-');
        hold on;
        
%        
%         semilogy(-20:-10,TempBERR_S8,'bs-');
%         hold on;
%         
      
        
        BERR_S=[];
        PERR_S=[];
        TempBERR_S=[];
        TempPERR_S=[];
        
        
    elseif(SF==9)
        SNR=-22:-12;
        Data_rate9=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate9);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S9=[TempBERR_S9 BERR_mean];
            TempPERR_S9=[TempPERR_S9 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        
        
        semilogy(-22:-12,TempPERR_S9,'g*-');
        hold on;
        
        
%       semilogy(-22:-12,TempBERR_S9,'g*-');
%         hold on;
        
        
        %   end
        
        BERR_S=[];
        PERR_S=[];
        TempBERR_S=[];
        TempPERR_S=[];
        
        
    elseif(SF==10)
        SNR=-25:-15;
        Data_rate10=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate10);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S10=[TempBERR_S10 BERR_mean];
            TempPERR_S10=[TempPERR_S10 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        
        semilogy(-25:-15,TempPERR_S10,'k+-');
        hold on;
        
        
%          plot(-25:-15,TempBERR_S10,'k+-');
%         hold on;
        
        %    end
        BERR_S=[];
        PERR_S=[];
        TempBERR_S=[];
        TempPERR_S=[];
        
        
    elseif(SF==11)
        SNR=-27:-17;
        Data_rate11=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate11);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S11=[TempBERR_S11 BERR_mean];
            TempPERR_S11=[TempPERR_S11 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        
        semilogy(-27:-17,TempPERR_S11,'mv-');
         hold on;
        
       
%         semilogy(-27:-17,TempBERR_S11,'mv-');
%         hold on;
%         
        %   end
        
        BERR_S=[];
        PERR_S=[];
        TempBERR_S=[];
        TempPERR_S=[]  ;
        
    elseif(SF==12)
        SNR=-30:-20;
        Data_rate12=LoRaDataRate(BW,SF,CR);
        for j=1:length(SNR)
            for i=1:x
                [~,~,BER_S,PER_S]= LoraErrorr(SF,BW,SNR(j),CR,Data_rate12);
                BERR_S=[BERR_S BER_S];
                PERR_S=[PERR_S PER_S];
            end
            BERR_mean=mean(BERR_S);
            PERR_mean=mean(PERR_S);
            TempBERR_S12=[TempBERR_S12 BERR_mean];
            TempPERR_S12=[TempPERR_S12 PERR_mean];
            BERR_S=[];
            PERR_S=[];
        end
        
        
        semilogy(-30:-20,TempPERR_S12,'p-','color',[0.8500 0.3250 0.0980]);
        hold on;
        lgd=sprintf('Data rate :%.1d Data rate :%.1d Data rate :%.1d Data rate :%.1d Data rate :%.1d,Data rate :%.1d',Data_rate7,Data_rate8,Data_rate9,Data_rate10,Data_rate11,Data_rate12);
        legend(lgd);
        legend1 = sprintf('Data rate :%.1d SF=7', Data_rate7);
        legend2 = sprintf('Data rate :%.1d SF=8', Data_rate8);
        legend3 = sprintf('Data rate :%.1d SF=9', Data_rate9);
        legend4 = sprintf('Data rate :%.1d SF=10', Data_rate10);
        legend5 = sprintf('Data rate :%.1d SF=11', Data_rate11);
        legend6 = sprintf('Data rate :%.1d SF=12', Data_rate12);
        legend(legend1, legend2, legend3,legend4,legend5,legend6,'Location','Southwest');
      
%        semilogy(-30:-20,TempBERR_S12,'p-','color',[0.8500 0.3250 0.0980]);
%         hold on;
        
%          legend('SF=7','SF=8','SF=9','SF=10','SF=11','SF=12','Location','SouthWest');
        
        
    end
end