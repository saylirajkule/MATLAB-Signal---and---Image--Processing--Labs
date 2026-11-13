# MATLAB-Signal---and---Image--Processing--Labs
MATLAB implementations of 2D image noise modeling, spatial filtering, linear algebra orthogonalization, and communication signal analysis.
# MATLAB Signal & Image Processing Labs

## Overview
A collection of MATLAB scripts and simulations focused on digital image processing, linear algebra algorithms, and communication signal analysis. Developed to verify theoretical mathematical models through numerical simulation and visual diagnostics.

## Modules & Implemented Algorithms

### 1. 2D Image Noise Modeling & Spatial Filtering
* **Synthetic Grid Generation:** Constructed clean 2D binary chessboard test patterns to serve as high-contrast reference signals.
* **Noise Injection:** Modeled real-world sensor degradation by applying **Salt-and-Pepper (impulse)** and **Additive White Gaussian Noise (AWGN)** at varying variance levels.
* **Denoising & Evaluation:** Implemented spatial filtering techniques (median and mean filters) to restore edge sharpness and suppress high-frequency noise artifacts.

### 2. Communication Systems & Signal Analysis
* **Harmonic & Frequency Analysis:** Analyzed multi-tone signals, trigonometric identities (e.g., $\cos(2\omega t)$ harmonic components), and spectral behavior.
* **Modulation & Channel Simulation:** Simulated basic analog/digital modulation schemes and evaluated signal-to-noise degradation across channels.

### 3. Numerical Linear Algebra
* **Gram-Schmidt Orthogonalization:** Implemented vector projection algorithms to convert linearly independent vector sets into orthonormal bases for signal space representation.

## Tools & Environment
* **Software:** MATLAB / GNU Octave
* **Key Toolboxes:** Image Processing Toolbox, Signal Processing Toolbox

## How to Run
1. Clone or download this repository to your local machine.
2. Open MATLAB and navigate to the specific experiment folder.
3. Run any `.m` script directly from the Command Window or Editor to view the generated plots and visual comparisons.
