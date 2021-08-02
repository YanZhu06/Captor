function [testpEGAAC, testnEGAAC]=EGAAC() 

[hp,positive]=fastaread('P.txt');
[hn,negative]=fastaread('N.txt');
Np=length(hp);
Nn=length(hn);
a1='GAVLMI';
a2='FYW';
a3='KRH';
a4='DE';
a5='STCPNQ';
L=length(positive{1,1});%每个蛋白质序列的长度
for i=1:Np
    f=[];
    for j=1:L-4
        ss=positive{1,i}(j:j+4);
        h1=0;h2=0;h3=0;h4=0;h5=0;
        for t=1:5
            s=ss(1,t);
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
        f1=h1/5;
        f2=h2/5;
        f3=h3/5;
        f4=h4/5;
        f5=h5/5;
        f(j,:)=[f1,f2,f3,f4,f5];
    end
    B=f';%转置一下
    testpEGAAC(i,:)=(B(:))';
end


for i=1:Nn
    f=[];
    for j=1:L-4
        ss=negative{1,i}(j:j+4);
        h1=0;h2=0;h3=0;h4=0;h5=0;
        for t=1:5
            s=ss(1,t);
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
        f1=h1/5;
        f2=h2/5;
        f3=h3/5;
        f4=h4/5;
        f5=h5/5;
        f(j,:)=[f1,f2,f3,f4,f5];
    end
    B=f';%转置一下
    testnEGAAC(i,:)=(B(:))';
end