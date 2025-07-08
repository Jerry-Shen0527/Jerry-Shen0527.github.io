---
title: "Bidirectional Plateau-Border Scattering Distribution Function for Realistic and Efficient Foam Rendering"
collection: publications
permalink: /publication/BPSDF
summary: 'We introduce the Plateau border structure into liquid foam rendering at the geometric level and propose a bidirectional Plateau-border scattering distribution function (BPSDF) to aggregate the scattering within a Plateau border and shorten the path length.'
abstract: 'Liquid foams are a common phenomenon in our daily life. In computer graphics, rendering realistic foams remains challenging due to their complex geometry and light interactions within the foam. While the structure of the liquid foams has been well studied in the field of physics, it is rarely leveraged for rendering, even though it is essential for achieving realistic appearances. In physics, the intersection of two bubbles creates a liquid-carrying channel known as the Plateau border (PB). In this paper, we introduce the Plateau border into liquid foam rendering by explicitly modeling it at the geometric level. Although modeling of PBs enhances visual realism with path tracing, it suffers from extensive rendering costs due to multiple scattering effects within the medium contained in the PB. To tackle this, we propose a novel scattering function that models the aggregation of scattering within the medium surrounded by a Plateau border, termed the bidirectional Plateau-border scattering distribution function (BPSDF). Since no analytical formulation can be derived for the BPSDF, we propose a neural representation, together with importance sampling and probability distribution functions, to enable Monte Carlo-based rendering. By integrating our BPSDF into path tracing, our method achieves both realistic and efficient rendering of liquid foams, producing images with high fidelity.'
date: 2025-06-27
publication: '*Proceedings of EGSR 2025*'
publication_short: '*EGSR 2025*'
url_pdf: 'https://wangningbei.github.io/2025/BPSDF_files/paper_bpsdf_compressed.pdf'

image:
  caption: "We introduce the Plateau border structure into liquid foam rendering at the geometric level. We then propose a bidirectional Plateau-border scattering distribution function (BPSDF) to aggregate the scattering within a Plateau border and shorten the path length. By designing a neural representation of the BPSDF, our model can render liquid foams both realistically and efficiently."
  focal_point: ""
  preview_only: false

authors:
    - Ruizeng Li
    - Xinyang Liu
    - Runze Wang
    - admin
    - Ligang Liu
    - Beibei Wang

---
