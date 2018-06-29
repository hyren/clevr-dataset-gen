#!/bin/bash
(
for ((i=0;i<50;i=i+1)); do
CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/one/images/ --output_scene_dir ../dataset/one/scenes --output_scene_file ../dataset/one/CLEVR_scenes.json
done
)&
(
for ((i=50;i<100;i=i+1)); do
CUDA_VISIBLE_DEVICES=3 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/one/images/ --output_scene_dir ../dataset/one/scenes --output_scene_file ../dataset/one/CLEVR_scenes.json
done
)&
(
for ((i=100;i<150;i=i+1)); do
CUDA_VISIBLE_DEVICES=6 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/one/images/ --output_scene_dir ../dataset/one/scenes --output_scene_file ../dataset/one/CLEVR_scenes.json
done
)&
(
for ((i=150;i<200;i=i+1)); do
CUDA_VISIBLE_DEVICES=7 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/one/images/ --output_scene_dir ../dataset/one/scenes --output_scene_file ../dataset/one/CLEVR_scenes.json
done
)&

CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/monkey.json \
 --output_image_dir ../dataset/monkey/images/ --output_scene_dir ../dataset/monkey/scenes --output_scene_file ../dataset/monkey/CLEVR_scenes.json

CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/ladder.json \
 --output_image_dir ../dataset/ladder/images/ --output_scene_dir ../dataset/ladder/scenes --output_scene_file ../dataset/ladder/CLEVR_scenes.json


CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/frustum.json \
 --output_image_dir ../dataset/frustum/images/ --output_scene_dir ../dataset/frustum/scenes --output_scene_file ../dataset/frustum/CLEVR_scenes.json


CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 2 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 100 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/goblet.json \
 --output_image_dir ../dataset/goblet/images/ --output_scene_dir ../dataset/goblet/scenes --output_scene_file ../dataset/goblet/CLEVR_scenes.json

CUDA_VISIBLE_DEVICES=7 blender --background --python generate_single.py -- --num_images 15 --min_dist 0.5 --margin 0.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --gen_list red_cone
	

