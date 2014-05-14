## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## These two functions work to cache the inverse of a matrix in order to save time if such a task is 
## required more than once (e.g. in a loop)

# makeCacheMatrix takes a matrix as an argument and calculates it's inverse. The inverse matrix is defined 
# in the global environment with the "<<-" operator


makeCacheMatrix <- function(x = matrix()) {
        InvMatrix <<- solve(x) ## Calculate inverse of the matrix 'x'
        
}


## cacheSolve looks to see if the inverse of the matrix argument has already been calculated in the 
## parent environment, and if so, returns that inverse matrix. If the inverse matrix has not been calculated,
## then it is calculated and returned in this function.
cacheSolve <- function(x) {
        if (!is.null(InvMatrix)) {
                return(InvMatrix)       ## IF InvMatrix exists, it is returned here
        } else {
                InvMatrix <- solve(x)   ## InvMatrix is calculated if it doesn't already exist in the global
                                        ## environment
        }
        return(InvMatrix)               ## InvMatrix is returned here.
}