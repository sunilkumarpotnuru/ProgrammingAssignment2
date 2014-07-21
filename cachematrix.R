## "makeCacheMatrix" and "cacheSolve" are two functions that are used to create a special object that stores a matrix and cache's its inverse. 

## "makeCacheMatrix" function creates a special "matrix" object that can cache its inverse.
#1)set the value of the matrix
#2)get the value of the matrix
#3)set the value of the inverse of matrix
#4)get the value of the inverse of matrix


makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function(){
                x
        }
        setInverse <- function(inverse){
                inv <<- inverse
        }
        getInverse <- function(){
                inv
        }
        matrix(set = set , get = get, setInverse = setInverse, getInverse = getInverse)
}


## "cacheSolve" function computes the inverse of the special "matrix" returned by "makeCacheMatrix" function. If the inverse has already been calculated (and the matrix has not changed), then the "cacheSolve" retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Returning a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}
