%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% read Flat --> Flat Dark --> Raw Image --> Dark for g filter
% 1
flat1g=rfits('flatfields-001-g.fit');
dark1g=rfits('flatfields-001-d5.fit');
NGC7023g1=rfits('NGC7023-001-g.fit');
NGC7023_1d=rfits('NGC7023-001-d.fit');

% 2
flat2g=rfits('flatfields-002-g.fit');
dark2g=rfits('flatfields-002-d5.fit');
NGC7023g2=rfits('NGC7023-002-g.fit');
NGC7023_2d=rfits('NGC7023-002-d.fit');

% 3
flat3g=rfits('flatfields-003-g.fit');
dark3g=rfits('flatfields-003-d5.fit');
NGC7023g3=rfits('NGC7023-003-g.fit');
NGC7023_3d=rfits('NGC7023-003-d.fit');

% 4
flat4g=rfits('flatfields-004-g.fit');
dark4g=rfits('flatfields-004-d5.fit');
NGC7023g4=rfits('NGC7023-004-g.fit');
NGC7023_4d=rfits('NGC7023-004-d.fit');

% 5
flat5g=rfits('flatfields-005-g.fit');
dark5g=rfits('flatfields-005-d5.fit');
NGC7023g5=rfits('NGC7023-005-g.fit');
NGC7023_5d=rfits('NGC7023-005-d.fit');

% 6
flat6g=rfits('flatfields-006-g.fit');
dark6g=rfits('flatfields-006-d5.fit');
NGC7023g6=rfits('NGC7023-006-g.fit');
NGC7023_6d=rfits('NGC7023-006-d.fit');

% 7
flat7g=rfits('flatfields-007-g.fit');
dark7g=rfits('flatfields-007-d5.fit');
NGC7023g7=rfits('NGC7023-007-g.fit');
NGC7023_7d=rfits('NGC7023-007-d.fit');

% 8
% no flat for 8
NGC7023g8=rfits('NGC7023-008-g.fit');
NGC7023_8d=rfits('NGC7023-008-d.fit');

% 9
% no flat for 9
NGC7023g9=rfits('NGC7023-009-g.fit');
NGC7023_9d=rfits('NGC7023-009-d.fit');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % No dark, maybe will use it?
% % 10
% % no flat for 10
% NGC7023g10=rfits('NGC7023-010-g.fit');
% 
% % 11
% % no flat for 11
% NGC7023g11=rfits('NGC7023-011-g.fit');
% 
% % 12
% % no flat for 12
% NGC7023g12=rfits('NGC7023-012-g.fit');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% read Flat --> Flat Dark --> Raw Image --> Dark for r filter
% 1
flat1r=rfits('flatfields-001-r.fit');
dark1r=rfits('flatfields-001-d1.fit');
NGC7023r1=rfits('NGC7023-001-r.fit');

% 2
flat2r=rfits('flatfields-002-r.fit');
dark2r=rfits('flatfields-002-d1.fit');
NGC7023r2=rfits('NGC7023-002-r.fit');

% 3
flat3r=rfits('flatfields-003-r.fit');
dark3r=rfits('flatfields-003-d1.fit');
NGC7023r3=rfits('NGC7023-003-r.fit');

% 4
flat4r=rfits('flatfields-004-r.fit');
dark4r=rfits('flatfields-004-d1.fit');
NGC7023r4=rfits('NGC7023-004-r.fit');

% 5
flat5r=rfits('flatfields-005-r.fit');
dark5r=rfits('flatfields-005-d1.fit');
NGC7023r5=rfits('NGC7023-005-r.fit');

% 6
flat6r=rfits('flatfields-006-r.fit');
dark6r=rfits('flatfields-006-d1.fit');
NGC7023r6=rfits('NGC7023-006-r.fit');

% 7
flat7r=rfits('flatfields-007-r.fit');
dark7r=rfits('flatfields-007-d1.fit');
NGC7023r7=rfits('NGC7023-007-r.fit');

% 8
% no flat for 8
NGC7023r8=rfits('NGC7023-008-r.fit');

