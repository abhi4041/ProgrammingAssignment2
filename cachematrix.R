## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(mat1) {
                x <<- mat1
                inv <<- NULL
        }
        get <- function() { 
	  x
        }
	  set_inv <- function(x) {
        inv <<- solve(x)
        }
        get_inv <- function() {
        inv
        }
        list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$get_inv()
        if(!is.null(inv)) {
                message("getting cached inverse...")
                return(inv)
        }
        get_mat <- x$get()
        cache_inv <- solve(get_mat)
        x$set_inv(cache_inv)
        cache_inv

}
