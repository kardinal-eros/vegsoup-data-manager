file <- "~/Documents/vegsoup-standards/austrian standard list 2008/austrian standard list 2008.csv"

df <- read.csv2(file,
	stringsAsFactors = FALSE)

w <- isWhat(df$taxon)