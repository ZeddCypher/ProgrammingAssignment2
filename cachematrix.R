## The overall script creates two functions, the first creating a matrix that is cached
## for potential later use, in theory helping to reduce redudancy and computing cost. The
## second function will call on the first function from the cache

## defines "makeCacheMatrix" creates a matrix function that can cache it's inverse, will
## be used later by cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
       
    m <- NULL
    set <- function(y){
         x<<-y
         m <<- NULL
    }
    get <- function () x
    setmatrix <- function(mean) m<<- solve
    getmatrix <- function() m
    list(set=set, get=get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
    ## defines set and get for user input and retrieval per user specification 
    }

## defines "cacheSolve" which creates a function that will compute or 'solve' the 
## inverse of a special matrix from the above function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)){
      message("getting cached data")
        return(m)
    ## checks if m is populated from cacheMatrix
  }
  matrix <- x$get()
  ## retrives set() values i.e.x$get() outputs: [1] 2 3 (defined by 
  ## x <- makeCacheMatrix earlier)
  m <- solve(data, ...)
  x$setmatrix(m)
  ## i.e. x <- makeCacheMatrix(c(2,3))
  m
  ## returns value of m
}
