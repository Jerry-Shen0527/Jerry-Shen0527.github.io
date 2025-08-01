---
title: "Enhanced Velocity Field Modeling for Gaussian Video Reconstruction"

summary: 'We introduce FlowGaussian-VR, a velocity field modeling approach for high-fidelity 3D video reconstruction using Gaussian splatting. Our method addresses challenges in dynamic scenes with complex motion and scale variations by integrating optical flow-based optimization and adaptive densification strategies. Experiments on real-world datasets show improved visual quality, reduced artifacts, and more regularized Gaussian trajectories compared to prior methods.'
date: 2025-07-30

publication_types: ["article-conference"]
publication_short: '*ISMAR 2025*'
publication: '*ISMAR 2025*'
url_pdf: 'https://arxiv.org/abs/2507.23704'
abstract: "High-fidelity 3D video reconstruction is essential for enabling real-time rendering of dynamic scenes with realistic motion in virtual and augmented reality (VR/AR). The deformation field paradigm of 3D Gaussian splatting has achieved near-photorealistic results in video reconstruction due to the great representation capability of deep deformation networks. However, in videos with complex motion and significant scale variations, deformation networks often overfit to irregular Gaussian trajectories, leading to suboptimal visual quality. Moreover, the gradient-based densification strategy designed for static scene reconstruction proves inadequate to address the absence of dynamic content. In light of these challenges, we propose a flow-empowered velocity field modeling scheme tailored for Gaussian video reconstruction, dubbed FlowGaussian-VR. It consists of two core components: a velocity field rendering (VFR) pipeline which enables optical flow-based optimization, and a flow-assisted adaptive densification (FAD) strategy that adjusts the number and size of Gaussians in dynamic regions. We validate our model's effectiveness on multi-view dynamic reconstruction and novel view synthesis with multiple real-world datasets containing challenging motion scenarios, demonstrating not only notable visual improvements (over 2.5 dB gain in PSNR) and less blurry artifacts in dynamic textures, but also regularized and trackable per-Gaussian trajectories."

authors:
    - Zhenyang Li
    - Xiaoyang Bai
    - Tongchen Zhang
    - admin
    - Weiwei Xu
    - Yifan Peng
---
