clear
clc
close
i=1;
for SF=7:12%BW=125000:125000:500000
[D,RSSI]=max_distance(SF,125000,10,0,868,10);
dd(i)=D;
RSSII(i)=RSSI;
i=i+1;
end


% figure
% plot(125000:125000:500000,dd);
% xlabel('BW ');
% ylabel('Distance in km');
% figure
% plot(125000:125000:500000,RSSII);
% xlabel('BW ');
% ylabel('Received power accteable in Dbm ');


figure
plot(7:12,dd,'rd--');
xlabel('SF ');
ylabel('Distance in km');
title('Spreading Factor and Distance')
grid on;
figure
plot(7:12,RSSII,'bd--');
xlabel('SF ');
ylabel('Received power in Dbm ');
grid on;
title('Spreading Factor and Accetable Receive Power')