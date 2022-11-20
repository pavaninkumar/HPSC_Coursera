"""
Code to determine the approximate cube root
of a given number
"""

def myCbRt(x,debug = False):
	from numpy import nan
	if x == 0:
		return 0
	elif x < 0:
		return nan
		print "Number should be positive"
	assert x>0. and type(x) is float, "Error: Unrecognised input"
	s = 1.0
	kmax = 100
	etol = 1.e-14
	s0 = 0.0
	for k in range(kmax):
		s = (2/3.)*s + x/(3*s*s)
		if abs(s-s0) < etol:
			break
		s0 = s
		if debug:
			print "Iteration %s: s = %s" % (k,s)
	return s
