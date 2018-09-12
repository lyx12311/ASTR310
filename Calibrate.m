%%%%%%%%%%%%%%
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
%%%%%%%%%%%
% % No dark, maybe will use it?
% % 10
% % no flat for 10
% NGC7023g10=rfits('NGC7023-010-g.fit');
% % 11
% % no flat for 11
% NGC7023g11=rfits('NGC7023-011-g.fit');
% % 12
% % no flat for 12
% NGC7023g12=rfits('NGC7023-012-g.fit');
 
%%%%%%%%%%%%%%
 
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
%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%
% subtract dark from flat for g filter
flat1g=flat1g.data-dark1g.data;
flat2g=flat2g.data-dark2g.data;
flat3g=flat3g.data-dark3g.data;
flat4g=flat4g.data-dark4g.data;
flat5g=flat5g.data-dark5g.data;
flat6g=flat6g.data-dark6g.data;
flat7g=flat7g.data-dark7g.data;
%%%%%%%%%%%%%%%%%
% subtract dark from flat for r filter
flat1r=flat1r.data-dark1r.data;
flat2r=flat2r.data-dark2r.data;
flat3r=flat3r.data-dark3r.data;
flat4r=flat4r.data-dark4r.data;
flat5r=flat5r.data-dark5r.data;
flat6r=flat6r.data-dark6r.data;
flat7r=flat7r.data-dark7r.data;
%%%%%%%%%%%%%

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
%%%%%%%%%%%%%%%
% no darks
% NGC7023g10=NGC7023g10.data-NGC7023_10d.data;
% NGC7023g11=NGC7023g11.data-NGC7023_11d.data;
% NGC7023g12=NGC7023g12.data-NGC7023_12d.data;
%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%
% no darks
% NGC7023g10=NGC7023r10.data-NGC7023_10d.data;
% NGC7023g11=NGC7023r11.data-NGC7023_11d.data;
% NGC7023g12=NGC7023r12.data-NGC7023_12d.data;
%%%%%%%%%%%%%%%%%%%%%%%
% calculate the median of flat g and flat r filter, combine all the data in
% all the flats (median of master flat)
MasterFlatg=(flat1g+flat2g+flat3g+flat4g+flat5g+flat6g+flat7g)/7;
MasterFlatr=(flat1r+flat2r+flat3r+flat4r+flat5r+flat6r+flat7r)/7;
flatgN=MasterFlatg./median(MasterFlatg(:));
flatrN=MasterFlatr./median(MasterFlatr(:));
%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% plot 
% figure()
% imagesc(NGC7023g9F); colorbar();
%%
% pixel for one star in r filter, might use or not. (rg<number>=[y,x])
r1=[1388,1023];
r2=[1388,1024]; 
r3=[1391,1024]; 
r4=[1388,1024]; 
r5=[1387,1024]; 
r6=[1389,1025]; 
r7=[1389,1024];
r8=[1388,1024]; 
r9=[1390,1025]; 
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
% save to fits (open in DS9)
fitswrite(NGC7023rF,'test1r.fits');
fitswrite(NGC7023gF,'test1g.fits');
% % plot 
% figure()
% imagesc(NGC7023rF); colorbar();
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% count for quantum efficiency
NGC7023rF=NGC7023rF/0.8;
NGC7023gF=NGC7023gF/0.6;
% save to fits (open in DS9)
fitswrite(NGC7023rF,'test1r.fits');
fitswrite(NGC7023gF,'test1g.fits');
% save to fits (open in DS9)
