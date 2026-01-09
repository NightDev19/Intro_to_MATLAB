clear;clc;
data = ["Secret Data"];

secret = Encaps(data);

result = secret.method1();
disp(result)