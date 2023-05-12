lyd_RGC <- SetIdent(lyd_RGC, value = 'background')
lyd_RGC <- RenameIdents(lyd_RGC, 'WT' = 'A','DFcKO' = 'B')

D59fetalS.markers <- FindAllMarkers(lyd_RGC, only.pos = FALSE, thresh.use = NONE)

BiocManager::install('EnhancedVolcano')
library(EnhancedVolcano)

