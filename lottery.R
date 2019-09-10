# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

threshold = 0.1
totaltoss = 10
totalsim= 100

simulation <- array(0,totaltoss)
for (i in 1:totaltoss){
  simulation[i] <- if (runif(1) < threshold) 1 else 0
}

for (j in 1:totalsim){
  simulation <- array(0,totaltoss)
  for (i in 1:totaltoss){
    simulation[i] <- if (runif(1) < threshold) 1 else 0
  }
  print(simulation)
}
