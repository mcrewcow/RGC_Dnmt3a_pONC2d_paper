library(CellChat)

lyd_RGC_KO <- subset(lyd_RGC, subset = class_condition == 'RGCs-DFcKO')
lyd_RGC_WT <- subset(lyd_RGC, subset = class_condition == 'RGCs-WT')

cellchat <- createCellChat(object = lyd_RGC_WT, group.by = "annotation")
CellChatDB <- CellChatDB.mouse
CellChatDB.use <- CellChatDB
cellchat@DB <- CellChatDB.use
cellchat <- subsetData(cellchat)
cellchat <- identifyOverExpressedGenes(cellchat)
cellchat <- identifyOverExpressedInteractions(cellchat)
cellchat <- projectData(cellchat, PPI.mouse)
cellchat <- computeCommunProb(cellchat, type = "truncatedMean", trim = 0.1, raw.use = FALSE, population.size = TRUE)
cellchat <- filterCommunication(cellchat, min.cells = 3)
cellchat <- computeCommunProbPathway(cellchat)
cellchat <- aggregateNet(cellchat)
cellchat <- netAnalysis_computeCentrality(cellchat, slot.name = "netP")
cellchat_lydia_WT <- cellchat


strwidth <- function(x) {0.02}
netVisual_aggregate(cellchat_lydia_WT, signaling = c('FGF'), layout = "chord")
