%% L1 Dcache size

%401.bzip2 benchmark
peak32 = 5.36286 + 2.39516;
peak64 = 5.36286 + 2.39516;
peak128 = 5.36286 +2.39516;

%429.mcf benchmark 
m32 = 1.47789 + 0.539842;
m64 = 1.95501 + 0.539842;
m128 = 2.16638 + 0.539842;

%456.hmmer benchmark
hm32 = 1.47789 + 0.539842;
hm64 = 1.95501 + 0.539842;
hm128 = 2.16638 + 0.539842;

%458.sjeng
j32 = 1.47789 + 0.539842;
j64 = 1.95501 + 0.539842;
j128 = 2.16638 + 0.539842;

%470.lbm benchmark
l32 = 1.47789 + 0.539842;
l64 = 1.95501 + 0.539842;
l128 = 2.16638 + 0.539842;


tot32 = (peak32 + m32 + hm32 + j32 + l32)/5;
tot64 = (peak64 + m64 + hm64 + j64 + l64)/5;
tot128 = (peak128 + m128 + hm128 + j128 + l128)/5;
total = [tot32, tot64, tot128];
size = [32 64 128];
%% PLOTS 
plot(size, total, 'col','#0072BD','Linewidth', 2);
title('L1 DCache Size - Peak Power')
xlabel('DCache Size (KB)')
ylabel('Peak Power(W)')