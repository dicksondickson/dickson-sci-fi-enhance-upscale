# Dickson's Sci-Fi Enhance Upscale  

This a ComfyUI workflow to upscale images to 2K, 4K, or 8K.  
Great for general upscale on photos with Magnific-like results.  

This workflow upscales images in multiple stages using a combination of upscaling models, CCSR, SUPIR and SD Ulitmate Upscale. Each workflow is tuned to a specific resolution and different speed variants. Enjoy!   


# BENCHMARK  

System specs: RTX 4090 + AMD Ryzen 9950X    

8K Advanced: 16 - 24 minutes   
8K Fast: 10 - 16 minutes   

4K Advanced: 6 - 12 minutes   
4K Fast: 4.5 - 8 minutes   
4K Lightning: 2 - 3.5 mintues   

2K Fast: 105 - 110 seconds   
2K Lightning: 70 - 85 seconds   



# Changelog  

2024/09/17 - Reworked the upscale workflow and broke how different versions targeting different resolutions.    
v9 - Optimize speed. Use updated controlnet tile node. Use RealvizXL 5 model.    
v8 - Optimize quality. Use updated image loader node.    
v7 - Replace image loader with custom load. Remove SD prompt reader depedency. Split version Tiled and Full. Tiled sets TiledEDMRestore in SUPIR and can run on systems with low VRAM.    
v6 - Fixed seams issue when using TiledEDMRestore in SUPIR. Should now work with system with less VRAM. Tested on 2080ti.  
v5 - Optimized steps.  
v4 - Optimized quality and reworded annotations.  






# Samples  

![image info](/images/sample_1_1.png)  
![image info](/images/sample_1_2.png)  
![image info](/images/sample2.jpg)  
![image info](/images/workflow.png)  






# Models Required  


[Boltning - HyperD ](https://civitai.com/models/413466?modelVersionId=488645)       

[RealVisXL V5.0 Lightning ](https://civitai.com/models/139562?modelVersionId=798204)    

[TTPlanet SDXL Controlnet Tile v2](https://huggingface.co/TTPlanet/TTPLanet_SDXL_Controlnet_Tile_Realistic/tree/main)   

[4xRealWebPhoto_v4_dat2](https://openmodeldb.info/models/4x-RealWebPhoto-v4-dat2)   

[OmniSR 4x DF2K](https://openmodeldb.info/models/4x-OmniSR-DF2K)   

[4xNomos2_hq_dat2](https://openmodeldb.info/models/4x-Nomos2-hq-dat2)   

[NMKD Superscale 8x](https://icedrive.net/s/43GNBihZyi)   

[NKMD 8x Superscale Faces](https://icedrive.net/s/d3adUbHsOO)   




# Nodes Required    
This workflow requires my custom nodes. Please get them here or use ComfyUI manager:  
[ComfyUI-Dickson-Nodes](https://github.com/dicksondickson/ComfyUI-Dickson-Nodes)  


There are other custom nodes and other associated models in use and they can be installed when you load up the workflow in ComfyUI. If you are unable to find them with the ComfyUI manager - these are the nodes that the workflow uses:

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




