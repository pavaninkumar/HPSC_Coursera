"""
Module contains a function to 
approximate the square root of a given number
"""
def mySqrt(x,debug=False):
	from numpy import nan
	s = 1.0
	kmax = 100
	etol = 1.e-14
	if x==0:
		return 0
	elif x<0.:
		return nan
		print "Error: Input should be positive"
#	assert (x>0. and type(x) == float), "Error: Unrecognised Input"
#	import pdb;pdb.set_trace() # "Adding a debugging point"
	for k in range(kmax):
		s0 = s
		s = (s+x/s)/2
		if debug:
			print "After %s iterations s = %20.15fs" % (k,s)
		delS = abs(s-s0)
		if delS < etol:
			break
	return s

"""
Function to test the square root 
"""

def test():
	from numpy import array, sqrt
	k = array([1.,2.,3.,4.,5000.]);
	for x in k:
		s = mySqrt(x)
		s2 = sqrt(x)
		print "For x=%s, s = %s and s2 = %s" % (x,s,s2)
		assert abs(s-s2)<1.e-4, "Does not agree with each other"
	print "Done Testing!"

if __name__ == "__main__":
	print "Running test..."
	test()
