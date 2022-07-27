testthat::context("Test of Genefusiondiscover functions")
library(Genefusiondiscover)


file <- system.file("extdata","H3122_EML4.bam", package = "Genefusiondiscover")
detection <- EML4_ALK_detection(file = file)
EML4_seq <- EML4_sequence(EML4_ALK_detection(file = file))
ALK_seq <- ALK_sequence(EML4_ALK_detection(file = file))
pos <- break_position(EML4_ALK_detection(file = file))
pos_depth <- break_position_depth(file = file, EML4_ALK_detection(file = file))
analysis <- EML4_ALK_analysis(file = file)

testthat::expect_true(is.character(file))
testthat::expect_true(is.data.frame(detection) | is.character(detection))
testthat::expect_true(is.table(EML4_seq) | is.character(EML4_seq))
testthat::expect_true(is.table(ALK_seq) | is.character(ALK_seq))
testthat::expect_true(is.table(pos) | is.character(pos))
testthat::expect_true(is.integer(pos_depth) | is.character(pos_depth))
testthat::expect_true(is.list(analysis) | is.character(analysis))