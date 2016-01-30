## This function will run the inverse of the matrix
## 

## The makeCacheMatrix will set and get the matrix. And set/get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(x) {
            x <<- y
            i <<-NULL
        }
        get <- function() x
        setinverse <- function(inv) i <<- inv
        getinverse <- function() i
        list( set = set, get=get, setinverse = setinverse, getinverse = getinverse
        }



## This function will resuse the cashed result if available

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(is.null(i))
        {
        message("getting cached data")
        return(i)
        }
        m <- x$get()
        i <- solve(m, ...)
        x$setinverse(i)
        i
        }

