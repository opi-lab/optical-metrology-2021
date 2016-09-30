---
layout: page
title: Assignment 3
permalink: /assignment3/
---

## Computer Vision - 2P2016

## Assignment 3: Scale-space blob detection

### Due date: October 15, 11:59 PM

![](https://dl.dropboxusercontent.com/u/5279729/tutorial/butterfly.jpg)
![](https://dl.dropboxusercontent.com/u/5279729/tutorial/blobs_butterfly.gif)

The goal of the assignment is to implement a Laplacian blob detector as discussed in [this lecture.][lecture] Adapted from [S. Lazebni][lazebni].

[lecture]: https://www.dropbox.com/s/v60jegnvetck34u/lec09_sift.pdf?dl=0
[lazebni]: http://web.engr.illinois.edu/~slazebni/spring11/assignment3.html

## Algorithm outline

1. Generate a Laplacian of Gaussian filter.
2. Build a Laplacian scale space, starting with some initial scale and going for n iterations:
	1. Filter image with scale-normalized Laplacian at current scale.
	2. Save square of Laplacian response for current level of scale space.
	3. Increase scale by a factor k.
3. Perform nonmaximum suppression in scale space.
4. Display resulting circles at their characteristic scales.

## Test images

Here are [four images][link-four-in] to test your code, and [sample output images][link-four-out] for your reference. Keep in mind, though, that your output may look different depending on your threshold, range of scales, and other implementation details. **In addition to the images provided, also run your code on at least four images of your own choosing.**

[link-four-in]: https://www.dropbox.com/s/79hin0kg6r6cu6n/assignment3_images.zip?dl=0
[link-four-out]: https://www.dropbox.com/s/id2h2blkumfp84x/assignment3_sample_output.zip?dl=0

## Detailed instructions

- Don't forget to convert images to grayscale (``rgb2gray`` command) and double (``im2double``).

- For creating the Laplacian filter, use the `fspecial` function (check the options). Pay careful attention to setting the right filter mask size. **Hint:** Should the filter width be odd or even? 

- It is relatively inefficient to repeatedly filter the image with a kernel of increasing size. Instead of increasing the kernel size by a factor of k, you should downsample the image by a factor 1/k. In that case, you will have to upsample the result or do some interpolation in order to find maxima in scale space. **For full credit, you should turn in both implementations: one that increases filter size, and one that downsamples the image.** In your report, list the running times for both versions of the algorithm and discuss differences (if any) in the detector output. For timing, use `tic` and `toc` commands.

	**Hint 1:** think about whether you still need scale normalization when you downsample the image instead of increasing the scale of the filter.
	
	**Hint 2:** For the efficient implementation, pay attention to the interpolation method you're using to upsample the filtered images (see the options of the `imresize` function). What kind of interpolation works best?
	
- You have to choose the initial scale, the factor k by which the scale is multiplied each time, and the number of levels in the scale space. I typically set the initial scale to 2, and use 10 to 15 levels in the scale pyramid. The multiplication factor should depend on the largest scale at which you want regions to be detected.

- You may want to use a three-dimensional array to represent your scale space. It would be declared as follows:

		scale_space = zeros(h,w,n); % [h,w] - dimensions of image, n - number of levels in scale space
- To perform nonmaximum suppression in scale space, you should first do nonmaximum suppression in each 2D slice separately. For this, you may find functions `nlfilter`, `colfilt` or `ordfilt2` useful. Play around with these functions, and try to find the one that works the fastest. To extract the final nonzero values (corresponding to detected regions), you may want to use the find function.

- You also have to set a threshold on the squared Laplacian response above which to report region detections. You should play around with different values and choose one you like best.

- To display the detected regions as circles, you can use [this function][show-circles] (or feel free to search for a suitable MATLAB function or write your own). Hint: Don't forget that there is a multiplication factor that relates the scale at which a region is detected to the radius of the circle that most closely "approximates" the region.

[show-circles]: ../show_all_circles.m

## Helpful resources

- [Sample Harris detector code.](harris.m)
- [Blob detection][blob] on Wikipedia.
- D. Lowe, ["Distinctive image features from scale-invariant keypoints,"][lowe] International Journal of Computer Vision, 60 (2), pp. 91-110, 2004. This paper contains details about efficient implementation of a Difference-of-Gaussians scale space.
- T. Lindeberg, ["Feature detection with automatic scale selection,"][lindberg] International Journal of Computer Vision 30 (2), pp. 77-116, 1998. This is advanced reading for those of you who are really interested in the gory mathematical details.

[blob]:https://en.wikipedia.org/wiki/Blob_detection "Blob detection - Wikipedia, the free encyclopedia"
[lowe]:http://www.cs.ubc.ca/~lowe/papers/ijcv04.pdf
[lindberg]:ftp://ftp.nada.kth.se/CVAP/reports/cvap198.pdf

## Grading checklist

As before, you must turn in both your report and your code. Your report will be graded based on the following items:

- The output of your circle detector on all the images (four provided and four of your own choice), together with running times for both the "efficient" and the "inefficient" implementation.
- An explanation of any "interesting" implementation choices that you made.
- An explanation of parameter values you have tried and which ones you found to be optimal.
- Discussion and results of any extensions or bonus features you have implemented.

## Instructions for Submitting the Assignment

Your submission should consist of the following:

- All your MATLAB code and output images in a single zip file. The filename should be **lastname_firstname_a3.zip**.
- A brief report in a single PDF file with all your results and discussion. The filename should be **lastname_firstname_a3.pdf**.
