---
layout: page
title: Assignment 5
permalink: /assignment5/
---
<style>
div.container {
  display:inline-block;
}
</style>

## Computer Vision - 2P2016

## Assignment 5: Homography and fundamental matrix estimation

### Due date: November 19, 11:59 PM


The goal of this assignment is to implement robust homography and fundamental matrix estimation to register pairs of images separated either by a 2D or 3D projective transformation. Adapted from [S. Lazebni][lazebni].

[lazebni]: [lazebni]: http://web.engr.illinois.edu/~slazebni/spring11/assignment4.html


### Contents

- Part 1: Stitching pairs of images
- Part 1 extra credit
- Part 2: Fundamental matrix estimation
- Grading checklist and submission instructions

## Part 1: Stitching pairs of images

The first step is to write code to stitch together a single pair of images. For this part, you will be working with the following pair (click on the images to download the high-resolution versions):


<div class="container">
<a href="https://dl.dropboxusercontent.com/u/5279729/tutorial/uttower_left.jpg"><img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/uttower_left.jpg" alt="" width="256" height="" border="0" /></a>
  </div>
<div class="container">
<a href="https://dl.dropboxusercontent.com/u/5279729/tutorial/uttower_right.jpg"><img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/uttower_right.jpg" alt="" width="256" height="" border="0" /></a>
  </div>

1. Load both images, convert to double and to grayscale.

1. Detect feature points in both images. You can use [the corner detector code we have discussed earlier][harris] or the blob detector you have developed as part of Assignment 3.

3. Extract local neighborhoods around every keypoint in both images, and form descriptors simply by "flattening" the pixel values in each neighborhood to one-dimensional vectors. Experiment with different neighborhood sizes to see which one works the best. If you're using your Laplacian detector, use the detected feature scales to define the neighborhood scales.

4. Compute distances between every descriptor in one image and every descriptor in the other image. You can use [this code][dist2] for fast computation of Euclidean distance. Alternatively, experiment with computing normalized correlation, or Euclidean distance after normalizing all descriptors to have zero mean and unit standard deviation. Optionally, feel free to experiment with SIFT descriptors. [Here is some basic code][sift] for computing SIFT descriptors of circular regions, such as the ones returned by the detector from Assignment 3. 

5. Select putative matches based on the matrix of pairwise descriptor distances obtained above. You can select all pairs whose descriptor distances are below a specified threshold, or select the top few hundred descriptor pairs with the smallest pairwise distances.

6. Run RANSAC to estimate a homography mapping one image onto the other. Report the number of inliers and the average residual for the inliers (squared distance between the point coordinates in one image and the transformed coordinates of the matching point in the other image). Also, display the locations of inlier matches in both images.

7. Warp one image onto the other using the estimated transformation. To do this, you will need to learn about `maketform` and `imtransform` functions.

8. Create a new image big enough to hold the panorama and composite the two images into it. You can composite by simply averaging the pixel values where the two images overlap. Your result should look something like this (but hopefully with a more precise alignment):

