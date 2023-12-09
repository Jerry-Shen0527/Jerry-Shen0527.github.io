---
title: 'A Real-time Fluid Simulation Engine Using Ray Tracing Cores'
date: 2023-10-01
collection: projects
permalink: /projects/2023/11/RTFluidSimu
excerpt: We use ray tracing cores to perform nearby particles detection and implement local particle based simulation methods based on that.
tags:
  - Simulation
  - GPU Programming
---

# Introduction
We use ray tracing cores to perform nearby particles detection and implement local particle based simulation methods based on that.


<iframe width="1280" height="720" src="https://www.youtube.com/embed/Hh5w_c4vkCw" title="Fluid simulation aided by raytracing cores" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


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