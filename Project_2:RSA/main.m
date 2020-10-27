%% main
clc
clear
close all

addpath .\lib
%% Input
Message= 'INF638 IS GOOD';
PlainText = abs(Message);
fprintf('Message is:%s\n',Message)
fprintf('PlainText is: %s\n', num2str(PlainText))

%% Key genration

[n, e, d] = KeyGenration();
PublicKey = [e,n];
PrivateKey = [d,n];
fprintf('PublicKey is: %s\n', num2str([e,n]))
fprintf('PrivateKey is: %s\n', num2str([d,n]))
%% Encrypt and Decrypt
for i = 1: length(PlainText)
    PlainTextUnit   = PlainText(i);
    Ciphertext(i)      = RSAEncrypt(n, e, PlainTextUnit);
    CiphertextUnit  = Ciphertext(i);
    DecryptedText(i)   = RSADecrypt(n, d, CiphertextUnit);

    
end    

fprintf('CipherText is: %s\n', num2str(Ciphertext))
fprintf('DecryptedText is: %s\n', num2str(DecryptedText))
fprintf('Restored Message is: %s\n', char( DecryptedText))