% 9
% no flat for 9
NGC7023r9=rfits('NGC7023-009-r.fit');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % No dark, maybe will use it?
% % 10
% % no flat for 10
% NGC7023r10=rfits('NGC7023-010-r.fit');
% 
% % 11
% % no flat for 11
% NGC7023r11=rfits('NGC7023-011-r.fit');
% 
% % 12
% % no flat for 12
% NGC7023r12=rfits('NGC7023-012-r.fit');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% subtract dark from flat for g filter
flat1g=flat1g.data-dark1g.data;
flat2g=flat2g.data-dark2g.data;
flat3g=flat3g.data-dark3g.data;
flat4g=flat4g.data-dark4g.data;
flat5g=flat5g.data-dark5g.data;
flat6g=flat6g.data-dark6g.data;
flat7g=flat7g.data-dark7g.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% subtract dark from flat for r filter
flat1r=flat1r.data-dark1r.data;
flat2r=flat2r.data-dark2r.data;
flat3r=flat3r.data-dark3r.data;
flat4r=flat4r.data-dark4r.data;
flat5r=flat5r.data-dark5r.data;
flat6r=flat6r.data-dark6r.data;
flat7r=flat7r.data-dark7r.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% subtract dark from raw data for g filter
NGC7023g1=NGC7023g1.data-NGC7023_1d.data;
NGC7023g2=NGC7023g2.data-NGC7023_2d.data;
NGC7023g3=NGC7023g3.data-NGC7023_3d.data;
NGC7023g4=NGC7023g4.data-NGC7023_4d.data;
NGC7023g5=NGC7023g5.data-NGC7023_5d.data;
NGC7023g6=NGC7023g6.data-NGC7023_6d.data;
NGC7023g7=NGC7023g7.data-NGC7023_7d.data;
NGC7023g8=NGC7023g8.data-NGC7023_8d.data;
NGC7023g9=NGC7023g9.data-NGC7023_9d.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% no darks
% NGC7023g10=NGC7023g10.data-NGC7023_10d.data;
% NGC7023g11=NGC7023g11.data-NGC7023_11d.data;
% NGC7023g12=NGC7023g12.data-NGC7023_12d.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% subtract dark from raw data for r filter
NGC7023r1=NGC7023r1.data-NGC7023_1d.data;
NGC7023r2=NGC7023r2.data-NGC7023_2d.data;
NGC7023r3=NGC7023r3.data-NGC7023_3d.data;
NGC7023r4=NGC7023r4.data-NGC7023_4d.data;
NGC7023r5=NGC7023r5.data-NGC7023_5d.data;
NGC7023r6=NGC7023r6.data-NGC7023_6d.data;
NGC7023r7=NGC7023r7.data-NGC7023_7d.data;
NGC7023r8=NGC7023r8.data-NGC7023_8d.data;
NGC7023r9=NGC7023r9.data-NGC7023_9d.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% no darks
% NGC7023g10=NGC7023r10.data-NGC7023_10d.data;
% NGC7023g11=NGC7023r11.data-NGC7023_11d.data;
% NGC7023g12=NGC7023r12.data-NGC7023_12d.data;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate the median of flat g and flat r filter, combine all the data in
% all the flats (median of master flat)
MasterFlatg=(flat1g+flat2g+flat3g+flat4g+flat5g+flat6g+flat7g)/7;
MasterFlatr=(flat1r+flat2r+flat3r+flat4r+flat5r+flat6r+flat7r)/7;

flatgN=MasterFlatg./median(MasterFlatg(:));
flatrN=MasterFlatr./median(MasterFlatr(:));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Normalize image by flat
% g filter
NGC7023g1F=NGC7023g1./flatgN;
NGC7023g2F=NGC7023g2./flatgN;
NGC7023g3F=NGC7023g3./flatgN;
NGC7023g4F=NGC7023g4./flatgN;
NGC7023g5F=NGC7023g5./flatgN;
NGC7023g6F=NGC7023g6./flatgN;
NGC7023g7F=NGC7023g7./flatgN;
NGC7023g8F=NGC7023g8./flatgN;
NGC7023g9F=NGC7023g9./flatgN;

