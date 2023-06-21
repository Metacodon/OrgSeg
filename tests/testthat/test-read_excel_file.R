path=system.file("extdata", "test_data.xls", package = "OrgSeg")
test_that("reading excel file and returning a list works", {
  expect_equal(is.list(read_excel_file(path)),
               TRUE)
})
