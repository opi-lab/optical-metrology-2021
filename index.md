---
layout: default
title: 3D Vision
---

# 3D Vision

### Second semester 2017

Andrés Marrugo, PhD       
*Universidad Tecnológica de Bolívar*

##  Aims and Scope

This course covers the main techniques of 3D data acquisition, both passive (stereoscopic vision and multiple views) and active (active triangulation by structured light). The camera calibration process and the use of the geometric constraints of stereo systems are studied in detail in order to obtain adequate correspondences. Finally, the post-processing stages of three-dimensional vision systems are discussed: the representation of 3D images (e.g. through meshes, depth maps etc.), the extraction of characteristics and the recognition of 3D objects.

In this course the student will obtain proficiency in the fundamentals of stereo vision systems, the calibration of cameras, the geometric restrictions of stereoscopic systems (epipolar line, fundamental matrix, etc.) and carrying out the software implementation in simple applications. In addition, the student will learn the main active techniques of 3D image acquisition (active triangulation by structured light, and the basics of kinect, among others). Finally, different forms of representation of 3D images and their use in problems of computer vision will be presented.

Prior knowledge of this course includes probability, linear algebra, and calculus. Programming experience in MATLAB is desirable, but not required.


<!-- This semester course is an introduction to computer vision. It is aimed at graduate students in the Faculty of Engineering. We will focus on the practical and theoretical aspects of techniques in computer vision. -->

<!-- At the end of the lectures, one would be able to:

- Have clear idea of challenges in computer vision due to increasing use in mobile applications.
- Understand many different computer vision algorithms and approaches.
- Implement computer vision algorithms for mid-level vision tasks. -->


## Useful Resources

### Tutorials, review materials

