## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversex<-NULL
  set<-function(y){
      x<<-y
      inversex<<-NULL
  }
  get<-function() x
  setinv<-function(solve) inversex<<-solve
  getinv<-function() inversex
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversex<-x$getinv()
  if(!is.null(inversex)){
      message("getting cached data")
      return(inversex)
  }
  newmatrix<-x$get()
  inversex<-solve(newmatrix)
  x$setmean(inversex)
  inversex
}
