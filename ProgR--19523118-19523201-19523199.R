#CPMK - 19523118 - 19523201 - 19523199
library(matlib)

#1 . Matrix

#a) 
A <- matrix( c( 1,2,3,4,5,6,7,8,9), 3, 3, TRUE)
colnames(A) <- c('col1','col2','col3')
rownames(A) <- c('row1','row2','row3')
A

#b)
diag(A)

#c)
det(A)

#d)
solve(A)

#e)
t(A) %*% A

#f)
eigen(A)


#2. Matrix

B <- matrix( c(1,1,3, 5,2,6, -2,-1,-3), 3, 3, TRUE)
B

#a 
B <- B%*%B%*%B
B

#b
B <- matrix( c(1,1,2, 5,2,7, -2,-1,-3), 3, 3, TRUE)
B


#3. Matrix

M <- matrix( c( 1,2,3,8,2,9), 3, 2, TRUE)
M

N <- matrix( c( 5,4,8,2), 2, 2, TRUE)
N

#a)
M %*% N

#b)
M %*% solve(N)

#c)
M %*% t(N)

#d)
3 *( (M %*% solve(N)) +( M %*% t(N) ) )

#4 SPL
J <- matrix( c(1, -2, 3, 2, 1, 1, -3, 2, -2), 3, 3, TRUE)
J

j <- c(7, 4, -10)
j

# show the equation
showEqn(J , j ) 

# find solution
Solve(J , j ) 

# Solution used reduced echelon form
plotEqn3d(J , j ) 

#5 

X <- matrix( c( 1,2,3,4,5,6,7,8,9), 3, 3, TRUE)
X

for (r in 1:3 ){
  
  for (c in 1:3 ){
    
    if( r==1 ){
      
      if( c==1 | c==2 | c==3){
        X[r,c]=0
      }
    }
    if ( c==1 ){
      
      if ( r==2 | r==3 ){
        X[r,c]=1
      }
    }
  }
}
X

