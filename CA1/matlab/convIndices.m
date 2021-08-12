function time_index =convIndices(arr1,arr2)
X=arr1; 
H=arr2;
m=length(arr1);
n=length(arr2);
a=X(1)+H(1);
b=X(m)+H(n);
time_index=[a:a+m+n-2];
end


