# First we define our constants
C=0.2 # Coefficient of conductivity 
T_r=22 # Room temperature 
T_bottle=5 # The temperature of the beverage
dTdt(T)=C*(T_r-T) # Newton's Law of Cooling
# Testing some values
dTdt(22)
dTdt(0)
dTdt(T_bottle)

"Writing a general function for EulerIntegration"
function EulerIntegration(firstOrderFunction,initialValue,timeStep,endTime)
    time_range=0:timeStep:endTime
    values=Array(Float64,length(time_range))
    values[1]=initialValue
    for i=2:length(time_range)
        derivative=firstOrderFunction(values[i-1])
        values[i]=values[i-1]+derivative*timeStep
    end
    time_range, values
end
using Winston # For plotting... you can add the package by Pkg.add("Winston")

# Plotting at different end times to get a suitable range
t_range, Temps=EulerIntegration(dTdt, T_bottle, 0.01, 5);
plot(t_range,Temps)
t_range, Temps=EulerIntegration(dTdt, T_bottle, 0.01, 10);
plot(t_range,Temps)
t_range, Temps=EulerIntegration(dTdt, T_bottle, 0.01, 20);
plot(t_range,Temps)

# Checking the effect of coarser time step 
t_range2, Temps2=EulerIntegration(dTdt, T_bottle, 1, 20);
plot(t_range,Temps,t_range2,Temps2)

# Checking the effect of finer time step
t_range3, Temps3=EulerIntegration(dTdt, T_bottle, 0.0001, 20);
plot(t_range,Temps,t_range2,Temps2,t_range3,Temps3)
