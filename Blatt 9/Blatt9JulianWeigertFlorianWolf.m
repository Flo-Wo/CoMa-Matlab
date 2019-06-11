% CoMa Blatt 9
% Gruppe: Florian Wolf, Julian Weigert

clear all;
close all;

f = @(x)(1+ x + x^2./2 + x^3./6 + x^4./24 + x^5./120);

N = 10;

L1 = 500;
L2 = 500;

C = zeros(L1,L2,'uint8');

for k = 1:L1
    for l = 1:L2
       z = complex((-5 + l/50), (-5 + k/50));
       n = 0;
       while n <= N
          if n-1 <= abs(f(z)) && abs(f(z)) < n
              C(k,l) = n;
              break;
          else
              n = n + 1;
          end
       end
    end
end
colormap(colorcube(N));
image(C);

