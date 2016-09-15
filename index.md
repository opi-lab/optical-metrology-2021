---
layout: default
title: Computer Vision
---

# Computer Vision

### Second semester 2016

Andrés Marrugo, PhD
*Universidad Tecnológica de Bolívar*

##  Aims and Scope

This semester course is an introduction to computer vision. It is aimed at graduate students in the Faculty of Engineering. We will focus on the practical and theoretical aspects of techniques in computer vision.

At the end of the lectures, one would be able to:

- Have clear idea of challenges in computer vision due to increasing use in mobile applications.
- Understand many different computer vision algorithms and approaches.
- Implement computer vision algorithms for mid-level vision tasks.
 


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

### Lecture 1: Introduction

We will be discussing the main aspects and motivation for computer vision.

[Lecture 1 slides](https://www.dropbox.com/s/mc5ijbj9onqua67/lec01_intro.pdf?dl=0)

### Lecture 2: Perspective projection

We will be studying the main aspects about perspective projection and the pinhole camera model.

[Lecture 2 slides](https://www.dropbox.com/s/qtbrz67j4jfp2as/lec02_perspective.pdf?dl=0)

#### Reading

- [Forsyth and Ponce 1st chapter](https://www.dropbox.com/s/mfol1581hpd6fwy/Forsyth-Ponce-chapter-01.pdf?dl=0)
- [Camera geometry and parameters](https://www.dropbox.com/s/2olqadczmsoevo7/01-lectura-geometria-camaras.pdf?dl=0)

### Assignment 1

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

### <mark>Assignment 2</mark> 

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
