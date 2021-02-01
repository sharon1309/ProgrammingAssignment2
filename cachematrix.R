## Put comments here that give an overall description of what your
## functions do

## setting to Cache so that the function is stored

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function (y){
    x<<- y
    inv <<- NULL
  }
  ## retrieving the function and setting for inverse
  get <- function () x
  
  setInverse <- function () inverse <<- solve (x)
  getInverse <- function () inverse
  list(set = set, get = get,
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Solve matrix if not cached

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null(inv)){
    message ("getting cached data")
    return(inv)
  }
  matrix <- x$get()
  inverse <- solve (mat,...)
  x$setInverse(inv)
  inverse
}
