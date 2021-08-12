function result = pressed_buttons(Test_data)
for n=1:7    
key=Test_data(1100*n-1099:1100*n-100);
result(n)=compare(key);
end
end