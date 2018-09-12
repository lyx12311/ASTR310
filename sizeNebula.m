function [minN,maxN]=sizeNebula(im,col,row,ir1,ir2,or1,or2,aa,mins,maxs)
% input is the center column and row for the nebula.
% Inner sky ellipse with a major and minor axis of (ir1,ir2)
% and outer sky ellipse of (or1,or2). "aa" is number of max
% excluded when calculate the average and stdev of sky value. "mins" and
% "maxs" calculate the size with "mins" and "maxs" standard diviation away from sky
% value, which gives the min and max range of the size of the nebula.

% % % % % % test
% % % % % col=783;
% % % % % row=860;
% % % % % ir1=400;
% % % % % ir2=400;
% % % % % or1=600;
% % % % % or2=600;
% % % % % aa=10;
% % % % % mins=2;
% % % % % maxs=4;
% % % % % im=NGC7023r1F;


% initial value
minN=0;
maxN=0;

% from aperE.m, determine the sky values
[a,b]=size(im);
[xx,yy]=meshgrid(1:b,1:a);

ixsrc=(((xx-col)./ir1).^2)+(((yy-row)./ir2).^2)<=1;
ixsky=(((xx-col)./or1).^2)+(((yy-row)./or2).^2)<=1 &(((xx-col)./ir1).^2)+(((yy-row)./ir2).^2)>=1;

% sky value
sky=median(im(ixsky));                        


% reshape matrix for sky value to 1d array
ixskyA=reshape(im(ixsky),1,[]);


% sky withought a max and mins
for i=1:aa
[~,idx] = max(ixskyA);
ixskyA(idx)=[];
end

% sky standard deviation
skyStv=std(ixskyA);

% pick out the pixels "mins" standard deviation away from sky value
maxN=im(ixsrc)>=sky+mins*skyStv;
maxN=sum(sum(maxN));

% pick out the pixels "maxs" standard deviation away from sky value
minN=im(ixsrc)>=sky+maxs*skyStv;
minN=sum(sum(minN));


end

