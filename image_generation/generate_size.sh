#!/bin/bash
(
for ((i=0;i<10;i=i+1)); do
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 3000 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/large.json \
 --output_image_dir ../dataset/large/images/ --output_scene_dir ../dataset/large/scenes --output_scene_file ../dataset/large/CLEVR_scenes.json
done
)&
(
for ((i=10;i<20;i=i+1)); do
CUDA_VISIBLE_DEVICES=3 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 3000 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/large.json \
 --output_image_dir ../dataset/large/images/ --output_scene_dir ../dataset/large/scenes --output_scene_file ../dataset/large/CLEVR_scenes.json
done
)&
(
for ((i=20;i<30;i=i+1)); do
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 3000 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/large.json \
 --output_image_dir ../dataset/large/images/ --output_scene_dir ../dataset/large/scenes --output_scene_file ../dataset/large/CLEVR_scenes.json
done
)&
(
for ((i=0;i<10;i=i+1)); do
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 300 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/small.json \
 --output_image_dir ../dataset/small/images/ --output_scene_dir ../dataset/small/scenes --output_scene_file ../dataset/small/CLEVR_scenes.json
done
)&
(
for ((i=10;i<20;i=i+1)); do
CUDA_VISIBLE_DEVICES=6 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 300 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/small.json \
 --output_image_dir ../dataset/small/images/ --output_scene_dir ../dataset/small/scenes --output_scene_file ../dataset/small/CLEVR_scenes.json
done
)&
(
for ((i=20;i<30;i=i+1)); do
CUDA_VISIBLE_DEVICES=7 blender --background --python render_images.py -- --num_images 50 --min_dist 0.35 --min_pixels_per_object 300 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx $((50*$i)) --use_gpu 1 --properties_json data/small.json \
 --output_image_dir ../dataset/small/images/ --output_scene_dir ../dataset/small/scenes --output_scene_file ../dataset/small/CLEVR_scenes.json
done
)&