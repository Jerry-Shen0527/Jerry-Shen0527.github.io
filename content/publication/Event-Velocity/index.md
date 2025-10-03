---
title: "Enhanced Velocity Field Modeling for Gaussian Video Reconstruction"

# summary: 'We introduce FlowGaussian-VR, a velocity field modeling approach for high-fidelity 3D video reconstruction using Gaussian splatting. Our method addresses challenges in dynamic scenes with complex motion and scale variations by integrating optical flow-based optimization and adaptive densification strategies. Experiments on real-world datasets show improved visual quality, reduced artifacts, and more regularized Gaussian trajectories compared to prior methods.'
date: 2025-10-03

publication_types: ["article-conference"]
publication_short: '*ISMAR 2025*'
publication: '*ISMAR 2025*'
url_pdf: 'https://arxiv.org/abs/2507.23704'
abstract: "High-fidelity 3D video reconstruction is essential for enabling real-time rendering of dynamic scenes with realistic motion in virtual and augmented reality (VR/AR). The deformation field paradigm of 3D Gaussian splatting has achieved near-photorealistic results in video reconstruction due to the great representation capability of deep deformation networks. However, in videos with complex motion and significant scale variations, deformation networks often overfit to irregular Gaussian trajectories, leading to suboptimal visual quality. Moreover, the gradient-based densification strategy designed for static scene reconstruction proves inadequate to address the absence of dynamic content. In light of these challenges, we propose a flow-empowered velocity field modeling scheme tailored for Gaussian video reconstruction, dubbed FlowGaussian-VR. It consists of two core components: a velocity field rendering (VFR) pipeline which enables optical flow-based optimization, and a flow-assisted adaptive densification (FAD) strategy that adjusts the number and size of Gaussians in dynamic regions. We validate our model's effectiveness on multi-view dynamic reconstruction and novel view synthesis with multiple real-world datasets containing challenging motion scenarios, demonstrating not only notable visual improvements (over 2.5 dB gain in PSNR) and less blurry artifacts in dynamic textures, but also regularized and trackable per-Gaussian trajectories."

featured_caption: "**Left**: Deformation-based 4DGS encounters difficulties in reconstructing scenes and rendering novel views under challenging conditions, such as significant motion and other complex dynamics. Our method exhibits commendable performance on given scenes (e.g., \"cut-roasted-beef\"). **Middle**: We compare the ground-truth optical flow, the deformation network of baseline (4DGS), and the velocity field rendered by our method. **Right**: We render the velocity field for scene Gaussians, constrain it with flow-based losses, and employ the FAD strategy to add Gaussians for dynamic objects in the canonical space."

authors:
    - "Zhenyang Li^1^†"
    - "Xiaoyang Bai^1^†"
    - "Tongchen Zhang^2^"
    - admin^1^
    - "Weiwei Xu^2^"
    - "Yifan Peng^1^*"

author_affiliations:
    - "^1^The University of Hong Kong"
    - "^2^State Key Laboratory of Computer-aided Design & Computer Graphics, Zhejiang University"

author_notes: "†These authors contributed equally.  *Corresponding author"
show_citation: true
math: true
---

## Introduction

3D scene reconstruction is essential for immersive AR/VR applications, ranging from virtual modeling to autonomous driving and medical surgery. While 3D Gaussian Splatting (3DGS) has shown remarkable progress in reconstruction quality and rendering efficiency, dynamic scene reconstruction remains challenging.

<img src="image.png" alt="Pipeline" style="width: 100%; height: auto; margin: 0 auto; display: block;">

*[Figure 1: Pipeline Overview - velocity field modeling with optical flow constraints and FAD strategy]*
<!-- LaTeX: \label{fig:pipeline}, figures/pipeline-v1.pdf -->

Existing dynamic Gaussian Splatting methods follow two main approaches: deformation-based methods that learn deformation fields, and trajectory-based methods that explicitly model geometry transformations. However, Gaussian trajectories predicted by deformation networks often lack consistency and fail to align with actual object motion, resulting in suboptimal reconstruction quality.

We propose **FlowGaussian-VR**, which incorporates optical flow supervision into velocity field modeling for 3D Gaussian dynamics. Our approach renders 2D velocity fields through differentiable rasterization and optimizes them using optical flow guidance from models like RAFT.

