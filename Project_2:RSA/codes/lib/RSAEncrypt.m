function Ciphertext = RSAEncrypt(n, e, Message)
results = 1;
% Property: a*a mod b -> (a mod b)*a mod b
for i = 1:e
    results = mod(results*Message,n);
end


Ciphertext = results;
 
end