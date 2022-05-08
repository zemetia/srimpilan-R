base <- 27
dataList <<- c(base)
indexPoint <- 2

while (base != 1){
  if(base %% 2) base <- (base*3) + 1
  else base <- base / 2
  dataList[indexPoint] <- base
  indexPoint <- indexPoint + 1
}

plot(dataList, type="o", pch=21, lty=1, col="red")

