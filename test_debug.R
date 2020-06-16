#test browser()

func <- function(vec_list){
	sums = lapply(FUN=getsum, X=vec_list)
	sum = unlist(sums)
	return(sum)
}

getsum <- function(vec){
	browser()
	sum = sum(vec)
	return(sum)
}



func(list(rnorm(100), rnorm(100)))

