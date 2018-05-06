#!/bin/bash
(CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_brown_cylinder.json \
 --output_image_dir ../dataset/brown_cylinder/images/ --output_scene_dir ../dataset/brown_cylinder/scenes --output_scene_file ../dataset/brown_cylinder/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_brown_cube.json \
 --output_image_dir ../dataset/brown_cube/images/ --output_scene_dir ../dataset/brown_cube/scenes --output_scene_file ../dataset/brown_cube/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_brown_sphere.json \
 --output_image_dir ../dataset/brown_sphere/images/ --output_scene_dir ../dataset/brown_sphere/scenes --output_scene_file ../dataset/brown_sphere/CLEVR_scenes.json
)&

(CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_purple_cylinder.json \
 --output_image_dir ../dataset/purple_cylinder/images/ --output_scene_dir ../dataset/purple_cylinder/scenes --output_scene_file ../dataset/purple_cylinder/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_purple_cube.json \
 --output_image_dir ../dataset/purple_cube/images/ --output_scene_dir ../dataset/purple_cube/scenes --output_scene_file ../dataset/purple_cube/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_purple_sphere.json \
 --output_image_dir ../dataset/purple_sphere/images/ --output_scene_dir ../dataset/purple_sphere/scenes --output_scene_file ../dataset/purple_sphere/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_cyan_cylinder.json \
 --output_image_dir ../dataset/cyan_cylinder/images/ --output_scene_dir ../dataset/cyan_cylinder/scenes --output_scene_file ../dataset/cyan_cylinder/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_cyan_cube.json \
 --output_image_dir ../dataset/cyan_cube/images/ --output_scene_dir ../dataset/cyan_cube/scenes --output_scene_file ../dataset/cyan_cube/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_cyan_sphere.json \
 --output_image_dir ../dataset/cyan_sphere/images/ --output_scene_dir ../dataset/cyan_sphere/scenes --output_scene_file ../dataset/cyan_sphere/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=0 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_yellow_cylinder.json \
 --output_image_dir ../dataset/yellow_cylinder/images/ --output_scene_dir ../dataset/yellow_cylinder/scenes --output_scene_file ../dataset/yellow_cylinder/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=1 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_yellow_cube.json \
 --output_image_dir ../dataset/yellow_cube/images/ --output_scene_dir ../dataset/yellow_cube/scenes --output_scene_file ../dataset/yellow_cube/CLEVR_scenes.json
)&
(
CUDA_VISIBLE_DEVICES=2 blender --background --python render_images.py -- --num_images 993 --min_dist 0.25 --min_pixels_per_object 450 \
 --max_retries 5 --min_objects 1 --max_objects 1 --width 128 --height 128 --start_idx 0 --use_gpu 1 --properties_json data/p_yellow_sphere.json \
 --output_image_dir ../dataset/yellow_sphere/images/ --output_scene_dir ../dataset/yellow_sphere/scenes --output_scene_file ../dataset/yellow_sphere/CLEVR_scenes.json
)&