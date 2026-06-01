---
title: "Boundary-aware Neural Model Reduction for PDEs"

summary: 'We extend shape space neural eigenanalysis to handle Dirichlet, Robin, and mixed boundary conditions beyond natural Neumann settings, enabling a joint shape–boundary space formulation for reduced-order modeling.'
date: 2026-07-19

publication_types: ["article-conference"]
publication_short: "SIGGRAPH 2026 Conference Papers"
publication: '*ACM SIGGRAPH Conference Papers 2026*'
venue: 'ACM SIGGRAPH 2026'
url_pdf: 'https://doi.org/10.1145/3799902.3811153'
doi: '10.1145/3799902.3811153'
abstract: "Eigenanalysis of partial differential operators is essential in reduced-order modeling for physical simulation, providing eigenmode representations in elasticity, acoustics, and transient heat transport. While recent neural, mesh-free, and geometry-agnostic approaches enable differentiable eigenanalysis over continuously parameterized shape spaces, boundary conditions of eigenfunctions are limited to Neumann-type (natural) conditions, hindering their applicability in scenarios where boundary conditions must be precisely controlled or optimized. In this work, we focus on Laplace-type operators and extend shape space neural eigenanalysis to handle boundary conditions beyond natural Neumann settings. Building on the same variational, energy-based formulation, we show that Dirichlet, Robin, and mixed boundary conditions can be incorporated without altering the underlying eigenvalue optimization principle. In our formulation, boundary configurations—including boundary placement and Robin coefficients modeling boundary exchange processes—are treated as first-class parameters rather than fixed constraints. When combined with shape-parameterized domains, this leads to a joint shape–boundary space formulation, allowing eigenfunctions and spectra to be evaluated consistently across variations in both geometry and boundary configuration."

featured: true

authors:
    - "Li Liao*"
    - admin*
    - "Yifan (Evan) Peng*"

author_notes:
    - "Equal contribution"
    - "Equal contribution"
    - "Corresponding author"

math: true

tags:
    - Reduced-order modeling
    - Neural eigenanalysis
    - Boundary conditions
    - Physical simulation
    - SIGGRAPH
---
