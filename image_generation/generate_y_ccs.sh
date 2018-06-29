#!/bin/bash
echo hello
# str_arr=()
# cnt=0
# for line in $(cat all_comb.txt)
# do 
# 	str_arr[$cnt]=${line}
# 	cnt=$cnt+1
# 	echo ${str_arr[$cnt]}
#     # echo "File:${line}"
# done
# echo ${#str_arr[*]}

# echo $str_arr

str_arr=('red_cylinder.yellow_cylinder' 'red_cylinder.yellow_sphere' 'red_cylinder.yellow_cube' 'red_sphere.yellow_cylinder' 'red_sphere.yellow_sphere' 'red_sphere.yellow_cube' 'red_cube.yellow_cylinder' 'red_cube.yellow_sphere' 'red_cube.yellow_cube' 'blue_cylinder.yellow_cylinder' 'blue_cylinder.yellow_sphere' 'blue_cylinder.yellow_cube' 'blue_sphere.yellow_cylinder' 'blue_sphere.yellow_sphere' 'blue_sphere.yellow_cube' 'blue_cube.yellow_cylinder' 'blue_cube.yellow_sphere' 'blue_cube.yellow_cube' 'green_cylinder.yellow_cylinder' 'green_cylinder.yellow_sphere' 'green_cylinder.yellow_cube' 'green_sphere.yellow_cylinder' 'green_sphere.yellow_sphere' 'green_sphere.yellow_cube' 'green_cube.yellow_cylinder' 'green_cube.yellow_sphere' 'green_cube.yellow_cube' 'yellow_cylinder.red_cylinder' 'yellow_cylinder.red_sphere' 'yellow_cylinder.red_cube' 'yellow_sphere.red_cylinder' 'yellow_sphere.red_sphere' 'yellow_sphere.red_cube' 'yellow_cube.red_cylinder' 'yellow_cube.red_sphere' 'yellow_cube.red_cube' 'yellow_cylinder.blue_cylinder' 'yellow_cylinder.blue_sphere' 'yellow_cylinder.blue_cube' 'yellow_sphere.blue_cylinder' 'yellow_sphere.blue_sphere' 'yellow_sphere.blue_cube' 'yellow_cube.blue_cylinder' 'yellow_cube.blue_sphere' 'yellow_cube.blue_cube' 'yellow_cylinder.green_cylinder' 'yellow_cylinder.green_sphere' 'yellow_cylinder.green_cube' 'yellow_sphere.green_cylinder' 'yellow_sphere.green_sphere' 'yellow_sphere.green_cube' 'yellow_cube.green_cylinder' 'yellow_cube.green_sphere' 'yellow_cube.green_cube' 'yellow_cylinder.yellow_cylinder' 'yellow_cylinder.yellow_sphere' 'yellow_cylinder.yellow_cube' 'yellow_sphere.yellow_cylinder' 'yellow_sphere.yellow_sphere' 'yellow_sphere.yellow_cube' 'yellow_cube.yellow_cylinder' 'yellow_cube.yellow_sphere' 'yellow_cube.yellow_cube')
# for ((j=0;j<2;j=j+1)); do
# 	echo ${str_arr[j]}
# done
# abc
# for ((j=0;j<81;j=j+1))
# do
# 	echo ${str_arr[j]}
# done

(
for ((j=0;j<63;j=j+1))
do
	for ((i=0;i<5;i=i+1)); do
	CUDA_VISIBLE_DEVICES=0 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=5;i<10;i=i+1)); do
	CUDA_VISIBLE_DEVICES=1 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=10;i<15;i=i+1)); do
	CUDA_VISIBLE_DEVICES=2 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=15;i<20;i=i+1)); do
	CUDA_VISIBLE_DEVICES=3 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=20;i<25;i=i+1)); do
	CUDA_VISIBLE_DEVICES=4 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=25;i<30;i=i+1)); do
	CUDA_VISIBLE_DEVICES=5 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=30;i<35;i=i+1)); do
	CUDA_VISIBLE_DEVICES=6 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<63;j=j+1))
do
	for ((i=35;i<40;i=i+1)); do
	CUDA_VISIBLE_DEVICES=7 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
