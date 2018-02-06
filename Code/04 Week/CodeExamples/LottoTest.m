% File:   LottoTest.m
%
% Test script for the lotto numbers...

clear;
Max_QPs  = 10000;
Num_Nos = 6;
Lower      = 1;
Upper     = 36;

Test = [7 16 21 27 30 31];
%Test = [1 3 7 10];


m = zeros(Max_QPs,Num_Nos);

for i = 1:Max_QPs
    m(i,:) = create_unique_lotto(Lower, Upper , Num_Nos);
end


for i = 1:Max_QPs    
    if lotto_equals(m(i,:), Test)
        disp(['Match found at row ' num2str(i)]);
    end
end


