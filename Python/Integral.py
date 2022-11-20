"""
Example to show the integral of a
given function
"""
def f(x):
	return x**2

def g(x):
    return x**3

from scipy.integrate import quad
squareFunc = quad(f,0.,2.)
cubeFunc = quad(g,0.,2.)

print squareFunc
print cubeFunc
