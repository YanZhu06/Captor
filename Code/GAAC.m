function [GAACtestp, GAACtestn]=GAAC() 
[hp,positive]=fastaread('Ptrain.txt');
[hn,negative]=fastaread('Ntrain.txt');
Np=length(hp);
Nn=length(hn);
a1='GAVLMI';
a2='FYW';
a3='KRH';
a4='DE';
a5='STCPNQ';
L=length(positive{1,1});%每个蛋白质序列的长度

GAACtestp=zeros(L,5);
for i=1:Np
    h1=0;h2=0;h3=0;h4=0;h5=0;
    for j=1:L
        s=positive{1,i}(j);
        t1=strfind(a1,s);
        t2=strfind(a2,s);
        t3=strfind(a3,s);
        t4=strfind(a4,s);
        t5=strfind(a5,s);
        if t1~=0
            h1=h1+1;
        else
            h1=h1;
        end
        if t2~=0
            h2=h2+1;
        else
            h2=h2;
        end
        if t3~=0
            h3=h3+1;
        else
            h3=h3;
        end
        if t4~=0
            h4=h4+1;
        else
            h4=h4;
        end
        if t5~=0
            h5=h5+1;
        else
            h5=h5;
        end
    end
    f1=h1/L;
    f2=h2/L;
    f3=h3/L;
    f4=h4/L;
    f5=h5/L;
    GAACtestp(i,:)=[f1,f2,f3,f4,f5];
end

GAACtestn=zeros(L,5);
for i=1:Nn
    h1=0;
    h2=0;
    h3=0;
    h4=0;
    h5=0;
    for j=1:L
        s=negative{1,i}(j);
        t1=strfind(a1,s);
        t2=strfind(a2,s);
        t3=strfind(a3,s);
        t4=strfind(a4,s);
        t5=strfind(a5,s);
        if t1~=0
            h1=h1+1;
        else
            h1=h1;
        end
        if t2~=0
            h2=h2+1;
        else
            h2=h2;
        end
        if t3~=0
            h3=h3+1;
        else
            h3=h3;
        end
        if t4~=0
            h4=h4+1;
        else
            h4=h4;
        end
        if t5~=0
            h5=h5+1;
        else
            h5=h5;
        end
    end
    f1=h1/L;
    f2=h2/L;
    f3=h3/L;
    f4=h4/L;
    f5=h5/L;
    GAACtestn(i,:)=[f1,f2,f3,f4,f5];
end