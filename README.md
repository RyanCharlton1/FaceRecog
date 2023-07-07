# FaceRecog
A repo to document my research and development of facial recognization methods.

## Eigenfaces
Set of eigen vectors for face image transformations derived from the ***covariance matrix*** of the probability distribution over the vector space of face images(TODO find out what vector space of image is). The eigenfaces form the basis set of all images used to construct the ***convariance matrix***. The basis can produce all original training images, classification can thus be achieved by comparing how well a face is represented by the basis set.

A set of eigenfaces can be created by ***principal component analysis*** (PCA) performed on 

### Notes/Definitions
***Covariance***: Joint variability of two random variables, constant describes lineaer relationship with 1 being perfect correlation, -1 perfect opposite correlation(as X increases Y linearly decreases) and 0 being no correlation.\
Calculated: $cov(X, Y) = E[(X - E[X])(Y - E[Y])]$
reduced to $E[XY] - E[X]E[Y]$ using expectations linearity.

***Covariance Matrix***: Matrix of covariance constants for a vector of variables.
