"""
Example to show the integral of a
given function
"""
def f(x):
	return x**2
from scipy.integrate import quad
quad(f,0.,2.)
print quad
