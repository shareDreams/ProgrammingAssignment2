## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A function that returns a list containing 
## the function to save the inverse of a matrix
## and the original matrix
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(m){
    x <<- m
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set=set,get=get,setsolve = setsolve, getsolve=getsolve)
}


## Write a short comment describing this function
## A function that inverse a matrix
## fisrt checks if the matrix has not been inversed
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      s <- x$getsolve()
      if(!is.null(s)){
          message("inversed matrix")
          return(s)
      }
      data <- x$get()
      s <- solve(data,...)
      x$setsolve(s)
      s
}
