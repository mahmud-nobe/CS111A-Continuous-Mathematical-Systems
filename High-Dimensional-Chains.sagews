# When we have a differentiable function T(x,y) where the variables 
# x and y are themselvees differentiable functions of a single variable t, 
# does the chain rule hold for T(t) at t=1? 

# T expressed in terms of t
f(t) = (e^(((t+1)^2)/10))*(((t+1)^2)^2 + ((2)*(t^2) - 1)^2)

# The derivative of T with respect to t
dT_dt = f.diff(t) 
print("\n The derivative of T with respect to t: dT/dt\n")
show(dT_dt)

print("\n evaluated at t = 1: dT/dt\n")
dT_dt_1 = dT_dt(1)
show(dT_dt_1)


# T expressed in terms of x and y
T(x, y) = (e^(x/10))*(x^2 + y^2)


# Finding the partial derivatives of T
# with respect to x
print("\n The partial derivative of T with respect to x:\n")
dT_dx = T.diff(x)
show(dT_dx)
# evaluated at t = 1

print("\n evaluated at t = 1: dT/dx\n")
x_t_1 = ((1)+1)^2
y_t_1 = (2)*((1)^2) - 1
dT_dx_1 = dT_dx(x_t_1, y_t_1)
show(dT_dx_1)

# with respect to y
print("\n The partial derivative of T with respect to y:\n")
dT_dy = T.diff(y)
show(dT_dy)

# evaluated at t = 1
print("\n evaluated at t = 1: dT/dy\n")
dT_dt_1 = dT_dy(x_t_1, y_t_1)
show(dT_dy_1)

# Defining the position functions x and y as given by t 
t = var('t')
x(t) = (t+1)^2
y(t) = (2)*(t^2) - 1


# Finding the derivatives of positions x and y with respect to t 
print("\n The derivative of x with respect to t: dx/dt\n")
dx_dt = x.diff(t)
show(dx_dt)
print("\n evaluated at t = 1 : \n")
dx_dt_1 = dx_dt(1)
show(dx_dt_1)


print("\n The derivative of y with respect to t: dy/dt\n")
dy_dt = y.diff(t)
show(dy_dt)
print("\n evaluated at t = 1 :\n")
dy_dt_1 = dy_dt(1)
show(dy_dt_1)


# Checking if the chain rule holds for T(t) at t =1
print("\n Plugging it all in :\n ")
sum_dT_dx_dy = dT_dx_1*dx_dt_1 + dT_dy_1*dy_dt_1
show(sum_dT_dx_dy)
