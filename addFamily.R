library(Taxonstand)

file <- "~/Documents/vegsoup-standards/austrian standard list 2008/austrian standard list 2008.csv"
df <- read.csv2(file, stringsAsFactors = FALSE)

sp <- df$taxon[df$level == "bryophytes"]

r <- tplFamily(sp)
table(r)

write.table(r, "foo.csv", row.names = FALSE)