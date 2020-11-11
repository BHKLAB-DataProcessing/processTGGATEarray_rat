library(ToxicoGx)
library(gdata)
library(affy)
library(Biobase)
library(xml2)
library(abind)
library("rat2302rnensgcdf")

cdf <- "rat2302rnensgcdf"

rat_cels <- read.csv("/pfs/processTGGATEarray_rat/rat_cel.csv", sep = "\t")
celfn <- paste0("/pfs/TGRatArray/TGGATES_rat_CELfiles/", rat_cels$x)
#xx <- list.files("/pfs/TGRatArray/TGGATES_rat_CELfiles", full.names = T, "\\.CEL$")

eset <- just.rma(filenames = celfn, verbose = TRUE, cdfname = cdf)

saveRDS(eset, "/pfs/out/eset_Rat_3276.rds")
