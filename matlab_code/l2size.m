%% 401.bzip2 benchmark

%icache size 
%icache assoc
%dcache size

%dcache assoc
pds512 =1.098 +0.00726281  +0.278326  +0.00148306  +0.000201415  +0.00768361;
ds512 = 0.088014;
peak512 = 1.95501 + 0.368854; 
pds2 = 1.098+ 0.00726281 + 0.297036 +0.00910636  + 0.00110378 +0.0193203; 
ds2 = 0.083847;
peak2=1.95501+0.660042;

edpb512 = pds512 * ds512;
edpb2 = pds2 * ds2;

%l2 size

%l2 assoc

%cacheline

%% 429.mcf benchmark
mf512 =1.098 + 0.00726281 +0.334708  +0.00148306  + 0.000201415 +0.000879211; 
md512=0.055885;
mf512peak=1.95501 +0.368854; 
mf2= 1.098+ 0.00726281 + 0.144592 +0.00910636  + 0.00110378 +0.0148272 ; 
mf2peak=1.95501+0.660042;
md2 =0.055471;


edpm512 = mf512 * md512 ;
edpm2 = mf2 * md2 ;


%% 456.hmmer benchmark
hm512 = 1.098 +0.00726281+0.359916 +0.00148306  +0.000201415  +0.00137947;
hm512peak = 1.95501 + 0.368854;
hd512 =0.059410;
hm2 = 1.098 +0.00726281  +0.359916  +0.00910636   +0.00110378  + 0.00307976;
hm2peak = 1.95501 + 0.660042;
hd2= 0.059410; 


edph512 = hm512 * hd512;
edph2 =hm2 * hd2;


%% 458.sjeng
jn512 = 1.098+ 0.00726281  + 0.0933262 +0.00148306  +0.000201415  +0.00985333;
jpeak512 =1.95501 + 0.368854;
jd512 = 0.514083;
jn2 = 1.098+ 0.00726281  +0.0934289  +0.00910636  +0.00110378  +0.0178778;
jpeak2 =1.95501 +  0.660042;
jd2=0.513819;


edpj512 = jn512 * jd512;
edpj2 = jn2 * jd2;


%% 470.lbm benchmark
l512= 1.098+ 0.00726281 +0.144581   +0.00148306  +0.000201415   + 0.00817992; 
l512peak = 1.95501 + 0.368854;
ld512 = 0.174945;
l2 = 1.098 +0.00726281   +0.144592   +0.00910636   + 0.00110378 +0.0148272 ;
l2peak=1.95501 + 0.660042;
ld2 = 0.174779;


edpl512 = l512 * ld512;
edpl2= l2 * ld2;

%% 
edp512 = (edpb512 + edpm512 + edph512 + edpj512 + edpl512)/5 ;
edp2 = (edpb2 + edpm2 + edph2 + edpj2 + edpl2)/5 ;

size = [512 4096];

totPeak512 = (peak512 + mf512peak + hm512peak +jpeak512 + l512peak)/5;
totPeak2 = (peak2 + mf2peak + hm2peak+ jpeak2 + l2peak)/5;
total = [totPeak512, totPeak2];
%% PLOTS 
plot(size, total, 'col','#D95319','Linewidth', 2);
title('L2 Size - Peak Power')
xlabel('L2 size(KB)')
ylabel('Peak Power(W)')