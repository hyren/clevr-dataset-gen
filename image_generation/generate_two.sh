#!/bin/bash
(
for ((i=0;i<50;i=i+1)); do
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/two/images/ --output_scene_dir ../dataset/two/scenes --output_scene_file ../dataset/two/CLEVR_scenes.json
done
)&
(
for ((i=50;i<100;i=i+1)); do
CUDA_VISIBLE_DEVICES=4 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/two/images/ --output_scene_dir ../dataset/two/scenes --output_scene_file ../dataset/two/CLEVR_scenes.json
done
)&
(
for ((i=100;i<150;i=i+1)); do
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/two/images/ --output_scene_dir ../dataset/two/scenes --output_scene_file ../dataset/two/CLEVR_scenes.json
done
)&
(
for ((i=150;i<200;i=i+1)); do
CUDA_VISIBLE_DEVICES=5 blender --background --python render_images.py -- --num_images 10 --min_dist 2.5 --margin 2.5 --min_pixels_per_object 700 \
 --max_retries 5 --min_objects 2 --max_objects 2 --width 128 --height 128 --start_idx $((10*$i)) --use_gpu 1 --properties_json data/middle.json \
 --output_image_dir ../dataset/two/images/ --output_scene_dir ../dataset/two/scenes --output_scene_file ../dataset/two/CLEVR_scenes.json
done
)&
