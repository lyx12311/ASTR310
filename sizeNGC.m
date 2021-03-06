% calculate the size (do analysis? --> calculate the size change for different parameters and plot to see the cutoff point for min and max)
%% r filters standard deviation 2,4
[minr10,maxr10]=sizeNebula(NGC7023rF,783,860,400,400,600,600,5,2,4);
[minr20,maxr20]=sizeNebula(NGC7023rF,783,860,450,450,600,600,5,2,4);
[minr30,maxr30]=sizeNebula(NGC7023rF,783,860,500,500,600,600,5,2,4);


[minr1,maxr1]=sizeNebula(NGC7023rF,783,860,400,400,600,600,10,2,4);
[minr2,maxr2]=sizeNebula(NGC7023rF,783,860,450,450,600,600,10,2,4);
[minr3,maxr3]=sizeNebula(NGC7023rF,783,860,500,500,600,600,10,2,4);
 
[minr12,maxr12]=sizeNebula(NGC7023rF,783,860,400,400,600,600,20,2,4);
[minr22,maxr22]=sizeNebula(NGC7023rF,783,860,450,450,600,600,20,2,4);
[minr32,maxr32]=sizeNebula(NGC7023rF,783,860,500,500,600,600,20,2,4);
 
[minr13,maxr13]=sizeNebula(NGC7023rF,783,860,400,400,600,600,30,2,4);
[minr23,maxr23]=sizeNebula(NGC7023rF,783,860,450,450,600,600,30,2,4);
[minr33,maxr33]=sizeNebula(NGC7023rF,783,860,500,500,600,600,30,2,4);
 
[minr14,maxr14]=sizeNebula(NGC7023rF,783,860,400,400,600,600,40,2,4);
[minr24,maxr24]=sizeNebula(NGC7023rF,783,860,450,450,600,600,40,2,4);
[minr34,maxr34]=sizeNebula(NGC7023rF,783,860,500,500,600,600,40,2,4);
 
[minr15,maxr15]=sizeNebula(NGC7023rF,783,860,400,400,600,600,50,2,4);
[minr25,maxr25]=sizeNebula(NGC7023rF,783,860,450,450,600,600,50,2,4);
[minr35,maxr35]=sizeNebula(NGC7023rF,783,860,500,500,600,600,50,2,4);
%%%%%%%%%% standard deviation 2,3
[minr101,maxr101]=sizeNebula(NGC7023rF,783,860,400,400,600,600,5,2,3);
[minr201,maxr201]=sizeNebula(NGC7023rF,783,860,450,450,600,600,5,2,3);
[minr301,maxr301]=sizeNebula(NGC7023rF,783,860,500,500,600,600,5,2,3);
 
[minr11,maxr11]=sizeNebula(NGC7023rF,783,860,400,400,600,600,10,2,3);
[minr21,maxr21]=sizeNebula(NGC7023rF,783,860,450,450,600,600,10,2,3);
[minr31,maxr31]=sizeNebula(NGC7023rF,783,860,500,500,600,600,10,2,3);
 
[minr121,maxr121]=sizeNebula(NGC7023rF,783,860,400,400,600,600,20,2,3);
[minr221,maxr221]=sizeNebula(NGC7023rF,783,860,450,450,600,600,20,2,3);
[minr321,maxr321]=sizeNebula(NGC7023rF,783,860,500,500,600,600,20,2,3);
 
[minr131,maxr131]=sizeNebula(NGC7023rF,783,860,400,400,600,600,30,2,3);
[minr231,maxr231]=sizeNebula(NGC7023rF,783,860,450,450,600,600,30,2,3);
[minr331,maxr331]=sizeNebula(NGC7023rF,783,860,500,500,600,600,30,2,3);
 
[minr141,maxr141]=sizeNebula(NGC7023rF,783,860,400,400,600,600,40,2,3);
[minr241,maxr241]=sizeNebula(NGC7023rF,783,860,450,450,600,600,40,2,3);
[minr341,maxr341]=sizeNebula(NGC7023rF,783,860,500,500,600,600,40,2,3);
 
[minr151,maxr151]=sizeNebula(NGC7023rF,783,860,400,400,600,600,50,2,3);
[minr251,maxr251]=sizeNebula(NGC7023rF,783,860,450,450,600,600,50,2,3);
[minr351,maxr351]=sizeNebula(NGC7023rF,783,860,500,500,600,600,50,2,3);
 
 
figure
minall=[minr10,minr1,minr12,minr13,minr14,minr15,minr20,minr2,minr22,minr23,minr24,minr25,minr30,minr3,minr32,minr33,minr34,minr35];
maxall=[maxr10,maxr1,maxr12,maxr13,maxr14,maxr15,maxr20,maxr2,maxr22,maxr23,maxr24,maxr25,maxr30,maxr3,maxr32,maxr33,maxr34,maxr35];
 
