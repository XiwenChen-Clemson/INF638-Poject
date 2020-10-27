function Message = RSADecrypt(n, d, Ciphertext)
results = 1;
for i = 1:d
    results = mod(results*Ciphertext,n);
end    

Message = results;
end

