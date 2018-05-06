#!/bin/bash
(
CUDA_VISIBLE_DEVICES=3 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/r_ccs.json \
 --output_image_dir ../dataset/r_ccs_2/images/ --output_scene_dir ../dataset/r_ccs_2/scenes --output_scene_file ../dataset/r_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/g_ccs.json \
 --output_image_dir ../dataset/g_ccs_2/images/ --output_scene_dir ../dataset/g_ccs_2/scenes --output_scene_file ../dataset/g_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/b_ccs.json \
 --output_image_dir ../dataset/b_ccs_2/images/ --output_scene_dir ../dataset/b_ccs_2/scenes --output_scene_file ../dataset/b_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=6 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 600 --use_gpu 1 --properties_json data/r_ccs.json \
 --output_image_dir ../dataset/r_ccs_2/images/ --output_scene_dir ../dataset/r_ccs_2/scenes --output_scene_file ../dataset/r_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=7 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 600 --use_gpu 1 --properties_json data/g_ccs.json \
 --output_image_dir ../dataset/g_ccs_2/images/ --output_scene_dir ../dataset/g_ccs_2/scenes --output_scene_file ../dataset/g_ccs_2/CLEVR_scenes.json
)&

(
CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 600 --min_dist 0.4 --min_pixels_per_object 900 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx 600 --use_gpu 1 --properties_json data/b_ccs.json \
 --output_image_dir ../dataset/b_ccs_2/images/ --output_scene_dir ../dataset/b_ccs_2/scenes --output_scene_file ../dataset/b_ccs_2/CLEVR_scenes.json
)&
