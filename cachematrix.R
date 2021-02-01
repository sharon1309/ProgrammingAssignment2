## Put comments here that give an overall description of what your
## functions do

## setting to Cache so that the function is stored

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y){
    x<<- y
    inv <<- NULL
  }
  ## retrieving the function and setting for inverse
  get <- function () x
  
  setInverse <- function () inv <<- solve (x)
  getInverse <- function () inv
  list(set = set, get = get,
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Solve matrix if not cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)){
    message ("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve (mat,...)
  x$setInverse(inv)
  inv
}
