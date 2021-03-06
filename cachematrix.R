## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  inv <- NULL
  set <- function(y) {
    a<<- b
    inv <<- NULL
  }
  get <- function() a
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  inv <- a$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- a$get()
  inv <- solve(data)
  a$setinverse(inv)
  inv
  ## Return a matrix that is the inverse of 'a'
}
