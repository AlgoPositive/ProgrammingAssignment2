## Put comments here that give an overall description of what your
## functions do

## The first function creates the special matrix and allows to set/get the inverse and value of the matrix

makeCacheMatrix <- function(x = matrix()) {
 
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
  }
  
  
  
  




## The function creates an inverse matrix of the previous function reslut:

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    m <- x$getInverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
  }

