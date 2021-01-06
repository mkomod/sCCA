# See PMA::CCA
set.seed(3189)
u <- matrix(c(rep(1, 25), rep(0, 75)), ncol=1)
v1 <- matrix(c(rep(1, 50), rep(0, 450)), ncol=1)
v2 <- matrix(c(rep(0, 50), rep(1, 50), rep(0, 900)), ncol=1)
X1 <- u %*% t(v1) + matrix(rnorm(100 * 500), ncol=500)
X2 <- u %*% t(v2) + matrix(rnorm(100 * 1000), ncol=1000)

relPMDCCA(X1, X2, 1, 0.3, 0.3)
