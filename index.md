---
layout: default
title: Optical Metrology
---

# Optical Metrology

### Second semester 2021

Andrés Marrugo, PhD       
*Universidad Tecnológica de Bolívar*

##  Aims and Scope

This semester course is an introduction to optical metrology. It is aimed at graduate students in the Faculty of Engineering. We will focus on the practical and theoretical aspects of techniques in optical metrology.

At the end of the lectures, one would be able to:

- Have clear idea of challenges in metrology due to increasing trend towards miniaturisation.
- Understand many different metrological devices and principles and applicability of those devices.
- Understand the process and provide metrological solution for the improvement of a process.

<!-- Prior knowledge of this course includes probability, linear algebra, and calculus. Programming experience in MATLAB is desirable, but not required. -->


<!-- This semester course is an introduction to computer vision. It is aimed at graduate students in the Faculty of Engineering. We will focus on the practical and theoretical aspects of techniques in computer vision. -->

<!-- At the end of the lectures, one would be able to:

- Have clear idea of challenges in computer vision due to increasing use in mobile applications.
- Understand many different computer vision algorithms and approaches.
- Implement computer vision algorithms for mid-level vision tasks. -->


## Useful Resources
 
We will be using Jupyter Python notebooks as a numerical computing and graphical platform for solving many problems in the course. To avoid installing Jupyter Python locally, I encourage you to use Google Colab. 

