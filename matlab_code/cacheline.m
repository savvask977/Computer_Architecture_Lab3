%% Cache Line Size

%401.bzip2 benchmark
peak32 = 0.917255 + 0.245143;
peak128 = 5.36286 + 2.39516;

%429.mcf benchmark 
m32 = 0.917255 + 0.245143;
m128 = 5.36286 + 2.39516;

%456.hmmer benchmark
hm32 = 0.917255 + 0.245143;
hm128 = 5.36286 + 2.39516;

%458.sjeng
j32 = 0.917255 + 0.245143;
j128 = 5.36286 + 2.39516;

%470.lbm benchmark
l32 = 0.917255 + 0.245143;
l128 = 5.36286 + 2.39516;


tot32 = (peak32 + m32 + hm32 + j32 + l32)/5;
tot128 = (peak128 + m128 + hm128 + j128 + l128)/5;
total = [tot32, tot128];
size = [32 128];
%% PLOTS 
plot(size, total, 'col','#EDB120','Linewidth', 2);
title('Cacheline Size - Peak Power')
xlabel('Cacheline Size (KB)')
ylabel('Peak Power(W)')