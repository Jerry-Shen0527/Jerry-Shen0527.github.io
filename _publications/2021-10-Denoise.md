---
title: "Real-time Denoising Using BRDF Pre-integration Factorization"
collection: publications
permalink: /publication/BRDFDenoise
excerpt: 'We use BRDF pre-integration to do factorization before denoising, preserving more details for spatially varing BRDFs.'
date: 2021-10-01
venue: 'Computer Graphics Forum (Proceedings of Pacific Graphics)'
paperurl: 'https://wangningbei.github.io/2023/DiffGlints_files/paper_diffGlints_compressed.pdf'
citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'
header:
    teaser: DiffGlintsTeaser.jpg
    teaserDescription: "We present a new type of 3D visual reflection art - scratch-based reflection art. Given four target images (bottom right), our method fabricates a set of scratches (closeup patches in the bottom left) on a single metallic board to display these images when viewed from four different directions. The photos (middle) are taken from four views respectively. To achieve that, we design analytical scratch geometric and shading models to enable differentiable rendering, which allows computationally efficient optimization eventually. An apple pencil is put near the board as a size reference."
authors:
    - Tao-Zhuang
    - Pengfei-Shen
    - Beibei-Wang
    - Ligang-Liu

---

Abstract
=====
The 3D visual optical arts create fascinating special effects by carefully designing interactions between objects and light sources. One of the essential types is 3D reflection art, which aims to create reflectors that can display different images when viewed from different directions. Existing works produce impressive visual effects. Unfortunately, previous works discretize the reflector surface with regular grids/facets, leading to a large parameter space and a high optimization time cost. In this paper, we introduce a new type of 3D reflection art - scratch-based reflection art, which allows for a more compact parameter space, easier fabrication, and computationally efficient optimization. To design a 3D reflection art with scratches, we formulate it as a multi-view optimization problem and introduce differentiable rendering to enable efficient gradient-based optimizers. For that, we propose an analytical scratch rendering approach, together with a high-performance rendering pipeline, allowing efficient differentiable rendering. As a consequence, we could display multiple images on a single metallic board with only several minutes for optimization. We demonstrate our work by showing virtual objects and manufacturing our designed reflectors with a carving machine.