- [Python Tutorial](https://colab.research.google.com/github/cs231n/cs231n.github.io/blob/master/python-colab.ipynb)
- [Introduction to colab](https://colab.research.google.com/notebooks/welcome.ipynb)

### Tutorials, review materials

- [Linear algebra review](http://www.cse.ucsd.edu/classes/wi05/cse252a/linear_algebra_review.pdf)
- [Random variables review](http://www.cse.ucsd.edu/classes/wi05/cse252a/random_var_review.pdf)
- [Linear algebra with Numpy](https://github.com/agmarrugo/computer-vision-utb/blob/main/notebooks/00_Linear_algebra_with_Numpy.ipynb)
- [Manipulating images in Python/OpenCV](https://github.com/agmarrugo/computer-vision-utb/blob/main/notebooks/01_Image_Processing_in_Python_Final.ipynb)
- [Data analysis with Pandas](https://github.com/drvinceknight/Python-Mathematics-Handbook/blob/master/03-Data-analysis-with-Pandas.ipynb)
- [Visualisation with matplotlib](https://github.com/drvinceknight/Python-Mathematics-Handbook/blob/master/04-Visualisation-with-matplotlib.ipynb)



## Outline

This website will be updated as we go along.

### Lecture 1: Introduction

We will be discussing the main aspects about metrology and why it is so important in manufacturing. 

[Lecture 1 slides]({{site.url}}lectures/Lecture_01.pdf)

#### Additional Reading

- [Optical metrology overview]({{site.url}}pdfs/01-optical-metrology-overview.pdf)
- [SI redefinition](https://www.nist.gov/si-redefinition)


### Lecture 2: Random Data and Characterization of Measurement Systems

In this lecture we will be discussing about random data, their properties and measurement systems. We will also discuss static and dynamic characterization of measurement systems.

[Lecture 2 slides]({{site.url}}lectures/Lecture_02.pdf)

#### Recommended Readings

- [J Bendat and A Piersol - Random Data - Chapter 1]({{site.url}}pdfs/02-Bendat-Piersol-chapter-01.pdf)
- [Bajorski- Fundamentals of Statistics]({{site.url}}pdfs/02-fundamentals-of-statistics.pdf)
- [A student's guide to Data and Error Analysis - Chapter 5 and 7]({{site.url}}pdfs/guide-to-data-and-error-analysis.pdf)
- [A Beginner's Guide to Uncertainty of Measurement]({{site.url}}pdfs/mgpg11.pdf)
- [Linear regression]({{site.url}}https://en.wikipedia.org/wiki/Regression_analysis#Linear_regression "Regression analysis - Wikipedia, the free encyclopedia")

### Lecture 2: Cont'd

In this lecture we focus on practical aspects and calculations of characterization of measurement systems, calibration and uncertainty via confidence interval estimation.

For the calculations we will be using Python via Jupyter notebooks. You can [download the Anaconda](https://www.continuum.io/downloads) distribution that contains Python and many more scientific packages or use [Google Colab](http://colab.research.google.com/).

The notebooks for this lecture:

- [Illustration of Confidence Intervals.](http://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/confidence_intervals.ipynb)
- [Calibration.](http://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/calibracion.ipynb)


Exercise:

- [Fitting data.](https://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/fitting.ipynb)
<!-- - [Fitting data.](https://github.com/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/fitting.ipynb) -->


#### Recommended Readings

- [A Statistical Overview on Univariate Calibration, Inverse Regression, and Detection Limits]({{site.url}}pdfs/Mass_Spectrom._Rev._Lavagnini_2006.pdf)
- [Notes on device calibration]({{site.url}}pdfs/03-NoteDeviceCalibration.pdf)
- [J Bendat and A Piersol - Statistical Principles  - Chapter 4]({{site.url}}pdfs/04-Bendat-Piersol-chapter-04.pdf)


### Assignment 1

Data characterization and fitting. Solve the exercises in the [Illustration of confidence intervals notebook](http://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/confidence_intervals.ipynb) and the [fitting data notebook](https://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/fitting.ipynb). Submit a ZIP file (firstname-lastname.zip) with the two notebooks in .ipynb format through the upload link. **Due date:** 2021-08-27.

- [Upload link](https://www.dropbox.com/request/3w5dgJDTkPP725CBmgOE)

### Lecture 3: Basic Optical Principles and Imaging Systems

In this lecture we will discuss the Basic Optical Principles and Imaging Systems.

- [Lecture 3 slides]({{site.url}}lectures/Lecture_03.pdf)    
- [Lecture 3 examples]({{site.url}}lectures/Lecture_03-examples.pdf)

#### Recommended Readings

- [Gasvik - Optical Metrology - Chapters 1 and 2]({{site.url}}pdfs/gasvik-01-02.pdf)
- [Giancoli - Optical Instruments]({{site.url}}pdfs/giancoli-ch-25-optical-instruments.pdf)


### Lecture 4: Methods in Surface Metrology
In this lecture we introduce several basic concepts about surface measurements and characterization. The quantification of roughness and the different roughness scores. How roughness is related to the manufacturing process.

Please read the *Robust 3D surface recovery paper* below.

[Lecture 4 slides]({{site.url}}lectures/Lecture_04.pdf)

#### Readings

- [Robust 3D surface recovery paper](https://arxiv.org/abs/1901.08153)
- [David Whitehose - Surfaces and their Measurement - Chapters 2 and 4](pdfs/whitehouse-surfaces-and-their-measurement-(2002).pdf)

### Assignment 2

Surface roughness characterization. **Due date:** 2021-09-30.

- [Assignment 2]({{site.url}}pdfs/Roughness-activity-presentation.pdf)    
- [Upload link](https://www.dropbox.com/request/oVKAF6gmXFJdGgsBwIoi)    
- [White-Light Interference 3D Microscopes]({{site.url}}pdfs/10-kevin-g-harding-handbook-of-optical-dimensional-metrology-wli-microscopy.pdf)    
- [Standard 3D matlab .mat file](https://www.dropbox.com/s/f9tr9z18bwoxu8c/standard_R3D.mat?dl=0)    
- [Standard 3D in csv format](https://www.dropbox.com/sh/cpt4x2xopdrqkbj/AACJpXsd-GhgCfWLlcpL9wJFa?dl=0)    

#### Suplementary material for assignment 2

- [David J. Whitehouse-Surfaces and their Measurement Chap 1 and 2](https://www.dropbox.com/s/d4mcz2v2hkyq5lm/David%20J.%20Whitehouse-Surfaces%20and%20their%20Measurement%20%282002%29.pdf?dl=0)    
- [Specification-iso-4287](https://www.dropbox.com/s/nbri2six0kqbeuc/Specification-iso-4287.pdf?dl=0)


### Projects

- [Course projects description]({{site.url}}projects)
- [Upload link](https://www.dropbox.com/request/ww1sjRejiD65ngupCB9z)


### Lecture 5: Interferometry

In this lecture we will be discussing about the fundamentals of interferometry and its applications.

[Lecture 5 slides]({{site.url}}lectures/Lecture_05.pdf)


### Assignment 3

In this assignment we will estimate the 3D surface of a metallic sphere using White Light Scanning Interference Microscopy (WLSI). **Due date:** 2021-10-14.

- [Assignment 3](https://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/wlsi_processing.ipynb)    
- [Upload link](https://www.dropbox.com/request/oVKAF6gmXFJdGgsBwIoi) 
- [White light interferometry](pdf.pdf)

### Invited lecture: Lidar and autonomous vehicle

In this invited lecture, Prof. Santiago Royo will be talking to us about Lidar and autonomous vehicles.

<!-- [Lecture slides]({{site.url}}lectures/Lecture_lidar.pdf) -->

### Lecture 6: Phase-Shifting Systems and Phase-Shifting Analysis

In this lecture we will be discussing phase shifting phase analysis systems.

[Lecture 6 slides]({{site.url}}lectures/Lecture_06.pdf)

### Invited lecture: Structured Light

In this invited lecture, Prof. Zhang will introduce the topic of structured light and applications.

### Lecture 7: Structured light cont'd

We will continue with structured light and develop several examples.

- [Lecture 7 slides](https://www.dropbox.com/s/x00ky3jcg6z707s/Lecture_07.pdf?dl=0)

<!-- - [Structured light 3D reconstruction notebook](https://github.com/opi-lab/stsiva-workshop/blob/main/notebooks/stsiva_workshop_notebook03.ipynb) -->
- [Structured light 3D reconstruction notebook](https://nbviewer.jupyter.org/github/opi-lab/stsiva-workshop/blob/main/notebooks/stsiva_workshop_notebook03.ipynb)

### In-class activity: laser triangulation

- [Laser spot triangulation notebook](https://nbviewer.jupyter.org/github/opi-lab/optical-metrology-2021/blob/gh-pages/notebooks/sl_laser_spot_notebook.ipynb)
