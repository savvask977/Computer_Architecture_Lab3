%% L1 Icache size

%401.bzip2 benchmark
peak32 = 1.95501 + 0.539842;
peak64 = 2.54945 + 0.539842;
peak128 = 2.80378 + 0.539842;

%429.mcf benchmark  
m32 = 1.95501 + 0.539842;
m64 = 2.54945 + 0.539842;
m128 = 2.80378 + 0.539842;

%456.hmmer benchmark
hm32 = 1.95501 + 0.539842;
hm64 = 2.54945 + 0.539842;
hm128 = 2.80378 + 0.539842;

%458.sjeng
j32 = 1.95501 + 0.539842;
j64 = 2.54945 + 0.539842;
j128 = 2.80378 + 0.539842;

%470.lbm benchmark
l32 = 1.95501 + 0.539842;
l64 = 2.54945 + 0.539842;
l128 = 2.80378 + 0.539842;

tot32 = (peak32 + m32 + hm32 + j32 + l32)/5;
tot64 = (peak64 + m64 + hm64 + j64 + l64)/5;
tot128 = (peak128 + m128 + hm128 + j128 + l128)/5;
total = [tot32, tot64, tot128];
size = [32 64 128];
%% PLOTS 
plot(size, total, 'col','#EDB120','Linewidth', 2);
title('L1 ICache Size - Peak Power')
xlabel('ICache Size (KB)')
ylabel('Peak Power(W)')