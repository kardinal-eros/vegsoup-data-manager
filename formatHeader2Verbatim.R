#	read table and convert it into monsspace layout
#	that means, stack letters vertically
xx <- read.csv2("~/Documents/vegsoup-data/surina2004/header.csv",
	stringsAsFactors = FALSE)
x <- xx[,-1]

width <- apply(apply(x, 1, nchar), 2, max)

r <- vector("list", length = length(width))

for (i in seq_along(width)) {
	ii <- format(as.character(x[i, ]), width = width[i], justify = "right")
	ii <- gsub(" ", ".", ii, fixed = TRUE)
	ii <- paste0(ii, collapse = "")
	ii <- unlist(strsplit(ii, ""))
	r[[i]] <- matrix(ii, nrow = width[i], ncol = ncol(x))
}	

r0 <- do.call("rbind", r)

r1 <- as.character(xx[,1])
r1 <- rep.int(r1, times = width)
r1[duplicated(r1)] <- ""
r1 <- format(r1, width = max(nchar(xx[,1])) + 1, justify = "left")

r <- cbind(r1, r0)
r <- apply(r, 1, function (x) paste0(x, collapse = " "))

con <- file("foo.txt")
writeLines(r, con)
close(con)

