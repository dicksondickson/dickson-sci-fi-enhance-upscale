# Dickson's Sci-Fi Enhance Upscale  

This a ComfyUI workflow to upscale images to 4K or 8K.  
Great for general upscale on photos with Magnific-like results.  

This workflow upscales in 3 stages.  

The first stage utilizes CCSR - 2x upscale.  
Second stage utilizes SUPIR - 4K size.  
Third stage utilizes SD ULTIMATE UPSCALE - 8K size.  

The workflow is designed to save the result of each stage.  


# Changelog  

v9 - Optimize speed. Use updated controlnet tile node. Use RealvizXL 5 model.    
v8 - Optimize quality. Use updated image loader node.    
v7 - Replace image loader with custom load. Remove SD prompt reader depedency. Split version Tiled and Full. Tiled sets TiledEDMRestore in SUPIR and can run on systems with low VRAM.    
v6 - Fixed seams issue when using TiledEDMRestore in SUPIR. Should now work with system with less VRAM. Tested on 2080ti.  
v5 - Optimized steps.  
v4 - Optimized quality and reworded annotations.  



# ETA  

Using a RTX 4090:  
First stage and second stage upscale combined takes about 8 minutes.  
Running all three stages takes about 18 - 22 minutes.  


# Samples  

![image info](/images/sample_1_1.png)  
![image info](/images/sample_1_2.png)  
![image info](/images/sample2.jpg)  
![image info](/images/workflow.png)  






# Models Used  

RealVisXL V4.0 Lightning  
[https://civitai.com/models/139562/realvisxl-v40](https://civitai.com/models/139562/realvisxl-v40)  

NKMD 8x Superscale Faces - put this in the comfyui upscaler folder:  
[https://icedrive.net/s/d3adUbHsOO](https://icedrive.net/s/d3adUbHsOO)

TTPlanet/TTPLanet_SDXL_Controlnet_Tile_Realistic  
Get the v2 version:  
[https://huggingface.co/TTPlanet/TTPLanet_SDXL_Controlnet_Tile_Realistic/tree/main](https://huggingface.co/TTPlanet/TTPLanet_SDXL_Controlnet_Tile_Realistic/tree/main)  



# Nodes Required    
This workflow requires my custom nodes. Please get them here:  
[https://github.com/dicksondickson/ComfyUI-Dickson-Nodes](https://github.com/dicksondickson/ComfyUI-Dickson-Nodes)  


There are other custom nodes in use and they can be installed when you load up the workflow via ComfyUI Manager.

If you are unable to find them with the ComfyUI manager - these are the nodes that the workflow uses:

SUPIR  
[https://github.com/kijai/ComfyUI-SUPIR](https://https://github.com/kijai/ComfyUI-SUPIR)  


CCSR  
[https://github.com/kijai/ComfyUI-CCSR](https://github.com/kijai/ComfyUI-CCSR)  


rgthree-comfy  
[https://github.com/rgthree/rgthree-comfy](https://github.com/rgthree/rgthree-comfy)   


ComfyUI-Chibi-Nodes  
[https://github.com/chibiace/ComfyUI-Chibi-Nodes](https://github.com/chibiace/ComfyUI-Chibi-Nodes)  


ComfyUI_Comfyroll_CustomNodes  
[https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes](https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes)  


ComfyUI-Custom-Scripts  
[https://github.com/pythongosssss/ComfyUI-Custom-Scripts](https://github.com/pythongosssss/ComfyUI-Custom-Scripts)  


ComfyUI-Impact-Pack  
[https://github.com/ltdrdata/ComfyUI-Impact-Pack](https://github.com/ltdrdata/ComfyUI-Impact-Pack)  


ComfyUI_essentials  
[https://github.com/cubiq/ComfyUI_essentials](https://github.com/cubiq/ComfyUI_essentials)  


masquerade-nodes-comfyui  
[https://github.com/BadCafeCode/masquerade-nodes-comfyui](https://github.com/BadCafeCode/masquerade-nodes-comfyui)  




# Acknowledgment  
Thanks to [@comfyanonymous](https://github.com/comfyanonymous) [@Dr.Lt.Data](https://github.com/ltdrdata) and other authors for creating and sharing their work.  




