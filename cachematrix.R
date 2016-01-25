## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeChacheMatrix function creates the matrix that can be given to cacheSolve
makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 ## function to set the data inputed to the makeChachematrix function
  set <- function(y) {
    x <<- y 
    m <<- NULL
    ## m is the inverse of the matrix and we assign it to NULL intitially
  }
  ## function to get the data inputed to the makeChachematrix function
  get <- function() x
  ## function to set inverse of the matrix
  setinverse <- function(inverse) m <<- inverse
  ## function to getinverse 
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## cacheSolve will take the matrix created above using makeCacheMatrix function
## and if it has inverse it will return the cahcehd data else it will update 
## the inverse of the matrix using setinverse function of the object

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
          m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
