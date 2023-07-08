# FaceRecog
A repo to document my research and development of facial recognization methods.

## Eigenfaces
Set of eigen vectors for face image transformations derived from the ***covariance matrix*** of the probability distribution over the vector space of face images. The eigenfaces form the basis set of all images used to construct the ***convariance matrix***. The basis can produce all original training images, classification can thus be achieved by comparing how well a face is represented by the basis set, any given face will be composed of a mix of eigenfaces just as any 2d vector would be a mix of (1, 0) and (0, 1).

A set of eigenfaces can be created by ***principal component analysis*** (PCA) performed on a large set of human face images:
1. All training images must be same lighting and resampled to be the same size. Each image is turned into a vector by flattening second dimension with concatenation.
2. Subtract the mean of all images from each image.
3. Calculate eigenvectors and eigenvalues of covariance matrix.
4. Choose the principle components:
   1.  Sort eigenvalues and eiganvector by desecending order of eigenvalues.
   2. The number of principle components $k$ is dertermined by choosing a threshold $\epsilon$ for total vairance ($v = \lambda_1 + \lambda_2 + ... + \lambda_n$ where $n$ is number of components). $ k $ is the smallest value satisfying  $\frac{\lambda_1 + \lambda_2 + ... + \lambda_k}{v} > \epsilon$

Most eigenfaces generate will be redundant, typically only ~40 eigenfaces are needed to identify 95% of human faces.

To compare a new(mean subtracted) face  

## Notes/Definitions
***Covariance***: Joint variability of two random variables, constant describes linear relationship with 1 being perfect correlation, -1 perfect opposite correlation(as X increases Y linearly decreases) and 0 being no correlation.\
Calculated: $cov(X, Y) = E[(X - E[X])(Y - E[Y])]$, reduced to $E[XY] - E[X]E[Y]$ using expectations linearity.

***Covariance Matrix***: Matrix of covariance constants for a vector of variables.

***Principle Component Analysis***: Reduce dimensions in a dataset without losing data. The priciple components of a collection of points are orthogonal unit vectors that are lines of best fit for the data. The pricipal components are eigenvectors of the data's covariance matrix.

***Characteristic Polynomial***: $det(tI - A)$ for matix $A$, creates a polynomial with eigenvalues as the roots.
