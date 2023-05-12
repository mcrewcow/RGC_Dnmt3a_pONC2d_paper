lyd_RGC <- SetIdent(lyd_RGC, value = 'background')
lyd_RGC <- RenameIdents(lyd_RGC, 'WT' = 'A','DFcKO' = 'B')

D59fetalS.markers <- FindAllMarkers(lyd_RGC, only.pos = FALSE, thresh.use = NONE)

BiocManager::install('EnhancedVolcano')
library(EnhancedVolcano)

EnhancedVolcano(bulk,
                lab = bulk$gene_name,
                x = 'log2FoldChange',
                y = 'padj',
                pCutoff = 5e-2, legendPosition = 'right',
                legendLabSize = 12,
                legendIconSize = 4.0,
                drawConnectors = TRUE,
                widthConnectors = 0.75, max.overlaps=20) + xlim(-10,10) #top-30
