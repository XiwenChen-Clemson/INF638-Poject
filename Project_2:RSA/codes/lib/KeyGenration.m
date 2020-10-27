%% Key Genration 64bit
function [n, e, d] = KeyGenration()
%IMIN and IMAX must be less than 2^53
% Pick two primes from [10000, 20000] randomly
% original method to genrate prime number to be removed 
 num1 = 1000+randi(1000);
 num2 = 1000+randi(1000);
 
 p = max(primes(num1));
 q = max(primes(num2));
 n = p*q;
 
 Phi = (p-1)*(q-1);
 
 e = NaN;
    
for i = 2: Phi - 1
    if gcd(i, Phi) == 1
        e = i;
        break
    end
end
    
if isnan(e)
    error('No relative prime between p - 1 and q - 1 was found.')
end

 % Extended Euclidean Algorithm
    a = e;
    b = Phi;

    x = 0;
    y = 1;
    u = 1; 
    v = 0;
   
    while a ~= 0
        q = floor(b/ a);
        r = mod(b, a);
        m = x - u*q; 
        k = y - v*q;
        b = a;
        a = r;
        x = u;
        y = v;
        u = m;
        v = k;
    end
    
    %GCD = b; 
    d =x ;
    
    if d < 0
        d = Phi + d;
    end
end