minall1=[minr101,minr11,minr121,minr131,minr141,minr151,minr201,minr21,minr221,minr231,minr241,minr251,minr301,minr31,minr321,minr331,minr341,minr351];
 
 
% if preset maximum subtracted to be 5
% minall=[minr10,minr20,minr30];
% maxall=[maxr10,maxr20,maxr30];
% minall1=[minr101,minr201,minr301];
 
 
n=1:length(minall);
 
%%% fits for stdev 2-4
f1 = fit(n(1:6)',minall(1:6)','exp1');
f2 = fit(n(7:12)',minall(7:12)','exp1');
f3 = fit(n(13:end)',minall(13:end)','exp1');
 
f12 = fit(n(1:6)',maxall(1:6)','exp1');
f22 = fit(n(7:12)',maxall(7:12)','exp1');
f32 = fit(n(13:end)',maxall(13:end)','exp1');
 
%%% fits for stdev 2-3
f11 = fit(n(1:6)',minall1(1:6)','exp1');
f21 = fit(n(7:12)',minall1(7:12)','exp1');
f31 = fit(n(13:end)',minall1(13:end)','exp1');
 
%%% plots for stdev 2-4
%%
figure
plot(f1,n(1:6)',minall(1:6)','ro')
hold on
plot(f12,n(1:6)',maxall(1:6)','ko')
plot(f2,n(7:12)',minall(7:12)','ro')
plot(f22,n(7:12)',maxall(7:12)','ko')
plot(f3,n(13:end)',minall(13:end)','ro')
plot(f32,n(13:end)',maxall(13:end)','ko')
 
% plot(n,minall,'ro');
% hold on
% plot(n,minall1,'bo');
% plot(n,maxall,'ko');
% 
% plot(n,minall,'r--');
% plot(n,minall1,'b--');
% plot(n,maxall,'k--');
 
%% plots for stdev 2-3
plot(f11,n(1:6)',minall1(1:6)','ro')
plot(f21,n(7:12)',minall1(7:12)','ro')
plot(f31,n(13:end)',minall1(13:end)','ro')
xlabel('test number')
ylabel('size [pixels (area)]')
legend('minimum size with 4 sigma','minimum size with 3 sigma','maximum size with 2 sigma')
 
%% g filters
[ming10,maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,5,2,4);
[ming20,maxg20]=sizeNebula(NGC7023gF,783,860,450,450,600,600,5,2,4);
[ming30,maxg30]=sizeNebula(NGC7023gF,783,860,500,500,600,600,5,2,4);
 
[ming1,maxg1]=sizeNebula(NGC7023gF,783,860,400,400,600,600,10,2,4);
[ming2,maxg2]=sizeNebula(NGC7023gF,783,860,450,450,600,600,10,2,4);
[ming3,maxg3]=sizeNebula(NGC7023gF,783,860,500,500,600,600,10,2,4);
 
[ming12,maxg12]=sizeNebula(NGC7023gF,783,860,400,400,600,600,20,2,4);
[ming22,maxg22]=sizeNebula(NGC7023gF,783,860,450,450,600,600,20,2,4);
[ming32,maxg32]=sizeNebula(NGC7023gF,783,860,500,500,600,600,20,2,4);
 
[ming13,maxg13]=sizeNebula(NGC7023gF,783,860,400,400,600,600,30,2,4);
[ming23,maxg23]=sizeNebula(NGC7023gF,783,860,450,450,600,600,30,2,4);
[ming33,maxg33]=sizeNebula(NGC7023gF,783,860,500,500,600,600,30,2,4);
 
[ming14,maxg14]=sizeNebula(NGC7023gF,783,860,400,400,600,600,40,2,4);
[ming24,maxg24]=sizeNebula(NGC7023gF,783,860,450,450,600,600,40,2,4);
[ming34,maxg34]=sizeNebula(NGC7023gF,783,860,500,500,600,600,40,2,4);
 
[ming15,maxg15]=sizeNebula(NGC7023gF,783,860,400,400,600,600,50,2,4);
[ming25,maxg25]=sizeNebula(NGC7023gF,783,860,450,450,600,600,50,2,4);
[ming35,maxg35]=sizeNebula(NGC7023gF,783,860,500,500,600,600,50,2,4);
 
%%%%%%%%%% standagd deviation 2,3
[ming101,maxg101]=sizeNebula(NGC7023gF,783,860,400,400,600,600,5,2,3);
[ming201,maxg201]=sizeNebula(NGC7023gF,783,860,450,450,600,600,5,2,3);
[ming301,maxg301]=sizeNebula(NGC7023gF,783,860,500,500,600,600,5,2,3);
 
[ming11,maxg11]=sizeNebula(NGC7023gF,783,860,400,400,600,600,10,2,3);
[ming21,maxg21]=sizeNebula(NGC7023gF,783,860,450,450,600,600,10,2,3);
[ming31,maxg31]=sizeNebula(NGC7023gF,783,860,500,500,600,600,10,2,3);
 
