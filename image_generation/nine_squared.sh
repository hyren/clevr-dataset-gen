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

str_arr=('gray_cone' 'gray_cylinder' 'gray_sphere' 'gray_torus' 'gray_ladder' 'gray_dcone' 'gray_goblet' 'gray_trunk' 'gray_frustum' 'red_cone' 'red_cylinder' 'red_sphere' 'red_torus' 'red_ladder' 'red_dcone' 'red_goblet' 'red_trunk' 'red_frustum' 'blue_cone' 'blue_cylinder' 'blue_sphere' 'blue_torus' 'blue_ladder' 'blue_dcone' 'blue_goblet' 'blue_trunk' 'blue_frustum' 'green_cone' 'green_cylinder' 'green_sphere' 'green_torus' 'green_ladder' 'green_dcone' 'green_goblet' 'green_trunk' 'green_frustum' 'brown_cone' 'brown_cylinder' 'brown_sphere' 'brown_torus' 'brown_ladder' 'brown_dcone' 'brown_goblet' 'brown_trunk' 'brown_frustum' 'purple_cone' 'purple_cylinder' 'purple_sphere' 'purple_torus' 'purple_ladder' 'purple_dcone' 'purple_goblet' 'purple_trunk' 'purple_frustum' 'cyan_cone' 'cyan_cylinder' 'cyan_sphere' 'cyan_torus' 'cyan_ladder' 'cyan_dcone' 'cyan_goblet' 'cyan_trunk' 'cyan_frustum' 'yellow_cone' 'yellow_cylinder' 'yellow_sphere' 'yellow_torus' 'yellow_ladder' 'yellow_dcone' 'yellow_goblet' 'yellow_trunk' 'yellow_frustum' 'olive_cone' 'olive_cylinder' 'olive_sphere' 'olive_torus' 'olive_ladder' 'olive_dcone' 'olive_goblet' 'olive_trunk' 'olive_frustum')
# for ((j=0;j<2;j=j+1)); do
# 	echo ${str_arr[j]}
# done
# abc
# for ((j=0;j<81;j=j+1))
# do
# 	echo ${str_arr[j]}
# done

(
for ((ja=0;ja<81;ja=ja+1))
do
	for ((ia=0;ia<5;ia=ia+1)); do
	CUDA_VISIBLE_DEVICES=0 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ia)) --use_gpu 1 --gen_list ${str_arr[ja]}
	done
done
)&
(
for ((jb=0;jb<81;jb=jb+1))
do
	for ((ib=5;ib<10;ib=ib+1)); do
	CUDA_VISIBLE_DEVICES=1 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ib)) --use_gpu 1 --gen_list ${str_arr[jb]}
	done
done
)&
(
for ((jc=0;jc<81;jc=jc+1))
do
	for ((ic=10;ic<15;ic=ic+1)); do
	CUDA_VISIBLE_DEVICES=2 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ic)) --use_gpu 1 --gen_list ${str_arr[jc]}
	done
done
)&
(
for ((jd=0;jd<81;jd=jd+1))
do
	for ((id=15;id<20;id=id+1)); do
	CUDA_VISIBLE_DEVICES=3 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$id)) --use_gpu 1 --gen_list ${str_arr[jd]}
	done
done
)&
(
for ((je=0;je<81;je=je+1))
do
	for ((ie=20;ie<25;ie=ie+1)); do
	CUDA_VISIBLE_DEVICES=4 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ie)) --use_gpu 1 --gen_list ${str_arr[je]}
	done
done
)&
(
for ((jg=0;jg<81;jg=jg+1))
do
	for ((ig=25;ig<30;ig=ig+1)); do
	CUDA_VISIBLE_DEVICES=5 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ig)) --use_gpu 1 --gen_list ${str_arr[jg]}
	done
done
)&
(
for ((jh=0;jh<81;jh=jh+1))
do
	for ((ih=30;ih<35;ih=ih+1)); do
	CUDA_VISIBLE_DEVICES=6 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ih)) --use_gpu 1 --gen_list ${str_arr[jh]}
	done
done
)&
(
for ((ji=0;ji<81;ji=ji+1))
do
	for ((ii=35;ii<40;ii=ii+1)); do
	CUDA_VISIBLE_DEVICES=7 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((15*$ii)) --use_gpu 1 --gen_list ${str_arr[ji]}
	done
done
)&

# (
# for ((ji=81;ji<144;ji=ji+1))
# do
# 	for ((ii=35;ii<40;ii=ii+1)); do
# 	CUDA_VISIBLE_DEVICES=7 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
# 	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((15*$ii)) --use_gpu 1 --gen_list ${str_arr[ji]}
# 	done
# done
# )&
