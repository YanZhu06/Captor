clc
clear
load('feature.mat')
x=[Positive;Negative]';
L=length(x(:,1));
L2=length(x(1,:));
n1=length(Positive);
n2=length(Negative);
x_label=[1*ones(L,n1),(-1)*ones(L,n2)];
p=zeros(L,1);
for i=1:L
    p(i,1) = kruskalwallis(x(i,:),x_label(i,:),'off');
    p(i,1)=roundn(p(i,1),-4);
end
[C,I]=sort(p,1,'ascend');
x1=zeros(L,L2);
for j=1:L
    y1=x(I(j,:),:);
    x1(j,:)=y1;
end
for t=1:L
    if C(t,:)<0.05
        T(t,:)=C(t,:);
    end
end
G=length(T);
x1=x1(1:G,:)';
save('K-W-train','x1')