[ming121,maxg121]=sizeNebula(NGC7023gF,783,860,400,400,600,600,20,2,3);
[ming221,maxg221]=sizeNebula(NGC7023gF,783,860,450,450,600,600,20,2,3);
[ming321,maxg321]=sizeNebula(NGC7023gF,783,860,500,500,600,600,20,2,3);
 
[ming131,maxg131]=sizeNebula(NGC7023gF,783,860,400,400,600,600,30,2,3);
[ming231,maxg231]=sizeNebula(NGC7023gF,783,860,450,450,600,600,30,2,3);
[ming331,maxg331]=sizeNebula(NGC7023gF,783,860,500,500,600,600,30,2,3);
 
[ming141,maxg141]=sizeNebula(NGC7023gF,783,860,400,400,600,600,40,2,3);
[ming241,maxg241]=sizeNebula(NGC7023gF,783,860,450,450,600,600,40,2,3);
[ming341,maxg341]=sizeNebula(NGC7023gF,783,860,500,500,600,600,40,2,3);
 
[ming151,maxg151]=sizeNebula(NGC7023gF,783,860,400,400,600,600,50,2,3);
[ming251,maxg251]=sizeNebula(NGC7023gF,783,860,450,450,600,600,50,2,3);
[ming351,maxg351]=sizeNebula(NGC7023gF,783,860,500,500,600,600,50,2,3);
 
 
% figure
minallg=[ming10,ming1,ming12,ming13,ming14,ming15,ming20,ming2,ming22,ming23,ming24,ming25,ming30,ming3,ming32,ming33,ming34,ming35];
maxallg=[maxg10,maxg1,maxg12,maxg13,maxg14,maxg15,maxg20,maxg2,maxg22,maxg23,maxg24,maxg25,maxg30,maxg3,maxg32,maxg33,maxg34,maxg35];
 
minall1g=[ming101,ming11,ming121,ming131,ming141,ming151,ming201,ming21,ming221,ming231,ming241,ming251,ming301,ming31,ming321,ming331,ming341,ming351];
 
% if preset maximum subtracted to be 5
% minallg=[ming10,ming20,ming30];
% maxallg=[maxg10,maxg20,maxg30];
% minall1g=[ming101,ming201,ming301];
 
 
n=1:length(minall);
 
%%% fits for stdev 2-4
f1g = fit(n(1:6)',minallg(1:6)','exp1');
f2g = fit(n(7:12)',minallg(7:12)','exp1');
f3g = fit(n(13:end)',minallg(13:end)','exp1');
 
f12g = fit(n(1:6)',maxallg(1:6)','exp1');
f22g = fit(n(7:12)',maxallg(7:12)','exp1');
f32g = fit(n(13:end)',maxallg(13:end)','exp1');
 
%%% fits for stdev 2-3
f11g = fit(n(1:6)',minall1g(1:6)','exp1');
f21g = fit(n(7:12)',minall1g(7:12)','exp1');
f31g = fit(n(13:end)',minall1g(13:end)','exp1');
 
% 
% %% try changing standard deviation from 2.1-3.9
%[ming10(1),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.1,2,4);
%[ming10(2),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.3,2,4);
%[ming10(3),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.5,2,4);
%[ming10(4),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.7,2,4);
%[ming10(5),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.9,2,4);
%[ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.1,2,4);
%[ming10(7),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.3,2,4);
%[ming10(8),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.5,2,4);
%[ming10(9),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.7,2,4);
% [ming10(10),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.9,2,4);
% plot(1:10,ming10,'o')
% hold on
%%
 
%%% plots for stdev 2-4
%% 
figure
plot(f1g,n(1:6)',minallg(1:6)','ro')
hold on
plot(f12g,n(1:6)',maxallg(1:6)','ko')
plot(f2g,n(7:12)',minallg(7:12)','ro')
plot(f22g,n(7:12)',maxallg(7:12)','ko')
plot(f3g,n(13:end)',minallg(13:end)','ro')
plot(f32g,n(13:end)',maxallg(13:end)','ko')
 
%%% plots for stdev 2-3
plot(n,minallg,'ro');
hold on
plot(n,minall1g,'bo');
plot(n,maxallg,'ko');
 
plot(n,minallg,'r--');
plot(n,minall1g,'b--');
plot(n,maxallg,'k--');
plot(f11g,n(1:6)',minall1g(1:6)','ro')
plot(f21g,n(7:12)',minall1g(7:12)','ro')
plot(f31g,n(13:end)',minall1g(13:end)','ro')
xlabel('test number')
ylabel('size [pixels (area)]')
legend('minimum size with 4 sigma','minimum size with 3 sigma','maximum size with 2 sigma')
 
%% plot g and r together for size
figure
hold on
errorbar(13,(minall1(13)+maxall(13))/2,abs(minall1(13)-maxall(13))/2,'ro')
errorbar(13,(minall1g(13)+maxallg(13))/2,abs(minall1g(13)-maxallg(13))/2,'k*')
 
legend('size in r filter','size in g filter')
xlabel('test number')
ylabel('size [pixels]')
