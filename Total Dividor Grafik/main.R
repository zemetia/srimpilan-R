dividerSum <- function(num){
  res <- 0
  root <- floor(sqrt(num))
  for(i in 1:root){
    if(num%%i == 0){
      res <- res + i + (num/i)
    }
  }
  return(res-num)
}

seqOfDivider <- function(graph){
  ss <- c(graph)
  while(graph > 1){
    graph <- dividerSum(graph)
    if(graph %in% ss) break
    ss <- append(ss, graph)
  }
  return(ss)
}

for(i in 1:220){
  print(seqOfDivider(i))
}

plot(seqOfDivider(102), type="o", pch=21, lty=1, col="red")
