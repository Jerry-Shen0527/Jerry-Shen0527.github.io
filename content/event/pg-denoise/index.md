---
title: Real-time Denoising Using BRDF Pre-integration Factorization


event: Pacific Graphics 20+21
# event_url: https://www.bilibili.com/video/BV1kc411D7cK

location: Online
# address:
#   street: 450 Serra Mall
#   city: Stanford
#   region: CA
#   postcode: '94305'
#   country: United States

summary: An introduction to our work of real-time denoising.
abstract: 'Path tracing has been used for real-time renderings, thanks to the powerful GPU device. Unfortunately, path tracing produces noisy rendered results, thus, filtering or denoising is often applied as a post-process to remove the noise. Previous works produce high-quality denoised results, by accumulating the temporal samples. However, they cannot handle the details from bidirectional reflectance distribution function (BRDF) maps (e.g. roughness map). In this paper, we introduce the BRDF pre-integration factorization for denoising to better preserve the details from BRDF maps. More specifically, we reformulate the rendering equation into two components: the BRDF pre-integration component and the weighted-lighting component. The BRDF pre-integration component is noise-free, since it does not depend on the lighting. Another key observation is that the weighted-lighting component tends to be smooth and low-frequency, which indicates that it is more suitable for denoising than the final rendered image. Hence, the weighted-lighting component is denoised individually. Our BRDF pre-integration demodulation approach is flexible for many real-time filtering methods. We have implemented it in spatio-temporal variance-guided filtering (SVGF), ReLAX and ReBLUR. Compared to the original methods, our method manages to better preserve the details from BRDF maps, while both the memory and time cost are negligible.'

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2021-10-20T20:30:00Z'
# date_end: '2021-12-07T21:00:00Z'
all_day: true

# Schedule page publish date (NOT talk date).
# publishDate: '2017-01-01T00:00:00Z'

authors: []
tags: []

# Is this a featured talk? (true/false)
featured: false

# image:
#   caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/bzdhc5b3Bxs)'
#   focal_point: Right

# links:
#   - icon: twitter
#     icon_pack: fab
#     name: Follow
#     url: https://twitter.com/georgecushen
url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
# projects:
#   - example
---
<!-- 
{{% callout note %}}
Click on the **Slides** button above to view the built-in slides feature.
{{% /callout %}}

Slides can be added in a few ways:

- **Create** slides using Hugo Blox Builder's [_Slides_](https://docs.hugoblox.com/reference/content-types/) feature and link using `slides` parameter in the front matter of the talk file
- **Upload** an existing slide deck to `static/` and link using `url_slides` parameter in the front matter of the talk file
- **Embed** your slides (e.g. Google Slides) or presentation video on this page using [shortcodes](https://docs.hugoblox.com/reference/markdown/).

Further event details, including [page elements](https://docs.hugoblox.com/reference/markdown/) such as image galleries, can be added to the body of this page. -->
