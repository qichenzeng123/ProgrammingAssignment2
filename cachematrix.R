
##/////////////////////////////////////////////////////////////////////////////////////////////
## Qichen Zeng 
## Assignment: Programming Assignment 2 Caching the Inverse of a Matrix 


## A function that will cache the inverse of a matrix to shorten large computation time
## This functions will save a matrix and its inverse values

##/////////////////////////////////////////////////////////////////////////////////////////////



##/////////////////////////////////////////////////////////////////////////////////////////////
## Create the matrix's inverse and store it. AKA cache the inverse matrix
makeCacheMatrix <- function(x = matrix()) {

  temp <- NULL
  
  invm <- function(y) {
    x <<- y
    temp <<- NULL
  }

  pull <- function() x

inversematrix <- function(inverse) inv <<- inverse
invmatrix <- function() temp 
list(invm = invm, pull = pull, inversematrix = inversematrix, invmatrix = invmatrix )
}


##/////////////////////////////////////////////////////////////////////////////////////////////

## Using previous created functions to calculate an inverse matrix. In a if statement 
## to test if it's a matrix or return a cached data. 
cacheSolve <- function(x, ...) {
  temp <- x$invmatrix()
  if(!is.null(temp)){
    return(temp)
  }
  else{
  dat <- x$pull()
  temp  <- solve(dat, ...)
  x$inversematrix(temp)
  temp 
  }
}

##/////////////////////////////////////////////////////////////////////////////////////////////
