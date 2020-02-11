clc
uploadData = load("amostras/links.csv");
u = uploadData(1:end,1:2);

users = unique(u(:,1))