% r filter
NGC7023r1F=NGC7023r1./flatrN;
NGC7023r2F=NGC7023r2./flatrN;
NGC7023r3F=NGC7023r3./flatrN;
NGC7023r4F=NGC7023r4./flatrN;
NGC7023r5F=NGC7023r5./flatrN;
NGC7023r6F=NGC7023r6./flatrN;
NGC7023r7F=NGC7023r7./flatrN;
NGC7023r8F=NGC7023r8./flatrN;
NGC7023r9F=NGC7023r9./flatrN;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% plot 
figure()
imagesc(NGC7023r9F); colorbar();
%%
% pixel for one star in r filter, might use or not. (rg<number>=[y,x])
r1=[1388,1023];
r2=[1391,1028]; 
r3=[1385,1050]; 
r4=[1389,1054]; 
r5=[1389,1058]; 
r6=[1385,1065]; 
r7=[1383,1068];
r8=[1382,1071]; 
r9=[1382,1071]; 
% pixel for one star in g filter, might use or not. (rg<number>=[y,x])
g1=[1387,1023];
g2=[1388,1028]; 
g3=[1387,1050]; 
g4=[1387,1055]; 
g5=[1387,1058]; 
g6=[1383,1066]; 
g7=[1385,1069];
g8=[1383,1070]; 
g9=[1383,1073]; 

% switch all images respect to image 1

% calculate the shifts in r
diffr2=r1-r2;
diffr3=r1-r3;
diffr4=r1-r4;
diffr5=r1-r5;
diffr6=r1-r6;
diffr7=r1-r7;
diffr8=r1-r8;
diffr9=r1-r9;
% calculate the shifts in g
diffg2=g1-g2;
diffg3=g1-g3;
diffg4=g1-g4;
diffg5=g1-g5;
diffg6=g1-g6;
diffg7=g1-g7;
diffg8=g1-g8;
diffg9=g1-g9;


% shift in r
NGC7023r2F=circshift(NGC7023r2F,diffr2);
NGC7023r3F=circshift(NGC7023r3F,diffr3);
NGC7023r4F=circshift(NGC7023r4F,diffr4);
NGC7023r5F=circshift(NGC7023r5F,diffr5);
NGC7023r6F=circshift(NGC7023r6F,diffr6);
NGC7023r7F=circshift(NGC7023r7F,diffr7);
NGC7023r8F=circshift(NGC7023r8F,diffr8);
NGC7023r9F=circshift(NGC7023r9F,diffr9);

% shift in g
NGC7023g2F=circshift(NGC7023g2F,diffg2);
NGC7023g3F=circshift(NGC7023g3F,diffg3);
NGC7023g4F=circshift(NGC7023g4F,diffg4);
NGC7023g5F=circshift(NGC7023g5F,diffg5);
NGC7023g6F=circshift(NGC7023g6F,diffg6);
NGC7023g7F=circshift(NGC7023g7F,diffg7);
NGC7023g8F=circshift(NGC7023g8F,diffg8);
NGC7023g9F=circshift(NGC7023g9F,diffg9);

% sum all the science image values
NGC7023rF=NGC7023r1F+NGC7023r2F+NGC7023r3F+NGC7023r4F+NGC7023r5F+NGC7023r6F+NGC7023r7F+NGC7023r8F+NGC7023r9F;
NGC7023gF=NGC7023g1F+NGC7023g2F+NGC7023g3F+NGC7023g4F+NGC7023g5F+NGC7023g6F+NGC7023g7F+NGC7023g8F+NGC7023g9F;