## Method

### Velocity Field Rendering

Building on 4D Gaussian Splatting (4DGS), we assign velocity attributes to each Gaussian to capture motion dynamics. Each Gaussian is defined as $G_i = (\mathbf{\mu}_i, \Sigma_i, c_i, \sigma_i, v_i)$, where $v_i$ represents the 2D velocity vector.

We render velocity fields using alpha-blending analogous to color rendering:
$$V(\mathbf{p}) = \sum_{i=1}^{N} \alpha_i \, v_i \, \prod_{j=1}^i (1 - \alpha_j)$$

This rendered velocity field serves as a differentiable approximation of optical flow, enabling direct supervision of Gaussian motion through backpropagation.

<img src="image-1.png" alt="Velocity Rendering Process" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Figure 2: Velocity Rendering Process - alpha-blending of Gaussian velocities]*
<!-- LaTeX: \label{fig:velocity rendering}, figures/VR.pdf -->

### Flow-based Constraints

To align rendered velocity with actual scene dynamics, we introduce three complementary loss functions:

**Windowed Velocity Error ($\mathcal{L}_{\mathrm{win}}$)**: Employs a temporal sliding window of $\tau+1$ frames to ensure multi-frame consistency. This loss directly compares rendered velocity fields with ground truth optical flow:
$$\mathcal{L}_{\mathrm{win}} = \| \hat{\mathbf{V}}_i(\tau) - \widetilde{\mathbf{V}}_i(\tau) \|_1$$

**Flow Warping Error ($\mathcal{L}_{\mathrm{warp}}$)**: Validates temporal correspondence by warping the next frame using rendered velocity and comparing with current frame:
$$\mathcal{L}_{\mathrm{warp}} = \| W_{{t+\delta t \rightarrow t}}(\hat{\mathbf{I}}_{t+\delta t}, \hat{\mathbf{V}}_{t+\delta t \rightarrow t}) - \tilde{\mathbf{I}}_t \|_1$$

**Dynamic Rendering Loss ($\mathcal{L}_{\mathrm{dyn}}$)**: Focuses optimization on moving objects using SAM-2 segmentation masks:
$$\mathcal{L}_{\mathrm{dyn}} = \| \hat{\mathbf{I}} \odot \mathbf{M}_{\text{dyn}}, \, \tilde{\mathbf{I}} \odot \mathbf{M}_{\text{dyn}} \|_1$$

These losses work synergistically to constrain Gaussian motion while preserving photometric accuracy.

### Flow-assisted Adaptive Densification (FAD)

<img src="image-2.png" alt="FAD Strategy" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Figure 3: FAD Strategy - shows flow-guided Gaussian densification process]*
<!-- LaTeX: \label{fig:fad}, figures/fad.pdf -->

Traditional densification relies on photometric gradients, which inadequately capture dynamic content. Our FAD strategy addresses this by using flow-based losses to identify and densify challenging dynamic regions.

The process involves four key steps:

1. **Flow-assisted Pixel Selection**: Identify pixels where $\mathcal{L}_{\mathrm{win}}$ and its gradients exceed threshold $\epsilon$, filtered by dynamic segmentation masks to exclude background regions.

2. **Lifting to 3D Space**: Convert selected 2D pixels to world coordinates using rendered depth $\mathbf{Z}$ and camera parameters:
   $$\mathcal{P}' = \mathbf{K}^{-1} [\mathbf{R}, \mathbf{T}]^{-1} \cdot (x, y, 1)^T \cdot Z$$

3. **Farthest Point Sampling**: Apply FPS with ratio $r$ to ensure spatial distribution of new Gaussians.

4. **Attribute Interpolation**: Use kNN to interpolate Gaussian attributes from existing neighbors, then map back to canonical space via inverse deformation.

### Temporal Velocity Refinement (TVR)

Deformation networks don't ensure physically consistent motion. We propose **TVR** using Extended Kalman Filter (EKF) as post-processing to smooth Gaussian trajectories.

EKF refines Gaussian motion by defining state transition $\mathbf{f}(\mathbf{x}_{t-1}) = D(D^{-1}(\mathbf{x}_{t-1}, t-1), t)$ and observation function $\mathbf{h}(\mathbf{x}) = \mathrm{VRaster}(\mathbf{x})$. It iterates between forecast (predict using deformation) and assimilation (correct using optical flow) steps.

