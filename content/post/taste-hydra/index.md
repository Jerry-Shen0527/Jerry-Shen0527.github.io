---
title: A taste of Hydra
date: '2024-02-19'
# subtitle: 

# Summary for listings and search engines
summary: For developing the rendering framework for the USTC CG Course 2024, I tried the Hydra framework.
---
## Hd : The Hydra Framework

Hydra is a framework that enables the communication between multiple scene graphs and multiple renderers.

[https://openusd.org/release/api/hd_page_front.html](https://openusd.org/release/api/hd_page_front.html)


## Basic call graph

Hydra provides interfaces as RenderDelegates.

This is the description of the official hdEmbree example.

![alt text](Hydra.png)

The render buffer class holds the information of convergence and the RenderPass on the main thread keeps asking whether it has converged, while there is a seperate renderthread doing the hardwork.