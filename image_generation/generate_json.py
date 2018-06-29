import json
import os
import itertools

with open('data/rgby_ccs.json', 'r') as f:
	properties = json.load(f)
universal_set_color = list(itertools.product(list(properties["colors"].keys()), list(properties["colors"].keys())))
# print (universal_set_color)
# print (len(universal_set_color))
universal_set_shape = list(itertools.product(list(properties["shapes"].keys()), list(properties["shapes"].keys())))
# print (universal_set_shape)
# print (len(universal_set_shape))
universal_set = list(itertools.product(universal_set_color, universal_set_shape))
delete_set = []
for i in universal_set:
	if i[0][0] != 'yellow' and i[0][1] != 'yellow':
		continue
	with open('data/%s_%s.%s_%s.json'%(i[0][0], i[1][0], i[0][1], i[1][1]), 'w') as f:
		json_list = {}
		json_list["shapes"] = {}
		json_list["shapes"][i[1][0]] = properties["shapes"][i[1][0]]
		json_list["shapes"][i[1][1]] = properties["shapes"][i[1][1]]
		json_list["colors"] = {}
		json_list["colors"][i[0][0]] = properties["colors"][i[0][0]]
		json_list["colors"][i[0][1]] = properties["colors"][i[0][1]]
		json_list["materials"] = {}
		json_list["materials"]["rubber"] = "Rubber"
		json_list["sizes"] = {}
		json_list["sizes"]["large"] = 1.0
		json.dump(json_list, f)