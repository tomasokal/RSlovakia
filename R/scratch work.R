# SCRATCH WORK ON WORKING WITH THE ZBGIS SK GEODESY WEB API

  ## https://zbgis.skgeodesy.sk/geoportal/catalog/main/home.page

library(httr)
library(xml2)
library(XML)
library(raster)
  
url <- "https://www.geoportal.sk/files/sluzby/wms_inspire_oi_nahlad.html"
xmldoc <- XML::xmlParse(maybe)
rootNode <- XML::xmlRoot(xmldoc)
rootNode[1]
data <- xmlSApply(rootNode,function(x) xmlSApply(x, xmlValue))
  

  url <- "https://zbgisws.skgeodesy.sk/inspire_transport_networks_wms/service.svc/get?service=WMS&version=1.3.0&request=GetCapabilities"
  check <- httr::GET(url)
  wut <- content(check, "parsed")
  maybe <- read_xml(url)
  xml_ns_strip(maybe)

  

url <- "https://www.geoportal.sk/files/sluzby/wms_inspire_oi_nahlad.html"

geotiff_file <- tempfile(fileext = '.tif')
httr::GET(url, httr::write_disk(path = geotiff_file))
my_raster <- raster::raster(geotiff_file)
object.size(check)
object.size(maybe)
