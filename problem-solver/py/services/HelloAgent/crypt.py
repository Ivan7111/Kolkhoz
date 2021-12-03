#!/usr/bin/env python3

x = 5
x1 = 10
x2 = 3
r = 0

output = open('output3', 'wb')
print("hello")
for i in range(20000000):
	r = (2 ** 13) * (x + x1 + x2) % ((2 ** 32) - 5)
	output.write(r.to_bytes(4, 'little'))
	x2 = x1
	x1 = x
	x = r
