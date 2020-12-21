%%%%%% LAB 3 PLOTS %%%%%

% We want to calculate the Energy-Delay Product for a series of benchmarks. This calculation
% is made after we change specific system components such as the cacheline size or the association of 
% the caches.We insert the energy and delay values for each case as inputs and then use 
% the formula to calculate the product. For every system change we plot its total effect to the 
% average EDP (sum of EDPs of all benchmarks).

%% 401.bzip2 benchmark

%icache size 
%icache assoc
%dcache size

%dcache assoc
pds4 = 0.825522 + 0.0046475 +0.292279 + 0.00472789 +0.000571604+ 0.0131777;
ds4 = 0.083410;
peak4 = 0.539842 + 1.96246; 
pds8 = 0.846024+0.00480872+0.374139+0.00472789+0.000571604+0.0124269;
ds8=0.083103;
peak8 = 2.18571+0.539842;
pds16 = 0.911145 +0.0052426  + 0.59421+0.00472789 +0.000571604 +0.0120103;
ds16=0.082921;
peak16 = 2.68601 + 0.539842;
edpb4 = pds4 * ds4;
edpb8 = pds8 * ds8;
edpb16= pds16 * ds16;
%l2 sizeb4

%l2 assoc

%cacheline

%% 429.mcf benchmark
mf4 =0.825522 +0.0046475  +0.343617  +0.00472789  +0.000571604  +0.00137719; 
md4= 0.055471;
mf4peak=1.96246+0.539842;
mf8=0.846024 +0.00480872  +0.455848  +0.00472789  +0.000571604 + 0.00136632;
mf8peak=2.18571 + 0.539842;
md8 = 0.055470;
mf16=0.911145 +0.0052426  +0.682131  +0.00472789  +0.000571604  +0.00135737;
mf16peak=2.68601 + 0.539842;
md16 = 0.055465;

edpm4 = mf4 * md4 ;
edpm8 = mf8 * md8 ;
edpm16 = mf16 * md16 ;

%% 456.hmmer benchmark
hm4 = 0.825522 +0.0046475   +0.355506   +0.00472789   +0.000571604   + 0.00227296;
hm4peak = 1.96246 + 0.539842;
hd4 = 0.059354;
hm8 = 0.846024 +0.00480872  +0.437075  +0.00472789  +0.000571604  + 0.00235055;
hm8peak = 2.18571 +  0.539842;
hd8= 0.059351; 
hm16= 0.911145 +0.0052426 +0.690861   +0.00472789  +0.000571604  +0.00235383;
hm16peak= 0.539842 + 2.68601;
hd16 = 0.059349 ;

edph4 = hm4 * hd4;
edph8 =hm8 * hd8;
edph16 = hm16 * hd16;

%% 458.sjeng
jn4 = 0.825522 +0.0046475 +0.102111  +0.00472789  + 0.000571604 +0.0145882;
jpeak4 = 1.96246 + 0.539842;
jd4 = 0.513827;
jn8 = 0.846024 +0.00480872  +0.162979  +0.00472789  +0.000571604  +0.0145876;
jpeak8 = 2.18571 + 0.539842;
jd8= 0.513848;
jn16 = 0.911145 +0.0052426   +0.235818  +0.00472789  +0.000571604  +0.0145887;
jpeak16= 2.68601 + 0.539842;
jd16 = 0.513812;

edpj4 = jn4 * jd4;
edpj8 = jn8 * jd8;
edpj16 = jn16 * jd16;

%% 470.lbm benchmark
l4=0.825522 +0.0046475  +0.145916  +0.00472789  +0.000571604  +0.0121166;
l4peak = 1.96246+0.539842;
ld4 = 0.174779;
l8 = 0.846024 +0.00480872 +0.191032  +0.00472789  +0.000571604  + 0.0121166;
l8peak=2.18571 + 0.539842;
ld8 = 0.174779;
l16=0.911145  +0.0052426  +0.295215  +0.00472789  +0.000571604  +0.0121166;
l16peak=2.68601  + 0.539842;
ld16 =0.174779;

edpl4 = l4 * ld4;
edpl8= l8 * ld8;
edpl16 = l16 * ld16;
%% 
edp4 = (edpb4 + edpm4 + edph4 + edpj4 + edpl4)/5 ;
edp8 = (edpb8 + edpm8 + edph8 + edpj8 + edpl8)/5 ;
edp16 = (edpb16 + edpm16 + edph16 + edpj16 + edpl16)/5 ;
totalEDP = [edp4 edp8 edp16];
assoc = [4, 8, 16];


totPeak4 = (peak4 + mf4peak + hm4peak +jpeak4 + l4peak)/5;
totPeak8 = (peak8 + mf8peak + hm8peak+ jpeak8 + l8peak)/5;
totPeak16 = (peak16 + mf16peak + hm16peak+ jpeak16 + l16peak)/5;
total = [totPeak4, totPeak8, totPeak16];
%% PLOTS 
plot(assoc, total, 'col','#7E2F8E','Linewidth', 2);
title('L1 Dcache associativity - Peak Power')
xlabel('Associativity')
ylabel('Peak Power(W)')