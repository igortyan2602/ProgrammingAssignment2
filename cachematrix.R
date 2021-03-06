## Put comments here that give an overall description of what your
## functions do

## make matrix assign to variable x, and initialize n to NULL

makeCacheMatrix <- function(x = matrix()) {
        n <- NULL
        set <- function(y) {
                x <<- y
                n <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) n <<- inverse
        getinverse <- function() n 
        list (set = set,
              get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {

        n <- x$getinverse()
        if(!is.null(n)) {
                message ('getting cached data')
                return(n)
        }
        data <- x$get()
        n <- solve(data, ...)
        x$setinverse(n)
        n
}


