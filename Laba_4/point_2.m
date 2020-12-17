clc
clear all
close all
M = 6250;
m_rand = rand(1,M);

%1 test
k =14;
m = m_rand(20:20+k-1)

%2test
min_rand = min(m_rand)
max_rand = max(m_rand)

%3test
mean_rand = mean(m_rand)
mean_t = 1/2

%4test
L = [32 316 1000 3162 6250];
x = log10(L);
y1 = m_rand(1:32);
y2 = m_rand(1:316);
y3 = m_rand(1:1000);
y4 = m_rand(1:3162);
y5 = m_rand;
y1 = mean(y1);
y2 = mean(y2);
y3 = mean(y3);
y4 = mean(y4);
y5 = mean(y5);
y = [y1 y2 y3 y4 y5];
z = 1/2;
plot(x, y, "b*--")
xlabel('log10(L)')
ylabel('mean')
hold on
plot(x, z, "r*")
hold off

%5 test
std_m = std(m_rand)
std_t = sqrt(1/12)

%6 test
n = 20;
d = 1/n;
c = d/2:d:1-d/2;
figure
h = hist(m_rand, c);
h_norm = h/length(m_rand);
bar(c, h_norm)

f_teor = unifpdf(h, min(h), max(h));
hold on
plot(c, f_teor, "r*-")
hold off

%7 test
figure
hist_cum = cumsum(h_norm)*d;
f_theory = unifcdf(c, min(c), max(c));
hold on
stairs(c, hist_cum, "r");
plot(c,f_theory, "b");
hold off



