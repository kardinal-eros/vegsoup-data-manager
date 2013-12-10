library(vegsoup)

load("~/Documents/vegsoup-data/hagengebirge dta/hg.rda")

obj <- hg
if (!any(names(Species(obj)) == "voucher")) {
	stop("no voucher column?", call. = FALSE)
}

#	subset
xx <- Species(obj)

xx <- xx[xx$voucher != "",]
