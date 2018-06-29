#!/bin/bash
(
CUDA_VISIBLE_DEVICES=3 blender --background --python render_images.py -- --num_images 950 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/rgb_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2/images/ --output_scene_dir ../dataset/rgb_ccs_2/scenes --output_scene_file ../dataset/rgb_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 950 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 950 --use_gpu 1 --properties_json data/rgb_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2/images/ --output_scene_dir ../dataset/rgb_ccs_2/scenes --output_scene_file ../dataset/rgb_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 950 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 1900 --use_gpu 1 --properties_json data/rgb_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2/images/ --output_scene_dir ../dataset/rgb_ccs_2/scenes --output_scene_file ../dataset/rgb_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=6 blender --background --python render_images.py -- --num_images 950 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 2850 --use_gpu 1 --properties_json data/rgb_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2/images/ --output_scene_dir ../dataset/rgb_ccs_2/scenes --output_scene_file ../dataset/rgb_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=7 blender --background --python render_images.py -- --num_images 950 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 3800 --use_gpu 1 --properties_json data/rgb_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2/images/ --output_scene_dir ../dataset/rgb_ccs_2/scenes --output_scene_file ../dataset/rgb_ccs_2/CLEVR_scenes.json
)&

CUDA_VISIBLE_DEVICES=3 blender --background --python cond_generate.py -- --num_images 10 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/rgby_ccs.json \
 --output_image_dir ../dataset/rgb_ccs_2_1/images/ --output_scene_dir ../dataset/rgb_ccs_2_1/scenes --output_scene_file ../dataset/rgb_ccs_2_1/CLEVR_scenes.json


CUDA_VISIBLE_DEVICES=3 blender --background --python only_generate.py -- --num_images 5 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --gen_list blue_sphere.blue_cube

CUDA_VISIBLE_DEVICES=0 blender --background --python only_generate.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 360 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --gen_list $j



CUDA_VISIBLE_DEVICES=0 blender --background --python only_generate.py -- --num_images 20 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --gen_list green_cylinder.red_cube


CUDA_VISIBLE_DEVICES=6 blender --background --python only_generate.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
	 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --gen_list yellow_cube.green_sphere

CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 10 --min_dist 0.1 --margin 0.1 --min_pixels_per_object 100 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 0 --properties_json data/properties.json \
 --output_image_dir ../dataset/cone/images/ --output_scene_dir ../dataset/cone/scenes --output_scene_file ../dataset/cone/CLEVR_scenes.json


CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 5 --min_dist 1 --margin 0.5 --min_pixels_per_object 100 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 10 --use_gpu 1 --properties_json data/cone.json \
 --output_image_dir ../dataset/cone/images/ --output_scene_dir ../dataset/cone/scenes --output_scene_file ../dataset/cone/CLEVR_scenes.json

CUDA_VISIBLE_DEVICES=5 blender --background --python generate_comb.py -- --num_images 5 --min_dist 0.5 --margin 0.3 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --gen_list brown_torus.green_cone

