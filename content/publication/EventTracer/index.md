---
title: "EventTracer: Fast Path Tracing-based Event Stream Rendering"

summary: 'We propose EventTracer, a path tracing-based rendering pipeline that simulates high-fidelity event sequences from complex 3D scenes in an efficient and physics-aware manner.'
date: 2025-08-25

publication_types: ["article-journal"]
publication_short: "arXiv preprint"
publication: "arXiv preprint arXiv:2508.18071"
url_pdf: 'https://arxiv.org/abs/2508.18071'
doi: '10.48550/arXiv.2508.18071'
abstract: "Simulating event streams from 3D scenes has become a common practice in event-based vision research, as it meets the demand for large-scale, high temporal frequency data without setting up expensive hardware devices or undertaking extensive data collections. Yet existing methods in this direction typically work with noiseless RGB frames that are costly to render, and therefore they can only achieve a temporal resolution equivalent to 100-300 FPS, far lower than that of real-world event data. In this work, we propose EventTracer, a path tracing-based rendering pipeline that simulates high-fidelity event sequences from complex 3D scenes in an efficient and physics-aware manner. Specifically, we speed up the rendering process via low sample-per-pixel (SPP) path tracing, and train a lightweight event spiking network to denoise the resulting RGB videos into realistic event sequences. To capture the physical properties of event streams, the network is equipped with a bipolar leaky integrate-and-fired (BiLIF) spiking unit and trained with a bidirectional earth mover distance (EMD) loss. Our EventTracer pipeline runs at a speed of about 4 minutes per second of 720p video, and it inherits the merit of accurate spatiotemporal modeling from its path tracing backbone."

featured: false

authors:
    - "Zhenyang Li*"
    - "Xiaoyang Bai*"
    - "Jinfan Lu"
    - admin
    - "Edmund Y. Lam"
    - "Yifan (Evan) Peng†"

tags:
    - Event simulation
    - Path tracing
    - Spiking neural network
---
