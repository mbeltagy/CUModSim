using Winston # For plotting

"""
Given initial hight h0 and coefficient or restitution c, the function 
will generate a vector of ball postions up until time end_t. 
"""
function bouncingBallPositon1(h0,c,end_t, delta=0.01)
    g=9.81 # we will have this fixed
    t1=ti=t_next=sqrt(2*h0/g)
    vi=sqrt(2*h0*g) #Just before the bounce 
    time_range=0:delta:end_t
    h_vec=zeros(length(time_range)) #The hight vector 
    i=1 # Array Index
    for t in time_range
        if t<=t1
            h_vec[i]=h0-0.5*g*t^2
        else
            if t>t_next #t_next is t_{i+1} in the equations
                ti=t_next
                vi*=c
                t_next+=2*vi/g
            end
            h_vec[i]=vi*(t-ti)-0.5*g*(t-ti)^2
        end
        i+=1 # Incrementing the array counter 
    end
    h_vec # return the vector of heights 
end


h_vec=bouncingBallPositon1(1,0.8,3.0)
plot(0:0.01:3,h_vec)
xlabel("Time")
ylabel("Height")
