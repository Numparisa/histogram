# histogram
Image Processing class @MU | 12 SEP 2018 | type of digital image | basics of histograms

Type of digital images
  1. Raster Vs Vector
     Raster images = images include of aligned pixels. Then the image will blur when expanded.
     Vector images = images that form by mathematics equations. Then the image will be clear boudary even expanded.

  2. TIFF
     TIFF file is a file that includes many files, like layers in photoshop, that make the size of the file is large.
     There is a program to open the file, like a zip file.
     Advantage; the file can open in both Windows and Mac.

  3. GIF
	   GIF file includes many images and compresses with LZW technique to be animation.
     Withdraw; colors of the picture is only 256 colors.

  4. PNG
     PNG comes for replaces GIF because of LZW license.
     PNG supports true color, grey scale ,and binary images.
     You can transparent background of PNG image by alpha channel(16-bit depth).
	
  5. JPEG
     JPEG is a compressed image, normal 1 pixel = 1 bit >> new 1 pixel = 0.25 bit.
     Step of compressing
      RGB > color transformation[color(y) , brightness(Cb,Ct)] > discrete cosine transformation> lossless transformation[using mathematics equations for lossless]

  6. BMP
	   BMP is a pixel image. This image should not be expanded or compressed because it may lose some information.

  7. PBM
	   This is an image that human can read. It consists of numbers, 0 is black , 1 is white, and the others in color.
     There is family! PBM, PGM[grey scale], PNM[RGB color],...

************************************************************************************************************
Histogram

  Histogram is color-scale graph.
    x axis = color scale 0-255 [0 = black, 255 = white]
    y axis = amount of pixels of each color
  *not sure each image may has many histogram. Each histogram will present only one color. 
  i.e. RGB will has red-scale graph, green-scale graph, and blue-scale graph.
 
  Some of Vocabulary about Histogram
	  Contrast is different of color.
    Dynamic range is resolution of x-axis scale.
  
  Comulative Histogram
    Comulative histogram is graph frequency accumulation.
		H(i)=sum( h(j) ) , for j = 0 to i , 0 <= i < k	page52
	
  Histogram Equalization
		H=[ ( Cdf(v) - Cdfmin ) / ((M * N) - Cdfmin) ] * 255
		M*N is pixel size [ Cdfmax ]
