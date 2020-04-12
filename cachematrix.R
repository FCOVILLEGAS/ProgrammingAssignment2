## Put comments here that give an overall description of what your
## functions do

## Esta función crea una matriz 
makeCacheMatrix <- function(m = matrix()) {
m1 <- matrix()
				set <- function (m2) {
					m <<- m2
					m1 <<- matrix()
					}
				get <- function() m
				setinverse <- function (inverse)
				m1 <<- inverse
				getinverse <- function () m1
				list( set =set, get= get, setinverse= setinverse, getinverse= getinverse)
}


## Esta función almancena la última matriz inversa de m.

cacheSolve <- function(m, ...) {
m1 <- m$getinverse()
			if(!is.na(m1)) {
				message("getting cached data")
				}
			data <-m$get()
			m1 <- solve(data,...)
			m$setinverse(m1)
			m1
}

m3 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m4 <- makeCacheMatrix(m3)
m4$get()
cacheSolve(m4)
n3 <- matrix(c(2,5,9,8),nrow=2, ncol=2)
m4$set(n3)
cacheSolve(m4)
