---
title: "Fiber-level Woven Fabric Capture from a Single Photo"

summary: 'We present a new type of 3D visual reflection art - scratch-based reflection art. We derived algorithms that performs differentiable rendering on microstructures and built machine to manufacture real objects.'
date: 2024-09-11

# publication_types: ["article-journal"]
publication_short: arXiv
publication: arXiv
# venue: 'ACM Transactions on Graphics (Proceedings of SIGGRAPH 2023)'
url_pdf: 'https://arxiv.org/pdf/2409.06368'
abstract: "Accurately rendering the appearance of fabrics is challenging, due to their complex 3D microstructures and specialized optical properties. If we model the geometry and optics of fabrics down to the fiber level, we can achieve unprecedented rendering realism, but this raises the difficulty of authoring or capturing the fiber-level assets. Existing approaches can obtain fiber-level geometry with special devices (e.g., CT) or complex hand-designed procedural pipelines (manually tweaking a set of parameters). In this paper, we propose a unified framework to capture fiber-level geometry and appearance of woven fabrics using a single low-cost microscope image. This may seem like an impossible task: a single microscope photo looks very different from the final rendering we would like to achieve, and the information contained in it may seem minimal. We propose a novel fiber parameter estimation pipeline in a coarse-to-fine manner, establishing a subset of parameters step by step. At the core of our pipeline are differentiable procedural geometric and appearance models for woven fabrics at the fiber level, enabling both geometry and appearance to be optimized simultaneously. We first use a simple neural network to predict initial parameters of our geometric and appearance models. From this starting point, we further optimize the parameters of procedural fiber geometry and an approximated shading model via differentiable rasterization to match the microscope photo more accurately. Finally, we refine the fiber appearance parameters via differentiable path tracing, converging to accurate fiber optical parameters, which are suitable for physically-based light simulations to produce high-quality rendered results. We believe that our method is the first to utilize differentiable rendering at the microscopic level, supporting physically-based scattering from explicit fiber assemblies. Our fabric parameter estimation achieves high-quality re-rendering of measured woven fabric samples in both distant and close-up views. These results can further be used for efficient rendering or converted to downstream representations. We also propose a patch-space fiber geometry procedural generation and a two-scale path tracing framework for efficient rendering of fabric scenes."

authors:
    - Zixuan Li
    - admin
    - Hanxiao Sun
    - Zibo Zhang
    - Yu Guo
    - Ligang Liu
    - Ling-Qi Yan
    - Steve Marschner
    - Milos Hasan
    - Beibei Wang

featured: true
---
