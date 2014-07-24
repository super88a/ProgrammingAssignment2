### Introduction

This is the proposed solution for the second programming assignment. 

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly. 

This R package is able to cache matrix inversion operation.

The package consists of the following functions :
1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix is done with the `solve`
function in R.

ASSUMPTION: the matrix supplied is always invertible.

### Example
a. Create an invertible matrix a.

b. Make the 'special matrix' b : b <- makeCacheMatrix(a)
   You can check if b has been 'loaded' with matrix a, using : b$get()
   
c. Find its inverse : cacheSolve(b)

   
