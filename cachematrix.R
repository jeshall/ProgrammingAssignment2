## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m_matrix = matrix()) {
  m_inverse <- NULL
  set <- function(matrix) {
    m_matrix <<- matrix
    m_inverse <<- NULL
  }
  get <- function() m_matrix
  setinverse <- function(inverse) m_inverse <<- inverse
  getinverse <- function() m_inverse
  list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Returns the inverse of a matrix

cacheSolve <- function(x, ...) {
  m_inverse <- x$getinverse()
  
  if(!is.null(m_inverse)) {
    return(m_inverse)
  }
  else {
    x$setinverse(solve(x$get()))
  }
  x$getinverse()
}
