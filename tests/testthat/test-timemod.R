fee<-function(x){
  range(x[x$speciesName=="Black Kite - Milvus migrans","individualCount"])
}

test_that("multiplication works", {
  expect_equal(fee(time), c(3,98969))
})
