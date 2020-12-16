
upper=10
lower=1
sum=0 

i=1
while i <= 1000 do
 if i % 3 == 0 || i % 5 == 0
  sum += i
  print sum," = ",sum-i," + ",i,"\n"
 end

 i += 1
end 
