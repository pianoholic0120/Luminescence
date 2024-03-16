epsilon0 = 0.06;
ev = 0:0.01:2;
intensity1 = zeros([1,201]);
intensity2 = zeros([1,201]);
intensity3 = zeros([1,201]);
s1 = 0.3;
s2 = 5.0;
s3 = 15;
sigma = 0.005;
zpl = 2;

for i = 0:250;
    intensity1 = intensity1 + ((s1^i)/factorial(i))*exp(-s1-((zpl-(i*epsilon0)-ev)/(2*(sigma)^2)).^2);
    intensity2 = intensity2 + ((s2^i)/factorial(i))*exp(-s2-((zpl-(i*epsilon0)-ev)/(2*(sigma)^2)).^2);
    intensity3 = intensity3 + ((s3^i)/factorial(i))*exp(-s3-((zpl-(i*epsilon0)-ev)/(2*(sigma)^2)).^2);
end
grid on;

subplot(3,1,1);
plot(ev,intensity1);
ylabel('Intensity for S = 0.3');
xlabel('Energy'); 



subplot(3,1,2);
plot(ev,intensity2);
ylabel('Intensity for S = 5.0');
xlabel('Energy'); 


subplot(3,1,3);
plot(ev,intensity3);