![](https://dl.dropboxusercontent.com/u/5279729/tutorial/sample_panorama.jpg)

You should create color panoramas by applying the same compositing step to each of the color channels separately (for estimating the transformation, it is sufficient to use grayscale images).

[harris]: http://opilab.unitecnologica.edu.co/computer-vision/harris.m
[dist2]: https://www.dropbox.com/s/i9unih5x8e495yc/dist2.m?dl=0
[sift]: https://www.dropbox.com/s/3fgni0y8iorif3c/find_sift.m?dl=0

## Tips and Details

- For RANSAC, a very simple implementation like the one in assignment 4 is sufficient. Use four matches to initialize the homography in each iteration. You should output a single transformation that gets the most inliers in the course of all the iterations. For the various RANSAC parameters (number of iterations, inlier threshold), play around with a few "reasonable" values and pick the ones that work best. Refer to [this lecture][ransac] for details on RANSAC. For randomly sampling matches, you can use the randperm or randsample functions.

- For details of homography fitting, you should review [this lecture][alignment].

- In MATLAB, the solution to a nonhomogeneous linear least squares system `AX=B` is given by `X = A\B`;

- Homography fitting calls for homogeneous least squares. The solution to the homogeneous least squares system `AX=0` is obtained from the SVD of A by the singular vector corresponding to the smallest singular value:
`[U,S,V]=svd(A); X = V(:,end)`;

[ransac]: https://www.dropbox.com/s/dqx065cez99pim2/lec11_fitting.pdf?dl=0
[alignment]: https://www.dropbox.com/s/4u45v4jwiqztxzy/lec13_alignment.pptx?dl=0

## For extra credit

Extend your homography estimation to work on multiple images. You can use [this data][data_part1], consisting of three sequences consisting of three images each. For the "pier" sequence, sample output can look as follows (although yours may be different if you choose a different order of transformations):

![Source of data and results: Arun Mallya](https://dl.dropboxusercontent.com/u/5279729/tutorial/pier_homography_final_output.jpg)

Alternatively, feel free to acquire your own images and stitch them.

- Experiment with registering very "difficult" image pairs or sequences -- for instance, try to find a modern and a historical view of the same location to mimic the kinds of composites found [here][composites]. Or try to find two views of the same location taken at different times of day, different times of year, etc. Another idea is to try to register images with a lot of repetition, or images separated by an extreme transformation (large rotation, scaling, etc.). To make stitching work for such challenging situations, you may need to experiment with alternative feature detectors and/or descriptors, as well as feature space outlier rejection techniques such as Lowe's ratio test.

- Try to implement a more complete version of a system for ["Recognizing panoramas"][pano] -- i.e., a system that can take as input a "pile" of input images (including possible outliers), figure out the subsets that should be stitched together, and then stitch them together. As data for this, either use images you take yourself or combine all the provided input images into one folder (plus, feel free to add outlier images that do not match any of the provided ones).

- Implement bundle adjustment or global nonlinear optimization to simultaneously refine transformation parameters between all pairs of images.

- Learn about and experiment with image blending techniques and panorama mapping techniques (cylindrical or spherical).



[data_part1]: https://www.dropbox.com/s/accazgb7jum29pn/assignment5_data.zip?dl=0
[composites]: http://blog.flickr.net/en/2010/01/27/a-look-into-the-past/
[pano]: http://www.cs.bath.ac.uk/brown/autostitch/autostitch.html

## Part 2: Fundamental Matrix Estimation and Triangulation

You will be using these two image pairs:

<div class="container">
	<img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/house1_thumb.jpg" alt="" width="" height="" border="0" />
</div>
  
<div class="container">
	<img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/house2_thumb.jpg" alt="" width="" height="" border="0" />
</div>
  
<div class="container">
	<img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/library1_thumb.jpg" alt="" width="" height="" border="0" />
</div>
  
<div class="container">
	<img src="https://dl.dropboxusercontent.com/u/5279729/tutorial/library2_thumb.jpg" alt="" width="" height="" border="0" />
</div>


[Download][down] full size images, matching points, camera matrices, and sample code.

1. Load the image pair and matching points file into MATLAB (see sample code in the data file). 

2. Fit a **fundamental matrix** to the matching points. Use the sample code provided to visualize the results. Implement both the **normalized** and the **unnormalized** algorithms (see [this lecture][epipolar] for the methods). In each case, report your residual, or the mean squared distance in pixels between points in both images and the corresponding epipolar lines.

3. Now use your putative match generation and RANSAC code from Part 1 to estimate fundamental matrices *without ground-truth matches*. For this part, only use the normalized algorithm. Report the number of inliers and the average residual for the inliers. In your report, compare the quality of the result with the one you get from ground-truth matches. 

4. Load the camera matrices for the two images (they are stored as 3x4 matrices and can be loaded with the load command, i.e., `P1 = load('house1_camera.txt');` Find the centers of the two cameras. Use linear least squares to **triangulate** the position of each matching pair of points given the two cameras (see [this lecture][calibration] for the method). Display the two camera centers and reconstructed points in 3D. Also report the residuals between the observed 2D points and the projected 3D points in the two images.

Note: you do not need the camera centers to solve the triangulation problem. They are used just for the visualization.

Note 2: it is sufficient to only use the provided ground-truth matches for this part. But if you wish, feel free to also generate and compare results with the inlier matches you have found in #3 above.

## Tips and Details

For fundamental matrix estimation, don't forget to enforce the rank-2 constraint. This can be done by taking the SVD of F, setting the smallest singular value to zero, and recomputing F.

[Lecture 16][epipolar] shows two slightly different linear least squares setups for estimating the fundamental matrix (one involves a homogeneous system and one involves a non-homogeneous system). You may want to compare the two and determine which one is better in terms of numerics.

Recall that the camera centers are given by the null spaces of the matrices. They can be found by taking the SVD of the camera matrix and taking the last column of V.

For triangulation with linear least squares, it is not necessary to use data normalization (in my implementation, normalization made very little difference for this part).

Plotting in 3D can be done using the `plot3` command. Use the `axis equal` option to avoid automatic nonuniform scaling of the 3D space. To show the structure clearly, you may want to include snapshots from several viewpoints. Animated GIF's work really well.

[down]: https://www.dropbox.com/s/74so9fzcq8j5x1n/assignment5_part2_data.zip?dl=0
[epipolar]: https://www.dropbox.com/s/mxjj19geha1r3lu/lec16_epipolar.pptx?dl=0
[calibration]: https://www.dropbox.com/s/lj8md9yf7gzo4eh/lec14_calibration.pptx?dl=0

## Grading checklist

1. Homography estimation:   
	1. Describe your solution, including any interesting parameters or implementation choices for feature extraction, putative matching, RANSAC, etc.    
	2. For the uttower pair provided, report the number of homography inliers and the average residual for the inliers (squared distance between the point coordinates in one image and the transformed coordinates of the matching point in the other image). Also, display the locations of inlier matches in both images.
	3. Display the final result of your stitching.
2. Fundamental matrix estimation:
	1. For both image pairs, for both unnormalized and normalized estimation using ground truth matches, display your result and report your residual.
	2. For both image pairs, for normalized estimation without ground truth matches, display your result and report your number of inliers and residual for inliers.
	3. For both image pairs, visualize 3D camera centers and triangulated 3D points.
