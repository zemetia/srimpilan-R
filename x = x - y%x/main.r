x <- 100
y <- 1
simpen <- c(x)
count <- 1

# ================================ #

while(x > 1){
  count <- count + 1
  x <- x * (1 - (y/100))
  simpen[count] <- x
}

plot(simpen)
