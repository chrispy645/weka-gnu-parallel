"""
generate-params.py

This is an example file that generates all possible combinations of C and M.
C is the confidence parameter and M is the minNum

Usage:
python generate-params.py > param-input.txt

"""

trainfile = "weather.nominal.arff"

C = [0.25, 0.5, 1.0]
M = [2, 4, 8, 16]

for c in C:
	for m in M:
		print trainfile,
		print c,
		print m