% % plot 
% figure()
% imagesc(NGC7023rF); colorbar();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% still need to finish
NGC7023rF=NGC7023rF/0.8;
NGC7023gF=NGC7023gF/0.6;
% save to fits (open in DS9)
fitswrite(NGC7023rF','test1r.fits');
fitswrite(NGC7023gF','test1g.fits');
% save to fits (open in DS9)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate the size (do analysis? --> calculate the size change for different parameters and plot to see the cutoff point for min and max)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% r filters
% 
% [minr10,maxr10]=sizeNebula(NGC7023rF,783,860,400,400,600,600,5,2,4);
% [minr20,maxr20]=sizeNebula(NGC7023rF,783,860,450,450,600,600,5,2,4);
% [minr30,maxr30]=sizeNebula(NGC7023rF,783,860,500,500,600,600,5,2,4);
% 
% [minr1,maxr1]=sizeNebula(NGC7023rF,783,860,400,400,600,600,10,2,4);
% [minr2,maxr2]=sizeNebula(NGC7023rF,783,860,450,450,600,600,10,2,4);
% [minr3,maxr3]=sizeNebula(NGC7023rF,783,860,500,500,600,600,10,2,4);
% 
% [minr12,maxr12]=sizeNebula(NGC7023rF,783,860,400,400,600,600,20,2,4);
% [minr22,maxr22]=sizeNebula(NGC7023rF,783,860,450,450,600,600,20,2,4);
% [minr32,maxr32]=sizeNebula(NGC7023rF,783,860,500,500,600,600,20,2,4);
% 
% [minr13,maxr13]=sizeNebula(NGC7023rF,783,860,400,400,600,600,30,2,4);
% [minr23,maxr23]=sizeNebula(NGC7023rF,783,860,450,450,600,600,30,2,4);
% [minr33,maxr33]=sizeNebula(NGC7023rF,783,860,500,500,600,600,30,2,4);
% 
% [minr14,maxr14]=sizeNebula(NGC7023rF,783,860,400,400,600,600,40,2,4);
% [minr24,maxr24]=sizeNebula(NGC7023rF,783,860,450,450,600,600,40,2,4);
% [minr34,maxr34]=sizeNebula(NGC7023rF,783,860,500,500,600,600,40,2,4);
% 
% [minr15,maxr15]=sizeNebula(NGC7023rF,783,860,400,400,600,600,100,2,4);
% [minr25,maxr25]=sizeNebula(NGC7023rF,783,860,450,450,600,600,100,2,4);
% [minr35,maxr35]=sizeNebula(NGC7023rF,783,860,500,500,600,600,100,2,4);
% 
% %%%%%%%%%% standard deviation 2,3
% [minr101,maxr101]=sizeNebula(NGC7023rF,783,860,400,400,600,600,5,2,3);
% [minr201,maxr201]=sizeNebula(NGC7023rF,783,860,450,450,600,600,5,2,3);
% [minr301,maxr301]=sizeNebula(NGC7023rF,783,860,500,500,600,600,5,2,3);
% 
% [minr11,maxr11]=sizeNebula(NGC7023rF,783,860,400,400,600,600,10,2,3);
% [minr21,maxr21]=sizeNebula(NGC7023rF,783,860,450,450,600,600,10,2,3);
% [minr31,maxr31]=sizeNebula(NGC7023rF,783,860,500,500,600,600,10,2,3);
% 
% [minr121,maxr121]=sizeNebula(NGC7023rF,783,860,400,400,600,600,20,2,3);
% [minr221,maxr221]=sizeNebula(NGC7023rF,783,860,450,450,600,600,20,2,3);
% [minr321,maxr321]=sizeNebula(NGC7023rF,783,860,500,500,600,600,20,2,3);
% 
% [minr131,maxr131]=sizeNebula(NGC7023rF,783,860,400,400,600,600,30,2,3);
% [minr231,maxr231]=sizeNebula(NGC7023rF,783,860,450,450,600,600,30,2,3);
% [minr331,maxr331]=sizeNebula(NGC7023rF,783,860,500,500,600,600,30,2,3);
% 
% [minr141,maxr141]=sizeNebula(NGC7023rF,783,860,400,400,600,600,40,2,3);
% [minr241,maxr241]=sizeNebula(NGC7023rF,783,860,450,450,600,600,40,2,3);
% [minr341,maxr341]=sizeNebula(NGC7023rF,783,860,500,500,600,600,40,2,3);
% 
% [minr151,maxr151]=sizeNebula(NGC7023rF,783,860,400,400,600,600,50,2,3);
% [minr251,maxr251]=sizeNebula(NGC7023rF,783,860,450,450,600,600,50,2,3);
% [minr351,maxr351]=sizeNebula(NGC7023rF,783,860,500,500,600,600,50,2,3);
% 
% 
% figure
% minall=[minr10,minr1,minr12,minr13,minr14,minr15,minr20,minr2,minr22,minr23,minr24,minr25,minr30,minr3,minr32,minr33,minr34,minr35];
% maxall=[maxr10,maxr1,maxr12,maxr13,maxr14,maxr15,maxr20,maxr2,maxr22,maxr23,maxr24,maxr25,maxr30,maxr3,maxr32,maxr33,maxr34,maxr35];
% 
% minall1=[minr101,minr11,minr121,minr131,minr141,minr151,minr201,minr21,minr221,minr231,minr241,minr251,minr301,minr31,minr321,minr331,minr341,minr351];
% 
% 
% % minall=[minr10,minr20,minr30];
% % maxall=[maxr10,maxr20,maxr30];
% % minall1=[minr101,minr201,minr301];
% 
% 
% n=1:length(minall);
% 
% %%% fits for stdev 2-4
% f1 = fit(n(1:6)',minall(1:6)','exp1');
% f2 = fit(n(7:12)',minall(7:12)','exp1');
% f3 = fit(n(13:end)',minall(13:end)','exp1');
% 
% f12 = fit(n(1:6)',maxall(1:6)','exp1');
% f22 = fit(n(7:12)',maxall(7:12)','exp1');
% f32 = fit(n(13:end)',maxall(13:end)','exp1');
% 
% %%% fits for stdev 2-3
% f11 = fit(n(1:6)',minall1(1:6)','exp1');
% f21 = fit(n(7:12)',minall1(7:12)','exp1');
% f31 = fit(n(13:end)',minall1(13:end)','exp1');
% 
% %%% plots for stdev 2-4
% %%
% figure
% plot(f1,n(1:6)',minall(1:6)','ro')
% hold on
% plot(f12,n(1:6)',maxall(1:6)','ko')
% plot(f2,n(7:12)',minall(7:12)','ro')
% plot(f22,n(7:12)',maxall(7:12)','ko')
% plot(f3,n(13:end)',minall(13:end)','ro')
% plot(f32,n(13:end)',maxall(13:end)','ko')
% 
% % plot(n,minall,'ro');
% % hold on
% % plot(n,minall1,'bo');
% % plot(n,maxall,'ko');
% % 
% % plot(n,minall,'r--');
% % plot(n,minall1,'b--');
% % plot(n,maxall,'k--');
% 
% %% plots for stdev 2-3
% plot(f11,n(1:6)',minall1(1:6)','ro')
% plot(f21,n(7:12)',minall1(7:12)','ro')
% plot(f31,n(13:end)',minall1(13:end)','ro')
% xlabel('test number')
% ylabel('size [pixels (area)]')
% legend('minimum size with 4 sigma','minimum size with 3 sigma','maximum size with 2 sigma')
% 
% %% g filters
% [ming10,maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,5,2,4);
% [ming20,maxg20]=sizeNebula(NGC7023gF,783,860,450,450,600,600,5,2,4);
% [ming30,maxg30]=sizeNebula(NGC7023gF,783,860,500,500,600,600,5,2,4);
% 
% [ming1,maxg1]=sizeNebula(NGC7023gF,783,860,400,400,600,600,10,2,4);
% [ming2,maxg2]=sizeNebula(NGC7023gF,783,860,450,450,600,600,10,2,4);
% [ming3,maxg3]=sizeNebula(NGC7023gF,783,860,500,500,600,600,10,2,4);
% 
% [ming12,maxg12]=sizeNebula(NGC7023gF,783,860,400,400,600,600,20,2,4);
% [ming22,maxg22]=sizeNebula(NGC7023gF,783,860,450,450,600,600,20,2,4);
% [ming32,maxg32]=sizeNebula(NGC7023gF,783,860,500,500,600,600,20,2,4);
% 
% [ming13,maxg13]=sizeNebula(NGC7023gF,783,860,400,400,600,600,30,2,4);
% [ming23,maxg23]=sizeNebula(NGC7023gF,783,860,450,450,600,600,30,2,4);
% [ming33,maxg33]=sizeNebula(NGC7023gF,783,860,500,500,600,600,30,2,4);
% 
% [ming14,maxg14]=sizeNebula(NGC7023gF,783,860,400,400,600,600,40,2,4);
% [ming24,maxg24]=sizeNebula(NGC7023gF,783,860,450,450,600,600,40,2,4);
% [ming34,maxg34]=sizeNebula(NGC7023gF,783,860,500,500,600,600,40,2,4);
% 
% [ming15,maxg15]=sizeNebula(NGC7023gF,783,860,400,400,600,600,50,2,4);
% [ming25,maxg25]=sizeNebula(NGC7023gF,783,860,450,450,600,600,50,2,4);
% [ming35,maxg35]=sizeNebula(NGC7023gF,783,860,500,500,600,600,50,2,4);
% 
% %%%%%%%%%% standagd deviation 2,3
% [ming101,maxg101]=sizeNebula(NGC7023gF,783,860,400,400,600,600,5,2,3);
% [ming201,maxg201]=sizeNebula(NGC7023gF,783,860,450,450,600,600,5,2,3);
% [ming301,maxg301]=sizeNebula(NGC7023gF,783,860,500,500,600,600,5,2,3);
% 
% [ming11,maxg11]=sizeNebula(NGC7023gF,783,860,400,400,600,600,10,2,3);
% [ming21,maxg21]=sizeNebula(NGC7023gF,783,860,450,450,600,600,10,2,3);
% [ming31,maxg31]=sizeNebula(NGC7023gF,783,860,500,500,600,600,10,2,3);
% 
% [ming121,maxg121]=sizeNebula(NGC7023gF,783,860,400,400,600,600,20,2,3);
% [ming221,maxg221]=sizeNebula(NGC7023gF,783,860,450,450,600,600,20,2,3);
% [ming321,maxg321]=sizeNebula(NGC7023gF,783,860,500,500,600,600,20,2,3);
% 
% [ming131,maxg131]=sizeNebula(NGC7023gF,783,860,400,400,600,600,30,2,3);
% [ming231,maxg231]=sizeNebula(NGC7023gF,783,860,450,450,600,600,30,2,3);
% [ming331,maxg331]=sizeNebula(NGC7023gF,783,860,500,500,600,600,30,2,3);
% 
% [ming141,maxg141]=sizeNebula(NGC7023gF,783,860,400,400,600,600,40,2,3);
% [ming241,maxg241]=sizeNebula(NGC7023gF,783,860,450,450,600,600,40,2,3);
% [ming341,maxg341]=sizeNebula(NGC7023gF,783,860,500,500,600,600,40,2,3);
% 
% [ming151,maxg151]=sizeNebula(NGC7023gF,783,860,400,400,600,600,50,2,3);
% [ming251,maxg251]=sizeNebula(NGC7023gF,783,860,450,450,600,600,50,2,3);
% [ming351,maxg351]=sizeNebula(NGC7023gF,783,860,500,500,600,600,50,2,3);
% 
% 
% % figure
% minallg=[ming10,ming1,ming12,ming13,ming14,ming15,ming20,ming2,ming22,ming23,ming24,ming25,ming30,ming3,ming32,ming33,ming34,ming35];
% maxallg=[maxg10,maxg1,maxg12,maxg13,maxg14,maxg15,maxg20,maxg2,maxg22,maxg23,maxg24,maxg25,maxg30,maxg3,maxg32,maxg33,maxg34,maxg35];
% 
% minall1g=[ming101,ming11,ming121,ming131,ming141,ming151,ming201,ming21,ming221,ming231,ming241,ming251,ming301,ming31,ming321,ming331,ming341,ming351];
% 
% % minallg=[ming10,ming20,ming30];
% % maxallg=[maxg10,maxg20,maxg30];
% % minall1g=[ming101,ming201,ming301];
% 
% 
% n=1:length(minall);
% 
% %%% fits for stdev 2-4
% f1g = fit(n(1:6)',minallg(1:6)','exp1');
% f2g = fit(n(7:12)',minallg(7:12)','exp1');
% f3g = fit(n(13:end)',minallg(13:end)','exp1');
% 
% f12g = fit(n(1:6)',maxallg(1:6)','exp1');
% f22g = fit(n(7:12)',maxallg(7:12)','exp1');
% f32g = fit(n(13:end)',maxallg(13:end)','exp1');
% 
% %%% fits for stdev 2-3
% f11g = fit(n(1:6)',minall1g(1:6)','exp1');
% f21g = fit(n(7:12)',minall1g(7:12)','exp1');
% f31g = fit(n(13:end)',minall1g(13:end)','exp1');
% 
% % 
% % %% try
% % [ming10(1),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.1,2,4);
% % [ming10(2),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.3,2,4);
% % [ming10(3),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.5,2,4);
% % [ming10(4),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.7,2,4);
% % [ming10(5),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,2.9,2,4);
% % [ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.1,2,4);
% % [ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.3,2,4);
% % [ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.5,2,4);
% % [ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.7,2,4);
% % [ming10(6),maxg10]=sizeNebula(NGC7023gF,783,860,400,400,600,600,3.1,2,4);
% % plot(1:6,ming10,'o')
% % hold on
% 
% %%
% 
% 
% %%% plots for stdev 2-4
% %% 
% figure
% plot(f1g,n(1:6)',minallg(1:6)','ro')
% hold on
% plot(f12g,n(1:6)',maxallg(1:6)','ko')
% plot(f2g,n(7:12)',minallg(7:12)','ro')
% plot(f22g,n(7:12)',maxallg(7:12)','ko')
% plot(f3g,n(13:end)',minallg(13:end)','ro')
% plot(f32g,n(13:end)',maxallg(13:end)','ko')
% 
% %%% plots for stdev 2-3
% plot(n,minallg,'ro');
% hold on
% plot(n,minall1g,'bo');
% plot(n,maxallg,'ko');
% 
% plot(n,minallg,'r--');
% plot(n,minall1g,'b--');
% plot(n,maxallg,'k--');
% plot(f11g,n(1:6)',minall1g(1:6)','ro')
% plot(f21g,n(7:12)',minall1g(7:12)','ro')
% plot(f31g,n(13:end)',minall1g(13:end)','ro')
% xlabel('test number')
% ylabel('size [pixels (area)]')
% legend('minimum size with 4 sigma','minimum size with 3 sigma','maximum size with 2 sigma')
% 
% %% plot g and r together for size
% figure
% hold on
% errorbar(13,(minall1(13)+maxall(13))/2,abs(minall1(13)-maxall(13))/2,'ro')
% errorbar(13,(minall1g(13)+maxallg(13))/2,abs(minall1g(13)-maxallg(13))/2,'k*')
% legend('size in r filter','size in g filter')
% xlabel('test number')
% ylabel('size [pixels]')

%% brightness
[a,b]=size(NGC7023rF);
[xx,yy]=meshgrid(1:b,1:a);
ixsrc=(((xx-783)./500).^2)+(((yy-860)./500).^2)<=1;
NGC7023rF=NGC7023rF(ixsrc);

[ag,bg]=size(NGC7023gF);
[xxg,yyg]=meshgrid(1:bg,1:ag);
ixsrcg=(((xxg-783)./500).^2)+(((yyg-860)./500).^2)<=1;
NGC7023gF=NGC7023gF(ixsrcg);

Br=reshape(NGC7023rF,1,[]);
Bg=reshape(NGC7023gF,1,[]);

Br=sort(Br);
Bg=sort(Bg);


figure
plot(Br,'ro')
hold on
plot(Bg,'bo')
xlabel('pixel number')
ylabel('ADU value')
legend('Sloan r','Sloan g')
%%
[fluxr,errr]=aperE(NGC7023rF,783,860,500,500,500,500,600,600,1/1.3500000238418579);
[fluxg,errg]=aperE(NGC7023gF,783,860,500,500,500,500,600,600,1/1.3500000238418579);

figure
errorbar(fluxr,errr,'ro')
hold on 
errorbar(fluxg,errg,'k*')
