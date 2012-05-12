function [value] = composite_Nst(f,n,st,a,b)

%ilosc wêz³ów
totalNodes = n*st+1;

%wezly
x = linspace(a, b, totalNodes);

%skok
h = abs(x(2) - x(1));

value = 0;
for i=1:st:(totalNodes-st)
    if st == 1
        value = value +(h/2)*(f(x(i)) + f(x(i+1)));
    elseif st == 2
        value = value +(h/3)* ( f(x(i)) + 4* f(x(i+1)) + f(x(i+2)) );
    elseif st == 3
        value = value + (3*h/8) * ( f(x(i)) + 3*f(x(i+1)) + 3*f(x(i+2)) + f(x(i+3)));
    elseif st == 4
        value = value + (2*h/45) * (7* f(x(i)) + 32*f(x(i+1)) + 12*f(x(i+2)) + 32*f(x(i+3)) +7*f(x(i+4)));
    end
end

