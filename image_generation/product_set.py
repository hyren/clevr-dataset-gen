import itertools


color_set = ['gray', 'red', 'blue', 'green', 'brown', 'purple', 'cyan', 'yellow', 'olive']
shape_set = ['cone', 'cylinder', 'sphere', 'torus', 'ladder', 'dcone', 'goblet', 'trunk', 'frustum']
universal_set = list(itertools.product(color_set, shape_set))

print (len(universal_set))
print (universal_set)

final_set = []
for i in universal_set:
	final_set.append('%s_%s'%(i[0],i[1]))

print (final_set)
with open('nine_nine.txt', 'w') as f:
	for i in final_set:
  		print("\'%s\' "%i, file=f, end="")
