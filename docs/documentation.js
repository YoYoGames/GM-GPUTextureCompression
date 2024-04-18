/**
 * @module home
 * @title GPU Texture Compression
 * @desc Welcome to the GPU Texture Compression Sample Project
 * 
 * This sample aims to show you how you can use the new feature added to GMS2 April Beta runtimes. This has been added initially to the runtime with minmal IDE support in order to test and confirm functionality. Improved IDE support will be coming in the following months.
 * 
 * Why use GPU Texture Compression?
 * As the complexity of a game increases users may begin to experience reduced rendering performance for a number of reasons. One reason for this may be that the platform the game is running on does not have sufficient graphics memory bandwidth to handle the texture reading the application is doing at a high frame rate. GPU Texture compression is a technique that can help solve this problem and can be implemented without a huge overhaul to rendering flow.
 * 
 * What is GPU Texture Compression?
 * Block compression is the most common form of GPU compression and is supported in some format on almost all modern platforms. A standard texture loaded into GPU memory will be a width * height collection of raw pixel colour values. A block compressed texture is made up of groups of pixels of a fixed block size which have be compressed down in a way that can be quickly reconstructed by the GPU at runtime. This means that the final texture data will occupy less space in GPU memory, and potentially means the texture data can make better use of memory caches in a GPU's texture units which in turn can improve rendering performance. 
 * 
 * How do we use GPU Texture Compression?
 * Block compressed textures must be generated offline (i.e. by GameMaker's asset compiler) as generating block compressed texture data at runtime is prohibitively slow. This has the advantage that texture data does not have to be uncompressed from another format (e.g. PNG) before being used, while not being as memory heavy as using raw uncompressed pixel data.
 * 
 * @section Guides
 * @desc This section will get you started on using the GPU Texture Compression feature on your project.
 * 
 * * ${page.config}
 * @section_end
 * 
 * @module_end
 */