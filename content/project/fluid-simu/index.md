---
title: Fluid Simulation with Ray Tracing Cores
summary: A Real-time Fluid Simulation Engine Using Ray Tracing Cores.
tags:
  - Simulation
  - GPU
date: '2023-10-01T00:00:00Z'

# Optional external URL for project (replaces project detail page).
external_link: ''

image:
  focal_point: Smart
  preview_only: true

# links:
#   - icon: twitter
#     icon_pack: fab
#     name: Follow
#     url: https://twitter.com/georgecushen
url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

# Introduction
We use ray tracing cores to perform nearby particles detection and implement local particle based simulation methods based on that.

{{< youtube Hh5w_c4vkCw >}}

# Ray Tracing Cores
Just like the implementation of a lot of graphics pipeline, ray tracing is making everything simpler, especially when there is hardware-handled BVH building. For example, ray-traced shadow does not need us to swap passes and transfer textures and it has no limitation of resolution of the shadow map texture.

For the implementation of neighborhood particles searching, we can also avoid building the complex data structures and let the graphics API handle this while the performance remains high since there are cores handling the ray-primitive detection.

# Implementation
We use the wavefront execution path, by collecting the contact pairs in a buffer and launch the force and velocity calculation in parallel. There is a trade off between the atomic operations and the branch divergence problem on GPU.

Atomic operation happens in these two stages:
- The contact pair counter
- The momentum collector

The divergence problem (if we use megakernel) occur because of:
- Internal calculation divergence
- Different count of contacted particles

The wavefront method triumphs when the velocity calculation method is more complicated and the particle distribution is more uneven.

Code coming soon.