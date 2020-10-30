#Nomor 1
A <- matrix(c(1:9), 3, 3, TRUE)
A

#1a
colnames(A) <- c('col1', 'col2', 'col3')
rownames(A) <- c('row1', 'row2', 'row3')
A

#1b
diag(A)

#1c
det(A)

#1d
solve(A)

#1e
t(A)
t(A) %*% A

#1f
eigen(A)

#Nomor 2
B <- matrix(c(1,1,3,5,2,6,-2,-1,-3), 3, 3, TRUE)
B

#2a
B3 <- B%*%B%*%B
O <- matrix(c(0,0,0,0,0,0,0,0,0),3,3, TRUE)
B3 == O

#2b
B[,3] <- (B[,3] + B[,2])
B

#Nomor 3
M <- matrix(data = c(1, 2, 3, 8, 2, 9), nrow =3, ncol =  2, TRUE )
M
N <- matrix(data =c(5, 4, 8, 2), nrow = 2, ncol = 2, TRUE)
N

#3a
M %*% N

#3b
solve(N)
M %*% solve(N)
t(N)

#3c
M %*% t(N)

#3d
3 * ((M %*% solve(N)) + M %*% t(N))

#Nomor 4
library(matlib)

X <- matrix(c(1,-2,3,2,1,1,-3,2,-2),3,3,TRUE)
Y <- c(7,4,-10)

#4a
showEqn(X, Y)

#4b
Solve(X, Y)

#4c
plotEqn3d(X, Y)

#4d
echelon(X, Y)

#nomor 5

X <- matrix(c(1:9),3,3,TRUE)
Y <- X

for (val in nrow(Y)){
  for(i in ncol(Y)){
    if(val==1 && i==1){
      Y[1,1] = 0
    }
    if(val==1 && i==2){
      Y[1,2] = 0
    }
    if(val==1 && i==3){
      Y[1,3] = 0
    }
    if(val==2 && i==1){
      Y[2,1] = 1
    }
    if(val==3 && i==1){
      Y[3,1] = 1
    }
  }
}  

