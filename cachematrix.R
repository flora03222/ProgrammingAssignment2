## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## caching the Inverse of a Matrix:
## This function ctreates a special "Matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {

}
inv <- NULL
set <- function(y) {
	x <<- y
	inv <<- NULL
}
get <- function() x
setInverse <- function(inverse){
	i <<- inverse
}
getInverse <- function() inv
## Back to the list  methods
list (set = set, get = get,
setInverse = setInverse
getInverse = getInverse
)

cacheSolve <- function(x,...){
inv <- x$getInverse()
if( !is.null(inv)){
	message("getting cached data")
	return (inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInserve(inv)
inv
}

