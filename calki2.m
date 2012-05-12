funkcja = 'cos(x)';
f = inline(funkcja);
a = -pi/2;
b = pi/2;

przedzialy = [5,10,20,50];

START = 'START'
%calkowanie
results = zeros(length(przedzialy),4);
for i=1:length(przedzialy)
   for st=1:4
      results(i,st) = composite_Nst(f,przedzialy(1,i),st,a,b);
   end
end
results

%wartosci prawdziwe
refVals = ones(4).*2;

%b³êdy bezwzglêdne
bledy_bezwzgledne = abs(results - refVals)

%b³êdy wzglêdne
bledy_wzgledne = abs(results - refVals) ./ refVals


