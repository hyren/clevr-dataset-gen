#!/bin/bash
(
for ((i=0;i<50;i=i+1)); do
CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 360 \
 --max_retries 5 --min_objects 5 --max_objects 5 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/five.json \
 --output_image_dir ../dataset/five/images/ --output_scene_dir ../dataset/five/scenes --output_scene_file ../dataset/five/CLEVR_scenes.json
done
)&
(
for ((i=50;i<100;i=i+1)); do
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 360 \
 --max_retries 5 --min_objects 5 --max_objects 5 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/five.json \
 --output_image_dir ../dataset/five/images/ --output_scene_dir ../dataset/five/scenes --output_scene_file ../dataset/five/CLEVR_scenes.json
done
)&
(
for ((i=100;i<150;i=i+1)); do
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 360 \
 --max_retries 5 --min_objects 5 --max_objects 5 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/five.json \
 --output_image_dir ../dataset/five/images/ --output_scene_dir ../dataset/five/scenes --output_scene_file ../dataset/five/CLEVR_scenes.json
done
)&
(
for ((i=150;i<200;i=i+1)); do
CUDA_VISIBLE_DEVICES=3 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 360 \
 --max_retries 5 --min_objects 5 --max_objects 5 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/five.json \
 --output_image_dir ../dataset/five/images/ --output_scene_dir ../dataset/five/scenes --output_scene_file ../dataset/five/CLEVR_scenes.json
done
)&

