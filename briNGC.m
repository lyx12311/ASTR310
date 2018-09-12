%% brightness
Br=reshape(NGC7023rF,1,[]);
Bg=reshape(NGC7023gF,1,[]);
 
Br=sort(Br);
Bg=sort(Bg);
 
figure
plot(Br(3210000:end),'ro')
hold on
plot(Bg(3210000:end),'bo')
xlabel('pixel number')
ylabel('ADU value')
legend('Sloan r','Sloan g')
 
[fluxr,errr]=aperE(NGC7023rF,783,860,500,500,500,500,600,600,1/1.35);
[fluxg,errg]=aperE(NGC7023gF,783,860,500,500,500,500,600,600,1/1.35);
 
figure
errorbar(fluxr,errr,'ro')
hold on 
errorbar(fluxg,errg,'k*')
