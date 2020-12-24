%% L1 Icache Associativity

%401.bzip2 benchmark
peak4 = 2.28119 + 0.539842;
peak8 = 2.59246 + 0.539842;
peak16 = 3.18298 + 0.539842;

%429.mcf benchmark 
m4 = 2.28119 + 0.539842;
m8 = 2.59246 + 0.539842;
m16 = 3.18298 + 0.539842;

%456.hmmer benchmark
hm4 = 2.28119 + 0.539842;
hm8 = 2.59246 + 0.539842;
hm16 = 3.18298 + 0.539842;

%458.sjeng
j4 = 2.28119 + 0.539842;
j8 = 2.59246 + 0.539842;
j16 = 3.18298 + 0.539842;

%470.lbm benchmark
l4 = 1.95501 + 0.539842;
l8 = 2.54945 + 0.539842;
l16 = 2.80378 + 0.539842;

tot4 = (peak4 + m4 + hm4 + j4 + l4)/5;
tot8 = (peak8 + m8 + hm8 + j8 + l8)/5;
tot16 = (peak16 + m16 + hm16 + j16 + l16)/5;
total = [tot4, tot8, tot16];
assoc = [4 8 16];
%% PLOTS 
plot(assoc, total, 'col','#D95319','Linewidth', 2);
title('L1 Icache Associativity - Peak Power')
xlabel('Associativity')
ylabel('Peak Power(W)')