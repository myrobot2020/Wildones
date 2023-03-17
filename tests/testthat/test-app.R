test_that("uifile dims are good", {
  expect_equal(dim(uioptions), c(402,2))
})
test_that("maps names is good", {
  expect_equal(names(map),c("latitudeDecimal","longitudeDecimal","speciesName","accessURI"))
})
test_that("time str is good", {
  expect_equal(typeof(time$eventDateconverted), "character")
})
