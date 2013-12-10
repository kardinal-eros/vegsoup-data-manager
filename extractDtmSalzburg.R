extractDtmSalzburg <- function (x) {
	r <- raster("~/Google Drive/sagis/dtm10m/dtm10m.asc")
	obj$elevation <- round(extract(obj, spTransform(obj, CRS("+init=epsg:31258"))), 0)
}