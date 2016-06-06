## this function creates a matrix with a cache, storing matrix and making it ready for use when the inverse function is run

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
setMatrix <- function(z) {
x <-y
inv <- NULL
}
getMatrix <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}

## This function calculates the matrix's inverse, however it first checks to see if there is already a cache. If cache is already there, it merely returns the inverse from the cache, otherwise it is manually calculated and returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       in <- x$getInverse()
       if (!is.null(in)) {
       message("getting cached data...")
       return(in)
       }
       data <- x$getMatrix()
       in <- solve(data)
       x$setInverse(in)
       in
}
