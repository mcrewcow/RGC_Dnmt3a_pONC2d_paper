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
                
                
my_data <- read.table(file = "clipboard", sep = "\t", header=FALSE, fill = TRUE)
table(my_data$V2)
my_data <- my_data$V1
my_data <- as.vector(my_data)
my_data <- tolower(my_data)
my_data <- paste0(toupper(substr(my_data, 1, 1)), substr(my_data, 2, nchar(my_data)))
EnhancedVolcano(bulk,
                lab = bulk$gene_name,
                selectLab = c(my_data),
                x = 'log2FoldChange',
                y = 'padj',
                pCutoff = 5e-2, legendPosition = 'right',
                legendLabSize = 12,
                legendIconSize = 4.0, max.overlaps=200, labSize = 4,
                labFace = 'bold') + xlim(-10,10) + ylim(0,70)
