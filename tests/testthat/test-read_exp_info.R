exp_info_path=system.file("extdata", "exp_info.csv", package = "OrgSeg")
test_that("reading excel file and returning a list works", {
  expect_equal(is.list(read_exp_info(exp_info_path)),
               TRUE)
})
