## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function is really designed as the example provided in the Assignment
## it takes the x matrix and return a list of setMatrix, getMatrix, setInverse and getInverse functions.

makeCacheMatrix <- function(x = matrix()) {
        InverseMatrix <- NULL
        setMatrix <- function(y) {
                x <<- y
                InverseMatrix <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(solve) InverseMatrix <<- solve
        getInverse <- function() InverseMatrix
        list(set = set, get = get,
             getInverse = getInverse,
             setInverse = setInverse)
}


## Write a short comment describing this function

## This function is really designed as the example provided in the Assignment
## it takes the List created by makeCacheMatrix function (e.g. makeCacheMatrix(x)).
## And it returns it's Inverse from cache if it's already calculated 
## if it's not yet calculated, calculate and cache the result, then display


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        InverseMatrix <- x$getInverse()
        if(!is.null(InverseMatrix)) {
                message("getting cached data")
                return(InverseMatrix)
        }
        data <- x$get()
        InverseMatrix <- solve(data, ...)
        x$setInverse(InverseMatrix)
        InverseMatrix
}
