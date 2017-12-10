library('RUnit')
source(file = "R/histogram.R")

test.suite <- defineTestSuite("histogram",
                              dirs = file.path("tests/"),
                              testFileRegexp = "^unit.+\\.R",
                              testFuncRegexp = "^test.+")

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)

