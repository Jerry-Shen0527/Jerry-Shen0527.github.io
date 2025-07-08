---
title: "Real-time Denoising Using BRDF Pre-integration Factorization"
collection: publications
permalink: /publication/BRDFDenoise
summary: 'We use BRDF pre-integration to do factorization before denoising, preserving more details for spatially varing BRDFs.'
abstract: 'Path tracing has been used for real-time renderings, thanks to the powerful GPU device. Unfortunately, path tracing produces noisy rendered results, thus, filtering or denoising is often applied as a post-process to remove the noise. Previous works produce high-quality denoised results, by accumulating the temporal samples. However, they cannot handle the details from bidirectional reflectance distribution function (BRDF) maps (e.g. roughness map). In this paper, we introduce the BRDF pre-integration factorization for denoising to better preserve the details from BRDF maps. More specifically, we reformulate the rendering equation into two components: the BRDF pre-integration component and the weighted-lighting component. The BRDF pre-integration component is noise-free, since it does not depend on the lighting. Another key observation is that the weighted-lighting component tends to be smooth and low-frequency, which indicates that it is more suitable for denoising than the final rendered image. Hence, the weighted-lighting component is denoised individually. Our BRDF pre-integration demodulation approach is flexible for many real-time filtering methods. We have implemented it in spatio-temporal variance-guided filtering (SVGF), ReLAX and ReBLUR. Compared to the original methods, our method manages to better preserve the details from BRDF maps, while both the memory and time cost are negligible.'
date: 2021-10-01
publication: '*Computer Graphics Forum (Proceedings of Pacific Graphics 2021)*'
publication_short: '*Computer Graphics Forum (PG 2021)*'
url_pdf: 'https://doi.org/10.1111/cgf.14411'

image:
  caption: "Our method demodulates the BRDF pre-integration component from filtering and can be easily integrated into existing filtering algorithms. By combining with our method, both SVGF and ReLAX are able to preserve the fine details from BRDF maps better."
  focal_point: ""
  preview_only: false

# image: 
#     PG-Demodu.jpg
    # teaserDescription: "Our method demodulates the BRDF pre-integration component from filtering and can be easily integrated into existing filtering algorithms. By combining with our method, both SVGF and ReLAX are able to preserve the fine details from BRDF maps much better."
authors:
    - Tao Zhuang
    - admin
    - Beibei Wang
    - Ligang Liu

---

