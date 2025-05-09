# Dickson's Sci-Fi Enhance Upscale  

These are ComfyUI workflows to upscale images to 2K, 4K, or 8K.  
Great for general upscale on photos and illustrations with Magnific-like results.  

These workflows upscales images in multiple stages using a combination of upscaling models, CCSR, SUPIR and Ulitmate SD Upscale, upscaling models, SDXL and Flux. Each workflow is tuned to a specific resolution with different speed variants. These workflows are continuing evolving. If you have questions, issues or comments, please open an issue ticket on this Github. Enjoy!   



# Workflow Descriptions     

**8K Pro Max (FLUX) - EXPERIMENTAL**    
Uses JasperAI controlnet, upscale models, SUPIR, Ultimate SD Upscale, SDXL and Flux FP8 models. 8K target resolution. Experimental workflow using Flux - currently smooths things out too much.       

**8K Advanced (SDXL)**   
Uses TTPlanet tile controlnet, upscale models, CCSR, SUPIR, Ultimate SD Upscale and SDXL models. 8K target resolution.     

**8K Fast (SDXL)**   
Uses TTPlanet tile controlnet, upscale models, CCSR, SUPIR, Ultimate SD Upscale and SDXL models. 8K target resolution.   

**4K Pro Max (FLUX) - EXPERIMENTAL**   
Uses JasperAI controlnet, upscale models, SUPIR, Ultimate SD Upscale, SDXL and Flux FP8. 4K target resolution.  Experimental workflow using Flux - currently smooths things out too much.           

**4k Advanced (SDXL)**   
Uses TTPlanet tile controlnet, upscale models, CCSR, SUPIR, and SDXL models. 4K target resolution.      

**4K Fast (SDXL)**   
Uses TTPlanet tile controlnet, upscale models, CCSR, SUPIR, and SDXL models. 4K target resolution.   

**4K Lightning (Upscalers)**   
Uses upscaler models only. 4K target resolution.    

**2K Fast (Upscalers)**   
Uses upscaler models only. 2K target resolution.    

**2K Lightning (Upscalers)**   
Uses upscaler models only. 2K target resolution.    



# Benchmarks    

**System specs:** RTX 4090 + AMD Ryzen 9950X    

**8K Pro Max (Flux):** 24 - 33 minutes    
**8K Advanced (SDXL):** 16 - 24 minutes    
**8K Fast (SDXL):** 10 - 16 minutes    

**4K Pro Max (Flux):** 7 - 11 minutes   
**4K Advanced (SDXL):** 6 - 12 minutes   
**4K Fast (SDXL):** 4.5 - 8 minutes    
**4K Lightning (Upscalers):** 2 - 3.5 mintues   

**2K Fast (Upscalers):** 105 - 110 seconds    
**2K Lightning (Upscalers):** 70 - 85 seconds    



# Nodes needed:  
**ComfyUI Manager is recommending the wrong custom nodes. Make sure you have correct ones listed below.**     

ComfyUI-Dickson-Nodes  
Comfyroll_customnodes  
comfyui_essentials  
ComfyUI-Custom-Scripts  
rgthree-comfy  
comfyui-ccsr  
comfyui-supir  
ComfyUI_UltimateSDUpscale  


# Changelog  

2025/05/08 - Updated deprecated nodes and updated notes. Seems like comfyui manager is recommending the wrong custom nodes. See list of needed nodes abouve.
2024/10/01 - Updated notes in workflows.   
2024/09/30 - Separated ProMax version into 4K and 8K as the math nodes is causing problems.     
2024/09/29 - Bug fixes. Added Pro Max version that uses Flux.    
2024/09/17 - Reworked the upscale workflows.    
v9 - Optimize speed. Use updated controlnet tile node. Use RealvizXL 5 model.    
v8 - Optimize quality. Use updated image loader node.    
v7 - Replace image loader with custom load. Remove SD prompt reader depedency. Split version Tiled and Full. Tiled sets TiledEDMRestore in SUPIR and can run on systems with low VRAM.    
v6 - Fixed seams issue when using TiledEDMRestore in SUPIR. Should now work with system with less VRAM. Tested on 2080ti.  
v5 - Optimized steps.  
v4 - Optimized quality and reworded annotations.  






# Samples  

![image info](/images/sample_1_1.jpg)    
![image info](/images/sample_1_2.jpg)    
![image info](/images/sample_1_3.jpg)   
![image info](/images/sample_1_4.jpg)     
![image info](/images/workflow.jpg)     






# Models Required  


[Flux.1 Dev FP8 ](https://huggingface.co/Comfy-Org/flux1-dev/blob/main/flux1-dev-fp8.safetensors)       

[Flux VAE ](https://huggingface.co/black-forest-labs/FLUX.1-schnell/blob/main/ae.safetensors)     

[T5 text encoder FP8 ](https://huggingface.co/comfyanonymous/flux_text_encoders/tree/main)     

[Jasper AI Controlnet for FLux ](https://huggingface.co/jasperai/Flux.1-dev-Controlnet-Upscaler)    

[Boltning - HyperD + VAE ](https://civitai.com/models/413466?modelVersionId=488645)       

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
[https://github.com/kijai/ComfyUI-SUPIR](https://github.com/kijai/ComfyUI-SUPIR)  


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




