#!/bin/bash
(CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 6 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 988 --use_gpu 1 --properties_json data/p_green_cylinder.json \
 --output_image_dir ../dataset/green_cylinder/images/ --output_scene_dir ../dataset/green_cylinder/scenes --output_scene_file ../dataset/green_cylinder/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 6 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 988 --use_gpu 1 --properties_json data/p_green_cube.json \
 --output_image_dir ../dataset/green_cube/images/ --output_scene_dir ../dataset/green_cube/scenes --output_scene_file ../dataset/green_cube/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 6 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 988 --use_gpu 1 --properties_json data/p_green_sphere.json \
 --output_image_dir ../dataset/green_sphere/images/ --output_scene_dir ../dataset/green_sphere/scenes --output_scene_file ../dataset/green_sphere/CLEVR_scenes.json
)&