library(sf)
library(raster)
library(RSlovakia)
library(stars)

jazera <- sf::st_read("EUROPA_SHAPEFILES//SVK_water_areas_dcw.shp")[, c(5, 6)]
rieky <- sf::st_read("EUROPA_SHAPEFILES//SVK_water_lines_dcw.shp")[, c(3, 6)]
populacia <- stars::read_stars("EUROPA_SHAPEFILES//svk_pop.grd")
teren <- raster::raster("EUROPA_SHAPEFILES//svk_alt.grd")

check <- raster::as.data.frame(teren, xy = TRUE)
borders <- hranice()

names(rieky) <- c("rieka", "geometry")
names(jazera) <- c("meno", "geometry")

plot(jazera)
plot(rieky)
borders <- hranice()
rivers <- rieky()

check_check <- teren[borders] 
ggplot() +
  geom_sf(data = borders) +
  geom_sf(data = rivers, color = "blue", alpha = 0.3) +
  geom_raster(data = check, aes(x = x, y = y, alpha = SVK_alt)) 


saveRDS(rieky, "DATA_RAW//rieky")
saveRDS(jazera, "DATA_RAW//jazera")

check <- rieky()

stars::read_stars(http://www.gisat.cz/data/dem/SRTM_DEM_SK_KR_100.zip)

temp <- tempfile()
download.file("https://perso.telecom-paristech.fr/eagan/class/igr204/data/BabyData.zip",temp)
carsData <- read.table(unz(temp, "a1.dat"))
unlink(temp)