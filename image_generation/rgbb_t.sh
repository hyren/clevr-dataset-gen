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

str_arr=('red_sphere.red_torus' 'red_cylinder.red_torus' 'red_torus.red_sphere' 'red_torus.red_cylinder' 'red_torus.red_torus' 'red_torus.red_cone' 'red_cone.red_torus' 'red_sphere.green_torus' 'red_cylinder.green_torus' 'red_torus.green_sphere' 'red_torus.green_cylinder' 'red_torus.green_torus' 'red_torus.green_cone' 'red_cone.green_torus' 'red_sphere.blue_torus' 'red_cylinder.blue_torus' 'red_torus.blue_sphere' 'red_torus.blue_cylinder' 'red_torus.blue_torus' 'red_torus.blue_cone' 'red_cone.blue_torus' 'red_sphere.brown_torus' 'red_cylinder.brown_torus' 'red_torus.brown_sphere' 'red_torus.brown_cylinder' 'red_torus.brown_torus' 'red_torus.brown_cone' 'red_cone.brown_torus' 'green_sphere.red_torus' 'green_cylinder.red_torus' 'green_torus.red_sphere' 'green_torus.red_cylinder' 'green_torus.red_torus' 'green_torus.red_cone' 'green_cone.red_torus' 'green_sphere.green_torus' 'green_cylinder.green_torus' 'green_torus.green_sphere' 'green_torus.green_cylinder' 'green_torus.green_torus' 'green_torus.green_cone' 'green_cone.green_torus' 'green_sphere.blue_torus' 'green_cylinder.blue_torus' 'green_torus.blue_sphere' 'green_torus.blue_cylinder' 'green_torus.blue_torus' 'green_torus.blue_cone' 'green_cone.blue_torus' 'green_sphere.brown_torus' 'green_cylinder.brown_torus' 'green_torus.brown_sphere' 'green_torus.brown_cylinder' 'green_torus.brown_torus' 'green_torus.brown_cone' 'green_cone.brown_torus' 'blue_sphere.red_torus' 'blue_cylinder.red_torus' 'blue_torus.red_sphere' 'blue_torus.red_cylinder' 'blue_torus.red_torus' 'blue_torus.red_cone' 'blue_cone.red_torus' 'blue_sphere.green_torus' 'blue_cylinder.green_torus' 'blue_torus.green_sphere' 'blue_torus.green_cylinder' 'blue_torus.green_torus' 'blue_torus.green_cone' 'blue_cone.green_torus' 'blue_sphere.blue_torus' 'blue_cylinder.blue_torus' 'blue_torus.blue_sphere' 'blue_torus.blue_cylinder' 'blue_torus.blue_torus' 'blue_torus.blue_cone' 'blue_cone.blue_torus' 'blue_sphere.brown_torus' 'blue_cylinder.brown_torus' 'blue_torus.brown_sphere' 'blue_torus.brown_cylinder' 'blue_torus.brown_torus' 'blue_torus.brown_cone' 'blue_cone.brown_torus' 'brown_sphere.red_torus' 'brown_cylinder.red_torus' 'brown_torus.red_sphere' 'brown_torus.red_cylinder' 'brown_torus.red_torus' 'brown_torus.red_cone' 'brown_cone.red_torus' 'brown_sphere.green_torus' 'brown_cylinder.green_torus' 'brown_torus.green_sphere' 'brown_torus.green_cylinder' 'brown_torus.green_torus' 'brown_torus.green_cone' 'brown_cone.green_torus' 'brown_sphere.blue_torus' 'brown_cylinder.blue_torus' 'brown_torus.blue_sphere' 'brown_torus.blue_cylinder' 'brown_torus.blue_torus' 'brown_torus.blue_cone' 'brown_cone.blue_torus' 'brown_sphere.brown_torus' 'brown_cylinder.brown_torus' 'brown_torus.brown_sphere' 'brown_torus.brown_cylinder' 'brown_torus.brown_torus' 'brown_torus.brown_cone' 'brown_cone.brown_torus')
# for ((j=0;j<2;j=j+1)); do
# 	echo ${str_arr[j]}
# done
# abc
# for ((j=0;j<81;j=j+1))
# do
# 	echo ${str_arr[j]}
# done

(
for ((ja=0;ja<112;ja=ja+1))
do
	for ((ia=0;ia<5;ia=ia+1)); do
	CUDA_VISIBLE_DEVICES=0 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ia)) --use_gpu 1 --gen_list ${str_arr[ja]}
	done
done
)&
(
for ((jb=0;jb<112;jb=jb+1))
do
	for ((ib=5;ib<10;ib=ib+1)); do
	CUDA_VISIBLE_DEVICES=1 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ib)) --use_gpu 1 --gen_list ${str_arr[jb]}
	done
done
)&
(
for ((jc=0;jc<112;jc=jc+1))
do
	for ((ic=10;ic<15;ic=ic+1)); do
	CUDA_VISIBLE_DEVICES=2 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ic)) --use_gpu 1 --gen_list ${str_arr[jc]}
	done
done
)&
(
for ((jd=0;jd<112;jd=jd+1))
do
	for ((id=15;id<20;id=id+1)); do
	CUDA_VISIBLE_DEVICES=3 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$id)) --use_gpu 1 --gen_list ${str_arr[jd]}
	done
done
)&
(
for ((je=0;je<112;je=je+1))
do
	for ((ie=20;ie<25;ie=ie+1)); do
	CUDA_VISIBLE_DEVICES=4 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ie)) --use_gpu 1 --gen_list ${str_arr[je]}
	done
done
)&
(
for ((jg=0;jg<112;jg=jg+1))
do
	for ((ig=25;ig<30;ig=ig+1)); do
	CUDA_VISIBLE_DEVICES=5 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ig)) --use_gpu 1 --gen_list ${str_arr[jg]}
	done
done
)&
(
for ((jh=0;jh<112;jh=jh+1))
do
	for ((ih=30;ih<35;ih=ih+1)); do
	CUDA_VISIBLE_DEVICES=6 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ih)) --use_gpu 1 --gen_list ${str_arr[jh]}
	done
done
)&
(
for ((ji=0;ji<112;ji=ji+1))
do
	for ((ii=35;ii<40;ii=ii+1)); do
	CUDA_VISIBLE_DEVICES=7 blender --background --python generate_comb.py -- --num_images 10 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$ii)) --use_gpu 1 --gen_list ${str_arr[ji]}
	done
done
)&
