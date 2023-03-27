RBPMS <- lyd_RGC[['RNA']]@data["Rbpms",] 

CXCR<- lyd_RGC[['RNA']]@data["Cxcr4",] 

RBPMSCXCR = (RBPMS + CXCR)
lyd_RGC[['NEW']] <- CreateAssayObject(data = rbind(RBPMSCXCR))
DefaultAssay(lyd_RGC) <- "NEW"
DotPlot(lyd_RGC, features = c("RBPMSCXCR"), dot.scale = 10) 
