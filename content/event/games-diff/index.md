---
title: Scratch-based Reflection Art via Differentiable Rendering

event: Games Seminar
event_url: https://www.bilibili.com/video/BV1kc411D7cK

location: Online
# address:
#   street: 450 Serra Mall
#   city: Stanford
#   region: CA
#   postcode: '94305'
#   country: United States

summary: An introduction to our work of scratch-based reflection art.
abstract: 'The 3D visual optical arts create fascinating special effects by carefully designing interactions between objects and light sources. One of the essential types is 3D reflection art, which aims to create reflectors that can display different images when viewed from different directions. Existing works produce impressive visual effects. Unfortunately, previous works discretize the reflector surface with regular grids/facets, leading to a large parameter space and a high optimization time cost. In this paper, we introduce a new type of 3D reflection art - scratch-based reflection art, which allows for a more compact parameter space, easier fabrication, and computationally efficient optimization. To design a 3D reflection art with scratches, we formulate it as a multi-view optimization problem and introduce differentiable rendering to enable efficient gradient-based optimizers. For that, we propose an analytical scratch rendering approach, together with a high-performance rendering pipeline, allowing efficient differentiable rendering. As a consequence, we could display multiple images on a single metallic board with only several minutes for optimization. We demonstrate our work by showing virtual objects and manufacturing our designed reflectors with a carving machine.'

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2023-12-07T20:30:00Z'
date_end: '2023-12-07T21:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2017-01-01T00:00:00Z'

authors: []
tags: []

# Is this a featured talk? (true/false)
featured: false

image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/bzdhc5b3Bxs)'
  focal_point: Right

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
