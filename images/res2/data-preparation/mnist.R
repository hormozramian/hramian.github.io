library(keras)
mnist <- dataset_mnist()
x_train <- mnist$train$x
y_train <- mnist$train$y
x_test <- mnist$test$x
y_test <- mnist$test$y
save(x_train,y_train,x_test,y_test,file="mnist.RData")
x_train = x_train[y_train %in% c(2,5),,]
y_train = y_train[y_train %in% c(2,5)]

x_test = x_test[y_test %in% c(2,5),,]
y_test = y_test[y_test %in% c(2,5)]
save(x_train,y_train,x_test,y_test,file="mnist-2s-and-5s.RData")
