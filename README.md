# Hybrid Image Project

## Overview

This project involves creating hybrid images by combining two images using low-pass and high-pass filters. A hybrid image is a single image that changes in appearance depending on the viewing distance. From close up, the high-frequency components dominate, while from far away, the low-frequency components are more prominent.

## Project Structure

- create_hybrid_image.m: MATLAB function to generate a hybrid image from two input images.
- main.m: Script to call the create_hybrid_image function with specified input images.
- README.md: This file, providing an overview and instructions for the project.

## Getting Started

### Prerequisites

Ensure you have MATLAB installed on your system.

### Usage

1. Place your input images in the same directory as the MATLAB files.
2. Update the main.m script with the paths to your input images.
3. Run the main.m script in MATLAB.

### Example

% main.m
create_hybrid_image('path_to_imageA.jpg', 'path_to_imageB.jpg');

## Results

### Image A
![image1](https://github.com/ArianCSN/Hybrid_Image/assets/146763196/1c1ed8a2-40f6-4fb4-8299-afd40274f8c6)

### Image B
![image2](https://github.com/ArianCSN/Hybrid_Image/assets/146763196/e2a7bbbf-4b57-4c0b-af44-9a22187da93d)

### Hybrid Image
![hybrid_image](https://github.com/ArianCSN/Hybrid_Image/assets/146763196/93c989c3-7de7-4663-a349-2016d37372f5)

## Conclusion
This project demonstrates the creation of hybrid images by combining low and high-frequency components of two images. The resulting hybrid image changes in appearance based on the viewing distance, showcasing an interesting aspect of human visual perception.

Feel free to modify the parameters and input images to see how different settings affect the resulting hybrid image.
