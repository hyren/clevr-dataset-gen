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

str_arr=('blue_sphere.blue_sphere' 'blue_sphere.blue_cube' 'blue_sphere.blue_cylinder' 'blue_cube.blue_sphere' 'blue_cube.blue_cube' 'blue_cube.blue_cylinder' 'blue_cylinder.blue_sphere' 'blue_cylinder.blue_cube' 'blue_cylinder.blue_cylinder' 'blue_sphere.green_sphere' 'blue_sphere.green_cube' 'blue_sphere.green_cylinder' 'blue_cube.green_sphere' 'blue_cube.green_cube' 'blue_cube.green_cylinder' 'blue_cylinder.green_sphere' 'blue_cylinder.green_cube' 'blue_cylinder.green_cylinder' 'blue_sphere.red_sphere' 'blue_sphere.red_cube' 'blue_sphere.red_cylinder' 'blue_cube.red_sphere' 'blue_cube.red_cube' 'blue_cube.red_cylinder' 'blue_cylinder.red_sphere' 'blue_cylinder.red_cube' 'blue_cylinder.red_cylinder' 'green_sphere.blue_sphere' 'green_sphere.blue_cube' 'green_sphere.blue_cylinder' 'green_cube.blue_sphere' 'green_cube.blue_cube' 'green_cube.blue_cylinder' 'green_cylinder.blue_sphere' 'green_cylinder.blue_cube' 'green_cylinder.blue_cylinder' 'green_sphere.green_sphere' 'green_sphere.green_cube' 'green_sphere.green_cylinder' 'green_cube.green_sphere' 'green_cube.green_cube' 'green_cube.green_cylinder' 'green_cylinder.green_sphere' 'green_cylinder.green_cube' 'green_cylinder.green_cylinder' 'green_sphere.red_sphere' 'green_sphere.red_cube' 'green_sphere.red_cylinder' 'green_cube.red_sphere' 'green_cube.red_cube' 'green_cube.red_cylinder' 'green_cylinder.red_sphere' 'green_cylinder.red_cube' 'green_cylinder.red_cylinder' 'red_sphere.blue_sphere' 'red_sphere.blue_cube' 'red_sphere.blue_cylinder' 'red_cube.blue_sphere' 'red_cube.blue_cube' 'red_cube.blue_cylinder' 'red_cylinder.blue_sphere' 'red_cylinder.blue_cube' 'red_cylinder.blue_cylinder' 'red_sphere.green_sphere' 'red_sphere.green_cube' 'red_sphere.green_cylinder' 'red_cube.green_sphere' 'red_cube.green_cube' 'red_cube.green_cylinder' 'red_cylinder.green_sphere' 'red_cylinder.green_cube' 'red_cylinder.green_cylinder' 'red_sphere.red_sphere' 'red_sphere.red_cube' 'red_sphere.red_cylinder' 'red_cube.red_sphere' 'red_cube.red_cube' 'red_cube.red_cylinder' 'red_cylinder.red_sphere' 'red_cylinder.red_cube' 'red_cylinder.red_cylinder')
# for ((j=0;j<2;j=j+1)); do
# 	echo ${str_arr[j]}
# done
# abc
# for ((j=0;j<81;j=j+1))
# do
# 	echo ${str_arr[j]}
# done

(
for ((j=0;j<81;j=j+1))
do
	for ((i=0;i<5;i=i+1)); do
	CUDA_VISIBLE_DEVICES=0 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=5;i<10;i=i+1)); do
	CUDA_VISIBLE_DEVICES=1 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=10;i<15;i=i+1)); do
	CUDA_VISIBLE_DEVICES=2 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=15;i<20;i=i+1)); do
	CUDA_VISIBLE_DEVICES=3 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=20;i<25;i=i+1)); do
	CUDA_VISIBLE_DEVICES=4 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=25;i<30;i=i+1)); do
	CUDA_VISIBLE_DEVICES=5 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=30;i<35;i=i+1)); do
	CUDA_VISIBLE_DEVICES=6 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
(
for ((j=0;j<81;j=j+1))
do
	for ((i=35;i<40;i=i+1)); do
	CUDA_VISIBLE_DEVICES=7 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list ${str_arr[j]}
	done
done
)&
