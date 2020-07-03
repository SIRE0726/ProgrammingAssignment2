#So basically worked of the code given
#The first tiny edit I made is replacing that numeric given to a 3 by 3 matrix with numbers 1 to 9 
#Then assigned that matrix to x
#Second, edit made was to replace all the mentions of "mean" with "solve"
makeCacheMatrix <- function(x = matrix(1:9, nrow = 3, ncol = 3)) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

#Edit made was to replace all the mentions of "mean" with "solve"
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
