n<-nrow(map[map$speciesName=="Black Kite - Milvus migrans",])
test_that("maps file is good", {
  expect_equal(n,1637)
})
