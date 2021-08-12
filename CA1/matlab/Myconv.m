function convulation =Myconv(arr1,arr2)
m=length(arr1);
n=length(arr2);
X=[arr1,zeros(1,n)]; 
H=[arr2,zeros(1,m)]; 
for i=1:n+m-1
convulation(i)=0;
for j=1:m
if(i-j+1>0)
convulation(i)=convulation(i)+X(j)*H(i-j+1);
else
end
end
end



