file_path = system.file("extdata", "test_data.xls", package = "OrgSeg")
data <- read_excel_file(file_path)
exp_info_path = system.file("extdata", "exp_info.csv", package = "OrgSeg")
exp_info_list <- read_exp_info(exp_info_path)
all_data <- tibbleing_loop (data,exp_info_list$index_list,exp_info_list$treatments)
test_that("tibbleing_loop works", {
  expect_equal(colnames(all_data), c("Area","Replicate","Treatment"))
})
test_that("tibbleing_loop works", {
  expect_equal(length(levels(all_data$Treatment)), length(exp_info_list$treatments))
})
