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
