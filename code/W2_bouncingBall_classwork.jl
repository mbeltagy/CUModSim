# Model A
h(t)=h0-0.5*g*t^2
g=9.81
h0=1
# Another way
function h(t)
  g=9.81
  h0=1
  return h0-0.5*g*t^2
end
#or 
function h(t)
  g=9.81
  h0=1
  h0-0.5*g*t^2
end
# How do I evaluate and store in an array 
trange=0:0.01:3
h_array=zeros(length(trange))
for i=1:length(trange)
   t=trange[i]
   h_array[i]=h(t)
end
using Winston
plot(trange, h_array
# Another way without knowing the size of the array 
h_array=Float64[]
for t in trange
   push!(h_array,h(t))
end
# Third was 
h_array=h.(trange)
# Now we verify some calculations, what is v1?
# From the math we know that it is 
sqrt(2*h0/g)
for t in 0:0.0001:3 #Tiny step size for higher accuracy 
   if h(t)<0
     print(t)
     break
   end
end

# Calculating the trajectory from t1 to t2. Here the variable t in this equation
# is relative time. 
function h2(t)
       k=0.8
       v1=-k*(-g*sqrt(2*h0/g))
       v1*t-0.5*g*t^2
       end
h_array=h2.(trange)
h_array=h2.(0:0.1:1)
plot(0:0.1:1, h_array)