Key strategies include surface Gaussian filtering and accumulated flow localization to prevent error propagation.

<img src="image-3.png" alt="TVR Trajectory Correction" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Figure 4: TVR Trajectory Correction - shows smoothed vs original Gaussian motion]*
<!-- LaTeX: \label{fig:ekf viz}, figures/ekf-viz.pdf -->

## Experiments

### Experimental Setup

We evaluate on two challenging datasets:
- **Nvidia-long**: 7 scenes with 90-210 frames, 12 camera views per frame
- **Neu3D**: 6 scenes with 300 frames each, 15-20 static cameras

We report standard metrics (PSNR, SSIM, LPIPS) and Dynamic PSNR (DPSNR) specifically for moving regions. Ground truth optical flow is obtained using RAFT, and dynamic masks are generated using SAM-2.

<img src="image-6.png" alt="Quantitative Results Tables" style="width: 100%; height: auto; margin: 0 auto; display: block;">

*[Table 1: Quantitative Results on Nvidia Dataset]*
<!-- LaTeX: \label{tab:nvidia-all-scene-1} -->
*[Table 2: Quantitative Results on Neu3D Dataset]*
<!-- LaTeX: \label{tab:neu3d-all-scene-1} -->

### Results and Analysis

Our method achieves significant improvements over state-of-the-art baselines:
- **Overall Performance**: 2.5 dB (Nvidia-long) and 2.45 dB (Neu3D) PSNR improvement
- **Dynamic Regions**: 2.4 dB and 3.14 dB DPSNR improvement respectively
- **Comparison with Methods**: Outperforms 4DGS, 4D-GS, SC-GS, and MotionGS across all scenes

<img src="image-4.png" alt="Novel View Synthesis Results" style="width: 100%; height: auto; margin: 0 auto; display: block;">

*[Figure 5: Novel View Synthesis Results - "Truck" scene with velocity field visualization]*
<!-- LaTeX: \label{fig:sota nvidia-long}, figures/nvidia-sota.pdf -->

<img src="fig8.PNG" alt="Qualitative Comparisons" style="width: 100%; height: auto; margin: 0 auto; display: block;">

*[Figure 6: Qualitative Comparisons - multiple scenes showing improved dynamic reconstruction]*
<!-- LaTeX: \label{app fig:sota nvidia}, figures/new_fig8_nvidia.png -->
<!-- LaTeX: \label{app fig:sota neu3d}, figures/fig8.PNG -->

The velocity field visualizations demonstrate that our method produces physically plausible Gaussian motion, with gradually enlarging Gaussians matching actual object dynamics, while baselines show inconsistent trajectories.

### Ablation Study

<img src="image-7.png" alt="Component Analysis" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Table 3: Component Analysis - effectiveness of velocity rendering, FAD, and flow losses]*
<!-- LaTeX: \label{tab:abl-1} -->

<img src="image-8.png" alt="Window Size Impact" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Table 4: Window Size Impact - sliding window parameter study]*
<!-- LaTeX: \label{tab:abl num adj} -->

Key findings confirm the contribution of each component:
- Velocity field rendering enables direct motion supervision  
- FAD effectively densifies dynamic regions using flow guidance
- Multi-frame temporal windows (τ=8) provide optimal consistency
- Flow-based losses focus optimization on dynamic content vs. photometric losses

<img src="image-5.png" alt="Loss Visualization" style="width: 60%; height: auto; margin: 0 auto; display: block;">

*[Figure 7: Loss Visualization - flow vs photometric loss distribution]*
<!-- LaTeX: \label{fig:compare gradient}, figures/fig6.pdf -->

## Conclusion

We present FlowGaussian-VR, an enhanced velocity field modeling technique for Gaussian video reconstruction. By rendering velocity fields and incorporating flow-based constraints, our method achieves more accurate and temporally consistent dynamic scene reconstruction. The FAD strategy effectively handles challenging dynamic regions, leading to significant improvements in visual quality and motion accuracy.

**Limitations**: The method faces challenges with rapid motion and abrupt object changes. Future work could explore better dynamic Gaussian control and optimization strategies for complex scenarios.
