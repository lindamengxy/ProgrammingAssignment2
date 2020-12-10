## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matrixInverse <- NULL
        set <-function(y){
                x<<-y
                matrixInverse<<-NULL
        }
        get<- function() x
        getInverse <- function() {matrixInverse}
        setInverse <- function(inv){matrixInverse <<-inv }
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invM<-x$getInverse()
        if (!is.null(invM)){
             message("getting cached data")
                return(invM)
        }
        m<-x$get()
        invM<-solve(m)
        x$setInverse(invM)
        invM
}
