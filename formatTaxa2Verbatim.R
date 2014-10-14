x <- read.csv2("~/Documents/vegsoup-data/surina2004/table.csv",
	stringsAsFactors = FALSE)


x[,1] <- format(x[,1], width = max(nchar(x[,1])))

write.csv2(x, "foo.csv", row.names = FALSE)