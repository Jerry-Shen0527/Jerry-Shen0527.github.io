---
title: "S³ Imagery: Specular Shading from Scratch-Anisotropy"

summary: 'We explore continuous view-dependent imagery with rich shading effects via scratch-based reflection on both planar and curved surfaces. Our method solves ODEs under BRDF constraints to optimize scratch distributions, creating real-world specular reflection art with view-dependent shading effects.'
date: 2025-10-03

publication_types: ["article-conference"]
publication: '*Proceedings of ACM SIGGRAPH Asia 2025 (Technical Papers)*'
url_pdf: ''
abstract: "Scratch-represented 3D visual arts can create compelling visual effects by manipulating light reflections across surfaces. Established works, such as those involving scratch holograms, have realized impressive multi-view imagery effects of reflection arts. However, creating a continuous view of 3D virtual objects with shading effects, especially view-dependent shading remains a challenge. Yet, most reported works are demonstrated on planar surfaces, leaving exploring the potential benefits of leveraging curved surfaces for diverse imagery scenarios an interesting research avenue. This work explores the continuous view-dependent imagery with rich shading effects via scratch-based reflection, whose design space has the potential to be extended to arbitrary curved surfaces. This is achieved by solving the ordinary differential equations under constraints calculated from established bidirectional reflectance distribution function models to optimize scratch distribution on substrate surfaces. Importantly, we create real-world examples by manufacturing optimized reflectors using off-the-shelf carving machines, delivering state-of-the-art specular view-dependent imagery that features continuous and realistic shading effects on both planar and developable curved surfaces."

featured: true

authors:
    - admin^1^
    - "Feifan Qu^1^"
    - "Li Liao^1^"
    - "Ruizhen Hu^2^"
    - "Yifan (Evan) Peng^1^*"

author_affiliations:
    - "^1^The University of Hong Kong"
    - "^2^Shenzhen University"

author_notes: "*Corresponding author"
math: true
---


## Introduction

Research on computational 3D visual artworks in the graphics community explores the creation and manipulation of optical illusions that leverage 3D effects to engage and deceive the viewer's perception. Representative artworks in this domain include scratch or abrasion holograms, which exhibit compelling visual effects by representing virtual geometry using scratches. The fundamental principle of scratch holography involves the interaction between a moving camera view and varying light paths, resulting in dynamic highlights that shift correspondingly. When the motion of a highlight aligns with the movement of a sampled point on a virtual object within the view, it effectively serves as a substitute for that virtual point.

However, previous works have not extensively studied the luminance of highlights—most assume that as long as the highlight moves correctly, its luminance remains unaltered. This distinction is noteworthy in practice, as by modulating the luminance of the scratch highlight, one can incorporate shading effects into the virtual space, enhancing the representation with greater detail. Additionally, most scratch design pipelines focus on planar surfaces, overlooking how surface curvatures impact light reflection behavior.

This work addresses these challenges by proposing a framework to specify scratches that represent both highlight movement and luminance variations.

## Method Overview

<img src="pipeline.webp" alt="Pipeline" style="width: 100%; height: auto; margin: 0 auto; display: block;">
