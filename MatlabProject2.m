clear
%% read data and store in 3-d matrix Data
Datar=importdata('lc_PTFS1120j.dat');
Data1=Datar.data;
Datar=importdata('lc_PTFS1117ae.dat');
Data2=Datar.data;
Datar=importdata('lc_PTFS1112bg.dat');
Data3=Datar.data;
Datar=importdata('lc_PTFS1103y.dat');
Data4=Datar.data;
Datar=importdata('lc_PTFS1103k.dat');
Data5=Datar.data;
Datar=importdata('lc_PTFS1209r.dat');
Data6=Datar.data;
Datar=importdata('lc_PTFS1123d.dat');
Data7=Datar.data;
Datar=importdata('lc_PTFS1301ar.dat');
Data8=Datar.data;
Datar=importdata('lc_PTFS1301dj.dat');
Data9=Datar.data;
Datar=importdata('lc_PTFS1301dp.dat');
Data10=Datar.data;
Datar=importdata('lc_PTFS1302bn.dat');
Data11=Datar.data;
Datar=importdata('lc_PTFS1302bp.dat');
Data12=Datar.data;
Datar=importdata('lc_PTFS1302dn.dat');
Data13=Datar.data;
Datar=importdata('lc_PTFS1302dt.dat');
Data14=Datar.data;
Datar=importdata('lc_PTFS1302dv.dat');
Data15=Datar.data;
Datar=importdata('lc_PTFS1303dk.dat');
Data16=Datar.data;
Datar=importdata('lc_PTFS1303s.dat');
Data17=Datar.data;
Datar=importdata('lc_PTFS1305l.dat');
Data18=Datar.data;
Datar=importdata('lc_PTFS1316bt.dat');
Data19=Datar.data;
Datar=importdata('lc_PTFS1401ah.dat');
Data20=Datar.data;
Datar=importdata('lc_PTFS1401bn.dat');
Data21=Datar.data;
Datar=importdata('lc_PTFS1401ce.dat');
Data22=Datar.data;
Datar=importdata('lc_PTFS1401cf.dat');
Data23=Datar.data;
Datar=importdata('lc_PTFS1401ew.dat');
Data24=Datar.data;
Datar=importdata('lc_PTFS1401fi.dat');
Data25=Datar.data;
Datar=importdata('lc_PTFS1402n.dat');
Data26=Datar.data;
Datar=importdata('lc_PTFS1500av.dat');
Data27=Datar.data;
Datar=importdata('lc_PTFS1501c.dat');
Data28=Datar.data;
%% get red filter magnitude and g filter magnitude and correspoinding error (only red shows flare)
num=28;
for i=1:num
    eval(sprintf('size%d=size(Data%d);',i,i));
    eval(sprintf('Data%dr=zeros(2,size%d(1));',i,i));
    for j=1:eval(sprintf('size%d(1)',i))
        if eval(sprintf('Data%d(j,1)==2',i))
        eval(sprintf('Data%dr(1,j)=Data%d(j,6);',i,i));
        eval(sprintf('Data%dr(2,j)=Data%d(j,7);',i,i));
        end
    end
end


for i=1:num
    eval(sprintf('Data%dr=Data%dr(:,(Data%dr(1,:)~=0));',i,i,i));
    eval(sprintf('size%d=size(Data%dr);',i,i));
end




%% calculate the average, n points per part
n=3;
mag=0.5; %how far away from background value to count as flare
bg=zeros(1,num);
flareValue=zeros(10,num);
flareValueerr=zeros(10,num);
for i=1:num
    eval(sprintf('ave%d=zeros(1,floor(size%d(2)/n));',i,i));
    eval(sprintf('ave%d(1)=mean(Data%dr(1,1:n));',i,i));
    for j=2:eval(sprintf('floor(size%d(2)/n)',i))
     if j==eval(sprintf('floor(size%d(2)/n)',i))
           eval(sprintf('ave%d(j)=mean(Data%dr(1,j*n:end));',i,i));
     else
            eval(sprintf('ave%d(j)=mean(Data%dr(1,j*n:n*(j+1)));',i,i));
     end
    end
    %get the background magnitude using median
    eval(sprintf('bg(%d)=median(ave%d);',i,i));
    
    for j=1:eval(sprintf('length(ave%d)',i))
    % count flares and store values
     if eval(sprintf('ave%d(j)<bg(%d)-mag',i,i))
            eval(sprintf('flareValue(j,%d)=bg(%d)-min(Data%dr(1,j*n:n*(j+1)));',i,i,i))
            eval(sprintf('[a,b]=find(Data%dr==min(Data%dr(1,j*n:n*(j+1))));',i,i))
            eval(sprintf('flareValueerr(j,%d)=Data%dr(2,b);',i,i))
     end
    end
end
% calculate the average and uncertainty
FlareIntensity=zeros(1,num);
FlareIntensityerr=zeros(1,num);
for i=1:num
FlareIntensity(i)=mean(flareValue(flareValue(:,i)~=0,i));
FlareIntensityerr(i)=std(flareValue(flareValue(:,i)~=0,i));
if FlareIntensityerr(i)< max(flareValueerr(:,i))
FlareIntensityerr(i)=max(flareValueerr(:,i));
end
end

%% calculate color index using WISE "V-B"-->W4-W1 3.4, 4.6, 12, and 22 ?m (W1, W2, W3, W4) bigger the hotter
Color=textread('ColorIndexW1W4.txt');
VmB=Color(:,2)-Color(:,1);

% combine vectors for color index and flareintensity and its uncertainty
FlareIn_VmB(1,:)=VmB;
FlareIn_VmB(2,:)=FlareIntensity;
FlareIn_VmB(3,:)=FlareIntensityerr;

% exclude data without flares
FlareIn_VmB=FlareIn_VmB(:,FlareIn_VmB(2,:)~=0);
FlareIn_VmB=FlareIn_VmB(:,logical(-(isnan(FlareIn_VmB(2,:))-1)));
%%
% sort in increasing temperature (increasing color index)
[Y,I]=sort(FlareIn_VmB(1,:));
FlareIn_VmBF=FlareIn_VmB(:,I);
errorbar(FlareIn_VmBF(1,:),FlareIn_VmBF(2,:),FlareIn_VmBF(3,:),'ro')
xlabel('w4-w1 color index')
ylabel('flare strength (magnitude changes from baseline)')
title('color index vs flare strength')