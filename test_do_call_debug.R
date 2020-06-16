#getsum returns the sum of a vector's elements 
#func returns the vector of the sum of a list of vectors


func <- function(vec_list){
	browser()
	sums = lapply(FUN=getsum, X=vec_list)
	sum = unlist(sums)
	return(sum)
}

getsum <- function(vec){
	sum = sum(vec)
	return(sum)
}


args = list(vec_list=list(rnorm(100), rnorm(100)))

do.call(func, args)
#this prints all arguments

#but redefine the browser call...
func <- function(vec_list){
	browser(skipCalls=FALSE)
	sums = lapply(FUN=getsum, X=vec_list)
	sum = unlist(sums)
	return(sum)
}
do.call(func, args)
#works ! 