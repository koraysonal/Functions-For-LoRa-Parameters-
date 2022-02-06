function [Data_rate]=LoRaDataRate(BW,SF,CR)
Rs=BW/(2^SF);
Data_rate=SF*Rs*(4/(4+CR));

end