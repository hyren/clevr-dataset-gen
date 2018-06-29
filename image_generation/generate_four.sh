#!/bin/bash
(
for ((i=0;i<50;i=i+1)); do
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 520 \
 --max_retries 5 --min_objects 4 --max_objects 4 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/four.json \
 --output_image_dir ../dataset/four/images/ --output_scene_dir ../dataset/four/scenes --output_scene_file ../dataset/four/CLEVR_scenes.json
done
)&
(
for ((i=50;i<100;i=i+1)); do
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 520 \
 --max_retries 5 --min_objects 4 --max_objects 4 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/four.json \
 --output_image_dir ../dataset/four/images/ --output_scene_dir ../dataset/four/scenes --output_scene_file ../dataset/four/CLEVR_scenes.json
done
)&
(
for ((i=100;i<150;i=i+1)); do
CUDA_VISIBLE_DEVICES=6 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 520 \
 --max_retries 5 --min_objects 4 --max_objects 4 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/four.json \
 --output_image_dir ../dataset/four/images/ --output_scene_dir ../dataset/four/scenes --output_scene_file ../dataset/four/CLEVR_scenes.json
done
)&
(
for ((i=150;i<200;i=i+1)); do
CUDA_VISIBLE_DEVICES=7 blender --background --python render_images.py -- --num_images 10 --min_dist 0.3 --min_pixels_per_object 520 \
 --max_retries 5 --min_objects 4 --max_objects 4 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/four.json \
 --output_image_dir ../dataset/four/images/ --output_scene_dir ../dataset/four/scenes --output_scene_file ../dataset/four/CLEVR_scenes.json
done
)&
