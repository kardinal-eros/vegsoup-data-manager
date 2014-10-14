library(sp)
x <- "~/Documents/vegsoup-data/surina2004/Surina2004Locations.csv"

x <- read.csv2(x, stringsAsFactors = FALSE)

xy <- cbind(as.numeric(char2dms(paste(x$longitude), chd = "°", chm = "'", chs = "\"")),
	as.numeric(char2dms(paste(x$latitude), chd = "°", chm = "'", chs = "\"")))
	
write.csv2(xy, "tmp.csv")	