- [MATLAB tutorial](matlab.intro.html)
- More MATLAB tutorials: [basic operations][bo], [programming][pro], [working with images][wim]
- [Linear algebra review](http://www.cse.ucsd.edu/classes/wi05/cse252a/linear_algebra_review.pdf)
- [Random variables review](http://www.cse.ucsd.edu/classes/wi05/cse252a/random_var_review.pdf)
 
[bo]: matlab_ops_tutorial.m
[pro]:matlab_prog_tutorial.m
[wim]: matlab_image_tutorial.m

### MATLAB reference

- [MATLAB guide from Mathworks](http://www.mathworks.com/access/helpdesk/help/techdoc/matlab.html)
- [MATLAB image processing toolbox](http://www.mathworks.com/access/helpdesk/help/toolbox/images/)
- [Writing fast code](http://www.mathworks.com/matlabcentral/fileexchange/5685)


## Outline

This is a new course, this website will be updated as we go along.

### Lecture 1: Introduction and Linear Algebra Resfresher 

We will be discussing the main aspects and motivation for 3D computer vision. Also a brief overview of the Linear Algebra involved in the course.

- [Lecture 1 slides](https://www.dropbox.com/s/ebnty9s447enxsw/lec01_intro.pptx?dl=0)      
- [Linear Algebra slides](https://www.dropbox.com/s/7c3ntm6ohw6ld9w/cs131_linalg_review.pptx?dl=0)

### Assignment 1

A summary of Linear Algebra and Probability exercises. **Due date:** 2017-08-25.

[Assignment 1]({{site.url}}pdfs/a1.pdf)

### Lecture 2: Sensors and Image Formation

We will be studying the main aspects about image formation, the pinhole camera model and image sensors.

- [Lecture 2 slides](https://www.dropbox.com/s/i689m1hk7iuqdm0/lec02_SensorsAndImageFormation.pptx?dl=0) 
- [Lecture 2  slides - other sensors](https://www.dropbox.com/s/a05dzdgus3febaw/lec02a_OtherSensors.pptx?dl=0)      
- [Lecture 2 slides - examples](https://www.dropbox.com/s/566dawx0cetpkew/lec02_SensorsAndImageFormation-examples.pptx?dl=0)      

#### Reading

- [Forsyth and Ponce 1.1,1.2 ](https://www.dropbox.com/s/mfol1581hpd6fwy/Forsyth-Ponce-chapter-01.pdf?dl=0)
- [Camera geometry and parameters - 11.1, 11.2](https://www.dropbox.com/s/2olqadczmsoevo7/01-lectura-geometria-camaras.pdf?dl=0)


### Assignment 2

Matlab basics and image formation. **Due date:** 2017-09-03.

- [Assignment 2]({{site.url}}pdfs/a2.pdf)
- [**Upload link**](https://www.dropbox.com/request/7eDSQ1WB45O8NQrBEjb0)


### Lecture 3: 2D-2D Coordinate transforms

In this lecture we introduce 2D coordinate transforms.

- [Lecture 3 slides](https://www.dropbox.com/s/2vq3c0jemu94585/lec03-2Dto2DcoordinateTransforms.pdf?dl=0) 

### Lecture 4: 3D-3D Coordinate transforms

In this lecture we introduce 3D coordinate transforms.

- [Lecture 4 slides](https://www.dropbox.com/s/lpdrc7i5y3cpij5/lec04-3Dto3DTransforms.pdf?dl=0) 
- [3D Rotations](https://www.dropbox.com/s/tk73giauh9c4okl/lec04a-3DRotations.pdf?dl=0) 
- [3D Rotations example](https://www.dropbox.com/s/4y9577e2nzae4cx/lec04-3Dto3DTransforms-examples.pdf?dl=0)

#### Code

- [showRotations.m]({{site.url}}code/showRotations.m)
- [showRotations2.m]({{site.url}}code/showRotations2.m)


#### Reading

- [J Craig - chap 2 ](https://www.dropbox.com/s/za66l0wj990qrs4/JCraig-Intro-Robotics-chap2.pdf?dl=0)

### Quiz 

**2017-09-08** Quiz on Coordinate transforms.



### <mark>Assignment 3</mark>

Coordinate transforms. **Due date:** 2017-09-17.

- [Assignment 3]({{site.url}}pdfs/a3.pdf)
- [**Upload link**](https://www.dropbox.com/request/ryJlL1cVCqhZflUinIbD)



### Lecture 5: 3D-2D Coordinate Transforms

In this lecture we recall perspective projection, this time from a matrix multiplication perspective.

- [Lecture 5 slides](https://www.dropbox.com/s/34qxz8z6d3pcqd8/lec05-3Dto2DTransforms.pdf?dl=0)


### Lecture 6: Image Filtering

Linear filters, correlation, convolution kernel, smoothing and edge detection via the gradient.

- [Lecture 6 slides](https://www.dropbox.com/s/wmbab3vjatig7h2/lec06-ImageFiltering.pdf?dl=0)
- [Lecture 6 examples](https://www.dropbox.com/s/mi8jnpxke9xnbud/lec06-ImageFiltering-examples.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 4th chapter](https://www.dropbox.com/s/oojl3uuwlj8mohk/Forsyth-Ponce-chapter-04.pdf?dl=0)

### Lecture 7: Binary Images

Manipulating Binary or logical images.

- [Lecture 7 slides](https://www.dropbox.com/s/g3livg9tu7323ty/lec07-BinaryImages.pdf?dl=0)
- [Fig9.16(a).jpg](https://www.dropbox.com/s/3qji6985mfolo10/Fig9.16%28a%29.jpg?dl=0)
- [Reading matlab movies](https://www.dropbox.com/s/t9u9e9hf2zqlcvl/Matlab_movies.pdf?dl=0)
- [oneCC.mp4](https://www.dropbox.com/s/vjxiz41t0060rcf/oneCC.mp4?dl=0)
- [robot.jpg](https://www.dropbox.com/s/s4fc4vrj2qrtuta/robot.jpg?dl=0)
- [fiveCC.mp4](https://www.dropbox.com/s/go255j6x4io40xx/fiveCC.mp4?dl=0)


### <mark>Assignment 4</mark>

Coordinate transforms. **Due date:** 2017-09-29.

- [Assignment 4]({{site.url}}pdfs/a4.pdf)
- [**Upload link**](https://www.dropbox.com/request/cyTpUDCgpI2qsiJORXOU)

### Guest Lecture: Visual SLAM

Dr Luis Mejías from Queensland University of Technology joins us to discuss about Visual SLAM (Simultaneous Localization and Mapping).

- [Lecture slides](https://www.dropbox.com/s/52048055bovvjvb/vSLAM.pdf?dl=0)
- [Extended Kalman Filter tutorial](https://www.dropbox.com/s/ykech1nnszfgvju/tutorialEKF.pdf?dl=0)
- [SLAM course](https://www.dropbox.com/s/fdmdhmwjnvk77ra/SLAM%20course.pdf?dl=0)
- [Civera et al., Monocular SLAM](https://www.dropbox.com/s/w06zfr8567lkef0/civera_etal_tro2008.pdf?dl=0)
- [Durrant-White et al., SLAM Essentials](https://www.dropbox.com/s/2gnw8joinbalf1g/10.1.1.128.4195.pdf?dl=0)
- [Mono SLAM tracking video](https://www.dropbox.com/s/ln4q4e7fsxkwixh/MonoSLAM_%20Real-Time%20Single%20Camera%20SLAM.mp4?dl=0)
- [Simulators](https://www.dropbox.com/sh/afghfml8edxbrst/AADDava9rijJW9lAeXHOPWXxa?dl=0)

### Lecture 8: 2D Image transforms

2D Image transformations and least squares fitting.

- [Lecture 8 slides](https://www.dropbox.com/s/k1kqjfi10n7f4qg/lec08-2DimageTransforms.pdf?dl=0)
- [wall1.jpg](https://www.dropbox.com/s/bfovlzijhc4a0sv/wall1.jpg?dl=0)
- [wall2.jpg](https://www.dropbox.com/s/ch6n4i8jzssqeae/wall2.jpg?dl=0)
- [book_A.jpg](https://www.dropbox.com/s/hycrdoodgt2ezz6/book_A.jpg?dl=0)
- [book_B.jpg](https://www.dropbox.com/s/sibi0reulitquq3/book_B.jpg?dl=0)

### Lecture 9: Alignment using Nonlinear Least Squares

Alignment using Newton's method.

- [Lecture 9 slides](https://www.dropbox.com/s/kpi7abaan757iny/lec09-AlignmentNonlinear.pdf?dl=0)

### Lecture 10: Pose estimation

- [Lecture 10 slides](https://www.dropbox.com/s/i7gteeq06hnqp1n/lec10-PoseEstimation.pdf?dl=0)
- [img1_rect.tif](https://www.dropbox.com/s/iz69p1a9kqgtjbs/img1_rect.tif?dl=0)
- [img2_rect.tif](https://www.dropbox.com/s/dlok80yopxadu8d/img2_rect.tif?dl=0)
- [img3_rect.tif](https://www.dropbox.com/s/twlw0jm1o64qw2y/img3_rect.tif?dl=0)

#### Reading

- [Szeliski 6.1-6.2 chapter](https://www.dropbox.com/s/u9m34caf30c0f6p/SzeliskiBook_20100903_draft.pdf?dl=0)

### Assignment 5

Correspondence problem. **Due date:** 2017-10-15.

- [robot1.jpg](https://www.dropbox.com/s/avelpa3sq97upz2/robot1.jpg?dl=0)
- [robot2.jpg](https://www.dropbox.com/s/btukc4w78e2qusi/robot2.jpg?dl=0)
- [robot3.jpg](https://www.dropbox.com/s/cdhgzmguodc35mb/robot3.jpg?dl=0)

- [Assignment 5]({{site.url}}pdfs/a5.pdf)
- [**Upload link**](https://www.dropbox.com/request/RurYZ2moQKlDQ7TXzzvg)

### Lecture 11: Corner detection

We now describe how to detect features or salient points from an image.

- [Lecture 11 slides](https://www.dropbox.com/s/jzf33ufob3p01j0/lec11-Corners.pdf?dl=0)
- [Corner examples](https://www.dropbox.com/s/kt3zv9vgiqnkooi/lec11-Corners-examples.pdf?dl=0)
- [test000.jpg](https://www.dropbox.com/s/x8udluvs20fid66/test000.jpg?dl=0)
- [test012.jpg](https://www.dropbox.com/s/be6vk2yq6pn6p7w/test012.jpg?dl=0)

#### Reading

- [Szeliski 4.1 ](https://www.dropbox.com/s/u9m34caf30c0f6p/SzeliskiBook_20100903_draft.pdf?dl=0)

### Lecture 12: SIFT

In this lecture we will discuss Scale-Invariant Keypoints.

- [Lecture 12 slides](https://www.dropbox.com/s/vzu5tglvxa06kox/lec12-SIFT.pdf?dl=0)
- [Lecture 12 - vlfeat slides](https://www.dropbox.com/s/ptqc2rudtploh50/lec12-SIFT-vlfeat.pdf?dl=0)
- [vlfeat link](http://www.vlfeat.org/)
- [grafitti.zip](https://www.dropbox.com/s/l9z3wy2atzu00dg/graffiti.zip?dl=0)


#### Reading

- Read [“Distinctive Image Features from Scale-Invariant Keypoints"](https://www.robots.ox.ac.uk/~vgg/research/affine/det_eval_files/lowe_ijcv2004.pdf) by D. Lowe.

### Lecture 13: Linear Pose Estimation

In this lecture we will discuss the direct estimation of a camera pose using matrix algebra.

- [Lecture 13 slides](https://www.dropbox.com/s/shk02pqfowon4x3/lec13-LinearPoseEstimation.pdf?dl=0)
- [Lecture 13 examples](https://www.dropbox.com/s/83mnp69dcfhxx56/lec13-LinearPoseEstimation-examples.pdf?dl=0)

#### Reading

- [Szeliski 6.2 ](https://www.dropbox.com/s/u9m34caf30c0f6p/SzeliskiBook_20100903_draft.pdf?dl=0)

### Projects

In this course you are required to complete a short project, similar to the assignments, but you are free to choose the approach and the implementation. You will work in teams of two and you will deliver a project report in the IEEE paper format and a 15 minute presentation. 

**The project is due December 15th.**

[Project proposals and guidelines](projects)

### <mark>Assignment 6</mark>

Correspondence problem. **Due date:** 2017-11-05.

- [robot1.jpg](https://www.dropbox.com/s/avelpa3sq97upz2/robot1.jpg?dl=0)
- [robot2.jpg](https://www.dropbox.com/s/btukc4w78e2qusi/robot2.jpg?dl=0)
- [robot3.jpg](https://www.dropbox.com/s/cdhgzmguodc35mb/robot3.jpg?dl=0)

- [Assignment 6]({{site.url}}pdfs/a6.pdf)
- [**Upload link**](https://www.dropbox.com/request/DtiEuucWqwitxD3pzRMd)

### Lecture 14: Stereo

In this lecture we will discuss stereo vision.

- [Lecture 14 slides](https://www.dropbox.com/s/o2t9uenlpl4sa52/lec14-Stereo.pdf?dl=0)
- [pentagonLeft.png](https://www.dropbox.com/s/jhmziwn1l0w5rs4/pentagonLeft.png?dl=0)
- [pentagonRight.png](https://www.dropbox.com/s/dfk72xyav2vnrlj/pentagonRight.png?dl=0)
- [left.png](https://www.dropbox.com/s/ghvdk85ado0gxlq/left.png?dl=0)
- [right.png](https://www.dropbox.com/s/sqbp48p2x5q9wtw/right.png?dl=0)
- [stereo_ball.m](https://www.dropbox.com/s/kiwpp6kiz5umasb/stereo_ball.m?dl=0)
- [Lecture 13 examples](https://www.dropbox.com/s/83mnp69dcfhxx56/lec13-LinearPoseEstimation-examples.pdf?dl=0)


<<<<<<< HEAD
### Final exam

In this final exam

- [Exam]({{site.url}}pdfs/exam-vision-3D.pdf)
- [Upload link](https://www.dropbox.com/request/l62BNcI5xKkIm7svacno)
=======
### Lecture 15: Stereo

In this lecture we will discuss stereo vision.

- [Lecture 15 slides](https://www.dropbox.com/s/4ju0izpd69mcu4i/lec15-EpipolarAndEssential.pdf?dl=0)
- [Lecture 15 examples](lec15-EpipolarAndEssential-examples.pdf)
- [programs and images](https://www.dropbox.com/s/crnm8rwj8qv0kmz/Archive.zip?dl=0)

### Lecture 16: Structure from Motion

In this lecture we will discuss structure from motion.

- [Lecture 16 slides](https://www.dropbox.com/s/viyfbdg4gfx15g9/lec16-StructureFromMotion.pdf?dl=0)

### Lecture 17: Structured Light

In this lecture we will discuss structured light systems.

- [Lecture 17 slides](https://www.dropbox.com/s/8vjlaylblslywlp/lec17-StructuredLight.pdf?dl=0)
>>>>>>> cd075fa477626e08bb4df75d7882b9715b1a1cb3

<!-- #### Reading

- [Szeliski 6.2 ](https://www.dropbox.com/s/u9m34caf30c0f6p/SzeliskiBook_20100903_draft.pdf?dl=0) -->




<!--### Assignment 1

In this assignment you will study the basics of projective geometry. You will study the representations of points lines and planes, as well as transformations. **The assignment is due on 2016-09-02 at 11:00 pm.** The assignment and the data:

- [Assignment 1](computer-vision-assignment1.pdf)
- [Assignment data](assignment1data.zip)

[**Upload link**](https://www.dropbox.com/request/kcbzM88o03DyAlpOLBtb)

#### Supporting material

- [Lecture notes by Magnus Oskarsson](alllectures.pdf)
- [Homogeneous Coordinates and Transformations of the Plane](9781852338015-c1.pdf)
- [Projective Geometry and Transformations in 2D](Hartley-Zisserman-chapter-02.pdf)


### Lecture 3: Cameras

Cameras with lenses and properties. Thin lens formula, depth of field, field of view, and distorsions.

[Lecture 3 slides](https://www.dropbox.com/s/lmbqj877zpi8u7r/lec03_camera.pdf?dl=0)


### Lecture 4: Color

We will discuss the physics of color, human color perception and models of image color.

[Lecture 4 slides](https://www.dropbox.com/s/pr8pvn0pubdmj1j/lec04_color.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 3rd chapter](https://www.dropbox.com/s/ggba6dvj9u1bcw8/Forsyth-Ponce-chapter-03.pdf?dl=0)

### Lecture 5: Linear Filtering

Linear filters, convolution kernel, smoothing and sharpening.

[Lecture 5 slides](https://www.dropbox.com/s/bii2lkpdl3y24rv/lec05_filter.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 4th chapter](https://www.dropbox.com/s/oojl3uuwlj8mohk/Forsyth-Ponce-chapter-04.pdf?dl=0)

### Lecture 6: Frequency representation, pyramids and filter banks.

In this lecture we will discuss the different representation for images and the sampling problems.

[Lecture 6 slides - frequency](https://www.dropbox.com/s/02a64pfpd59m5xi/lec06_frequency.pdf?dl=0)
[Lecture 6 slides - pyramids](https://www.dropbox.com/s/ladbcvtrek4oro7/lec06_pyramids.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 4th chapter](https://www.dropbox.com/s/oojl3uuwlj8mohk/Forsyth-Ponce-chapter-04.pdf?dl=0)

### <a name="QL1_6"></a> <mark>Questions Lectures 1-6</mark>

If you have worked out the lecture questions, please send them to the following [link.](https://www.dropbox.com/request/0giihDfxx7vb1O4rIDYz)

### Assignment 2

The goal of this assignment is to learn to work with images in MATLAB. **The assignment is due on 2016-09-24 at 11:59 pm.** The assignment and the data:

- [Assignment 2](assignment2)

[**Upload link**](https://www.dropbox.com/request/HNjyNE0MMbHMx0qeUMrX)

### Lecture 7: Edge Detection

We will introduce the general approach towards image edge detection.

[Lecture 7 slides](https://www.dropbox.com/s/jzgv403hpwe8uo1/lec06_edge.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 5.1-5.2](https://www.dropbox.com/s/vzkm4sje4uvrpy7/Forsyth-Ponce-chapter-05-1-2.pdf?dl=0)

### Lecture 8: Corner Detection

We will introduce the general approach towards image edge detection.

[Lecture 8 slides](https://www.dropbox.com/s/ibgtdylezx72abz/lec08_corner.pdf?dl=0)
[Harris corner detector](harris.m)

#### Reading

- [Forsyth and Ponce 5.1-5.2](https://www.dropbox.com/s/52hempwwv2gbypn/Forsyth-Ponce-chapter-05-3.pdf?dl=0)

### Lecture 9: SIFT

In this lecture we will discuss Scale-Invariant Keypoints.

[Lecture 9 slides](https://www.dropbox.com/s/v60jegnvetck34u/lec09_sift.pdf?dl=0)

### Assignment 3

The goal of this assignment is to implement a Laplacian blob detector. **The assignment is due on 2016-10-22 at 11:59 pm.** The assignment and the data:

- [Assignment 3](assignment3)

[**Upload link**](https://www.dropbox.com/request/0fDrePHzilihx3YHBBP8)

### Lecture 10: Optical Flow

We will introduce motion estimation in computer vision.

[Lecture 10 slides](https://www.dropbox.com/s/6db7s4etomd0p21/lec10_optical_flow.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 11.1](https://www.dropbox.com/s/1kmiy3gtli1i5xl/Forsyth-Ponce-chapter-11-1.pdf?dl=0)

### Lecture 11: Fitting

In this lecture we will discuss the main aspects of fitting data to a parametric model, especially under the assumption of noisy data.

[Lecture 11 slides](https://www.dropbox.com/s/dqx065cez99pim2/lec11_fitting.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 10.2](https://www.dropbox.com/s/3ld7ayedcj4u2bz/Forsyth-Ponce-chapter-10.pdf?dl=0)
- [Forsyth and Ponce 22.1](https://www.dropbox.com/s/ufecs7h22109r1m/Forsyth-Ponce-chapter-22-1.pdf?dl=0)

### Lecture 12: Hough Transform

We continue on the topic of fitting, this time via the Hough Transform.

[Lecture 12 slides](https://www.dropbox.com/s/ts2azv8nxcdi9lt/lec12_hough.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 10.1](https://www.dropbox.com/s/3ld7ayedcj4u2bz/Forsyth-Ponce-chapter-10.pdf?dl=0)

### Lecture 13: Alignment

Registration or alignment is the problem of finding a transformation that takes one dataset to another.

[Lecture 13 slides](https://www.dropbox.com/s/4u45v4jwiqztxzy/lec13_alignment.pptx?dl=0)

#### Reading

- [Forsyth and Ponce 12.1](https://www.dropbox.com/s/jkpze7ixos6jlpk/Forsyth-Ponce-chapter-12-1.pdf?dl=0)

### In class assignment 4

The goal of this assignment is to implement a naive RANSAC line fiting.
**The assignment is due on 2016-10-16 at 11:00 pm.**
The code:

- [Assignment](https://www.dropbox.com/sh/mxy8wde75c95s2q/AAAb8WnqKnrJCxA69gtCBWKwa?dl=0)

[**Upload link**](https://www.dropbox.com/request/NUR1i2bZ4CEW9G5a4hR3)

### Lecture 14: Calibration

Calibrating a single camera.

[Lecture 14 slides](https://www.dropbox.com/s/lj8md9yf7gzo4eh/lec14_calibration.pptx?dl=0)

#### Reading

- [Forsyth and Ponce 1st chapter](https://www.dropbox.com/s/mfol1581hpd6fwy/Forsyth-Ponce-chapter-01.pdf?dl=0)
- [Camera geometry and parameters](https://www.dropbox.com/s/2olqadczmsoevo7/01-lectura-geometria-camaras.pdf?dl=0)

### Lecture 15: Single-view Modeling

Measuring objects from a single image.

[Lecture 15 slides](https://www.dropbox.com/s/vwallrq77g7ilwk/lec15_single_view.pptx?dl=0)

#### Reading

- [Ch. 2 from Hoiem and Savarese book](https://www.dropbox.com/s/k00o70g24ucsu2k/3dscene_book_svg.pdf?dl=0)

### Lecture 16: Epipolar Geometry

Two or more cameras.

[Lecture 16 slides](https://www.dropbox.com/s/mxjj19geha1r3lu/lec16_epipolar.pptx?dl=0)

#### Reading

- [Forsyth and Ponce section 7.1](https://www.dropbox.com/s/52w4q1s7ysbg92n/Forsyth-Ponce-chapter-07-1-2.pdf?dl=0)


### <mark>Assignment 5</mark>

The goal of this assignment is to implement robust homography and fundamental matrix estimation to register pairs of images separated either by a 2D or 3D projective transformation. **The assignment is due on 2016-12-02 at 12:00 m.** The assignment and the data:

- [Assignment 5](assignment5)

[**Upload link**](https://www.dropbox.com/request/xC2aLa2w7hCGML1wKSqm)

#### Supporting material

- [Homography estimation](https://www.dropbox.com/s/eqdbgotv1n82yz1/ex1.pdf?dl=0)
- [Hartley and Zisserman - chapter 4](https://www.dropbox.com/s/ujqmwe6u8vrndr2/Richard%20Hartley%20Andrew%20Zisserman-Multiple%20View%20Geometry%20in%20Computer%20Vision%2C%202nd%20Edition%20%282004%29.pdf?dl=0)
 -->
