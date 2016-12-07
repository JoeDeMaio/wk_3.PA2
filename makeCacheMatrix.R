## Joe DeMaio
## Programming assingment 2 Week 3
    
## makeCacheMatrix: This function creates a special "matrix" object 
## that can cache its inverse. cacheSolve: This function computes 
## the inverse of the special "matrix" returned by makeCacheMatrix 
## If the inverse has already been calculated (and the matrix has 
## not changed), then the cachesolve should retrieve the inverse 
## from the cache. 
makeCacheMatrix <- function(x = matrix()) { ## Function takes a matrix x
    m <- NULL
    set <- function(y) { ## set the value of the matrix
        x <<- y
        m <<- NULL
    }
    get <- function() x  ## get the value of the matrix
    setsolve <- function(solve) m <<- solve  ## set the value of the 
                                             ## inverse matrix
    
    getsolve<- function() m    ## set the value of the inverse matrix
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}