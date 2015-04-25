## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#create object with parameter Matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  #set the matrix value
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  #retrive the matrix value
  get <- function() x
  #set inverse for matrix
  setinverse <- function(inverse)  i <<- inverse
  #get inverse for matrix
  getinverse <- function() i
  
  #define the retrun value from makeCacheMatrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #check inverse value if exist
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  #get inverse for matrix and store it on X$setinverse()
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  
        ## Return a matrix that is the inverse of 'x'
}
