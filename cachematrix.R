## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a matrix 
## that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    
  i <- NULL #the cache of the inverse
    setmatrix <- function(y) {
      ## sets matrix
      x <<- y
      ## resets the cache
      i <<- NULL 
    }
    ## gets my matrix
    getmatrix <- function() x 
    ## sets inverse of matrix
    setinverse <- function(solve) i <<- solve
    ## gets the inverse of matrix
    getinverse <- function() i
    ## names the elements of the list
    list(setmatrix = setmatrix, 
         getmatrix = getmatrix,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(i) #gets cached inverse if i is null
    }
    ## when there is no cached inverse 
    ## get matrix and find inverse
    data <- x$getmatrix()
    i <- solve(data, ...)
    x$setinverse(i)
    i
  }
