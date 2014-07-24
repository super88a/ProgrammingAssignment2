## These functions can be used to create a matrix and its
## inverse that will be saved in cache memory.

## makeCacheMatrix: creates a special "matrix" object 
## 		that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

				inverse_x <- NULL

				set <- function(y) {
						x <<- y
						inverse_x <<- NULL
				}

				get <- function() x

				setinverse <- function(invers) inverse_x <<- invers

				getinverse <- function() inverse_x

				list(set = set, get = get,
						setinverse = setinverse,
						getinverse = getinverse)
}


## cacheSolve: computes the inverse of the special "matrix" 
## 		returned by function makeCacheMatrix. 
## 		If the inverse has already been calculated (and the matrix 
## 		has not changed), then the cachesolve should retrieve the 
##		inverse from the cache.
##		Assumption: the matrix supplied is always invertible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

				inverse_x <- x$getinverse()
				
				if(!is.null(inverse_x)) {
						message("getting cached inverse matrix of x")
						return(inverse_x)
				}
				
				the_matrix  <- x$get()
				invers      <- solve(the_matrix, ...)
				x$setinverse(invers)
				invers
}
