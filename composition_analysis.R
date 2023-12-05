library(scDC)
exprsMat <- GetAssayData(object = lydia, assay = "RNA", slot = "data")
cellTypes <- lydia$anno2
subject <- lydia$background
cond <- lydia$background
dim(exprsMat)
table(subject, cellTypes)
table(cond, cellTypes)
res_scDC_noClust <- scDC_noClustering(cellTypes, subject, calCI = TRUE, 
                                      calCI_method = c("percentile", "BCa", "multinom"),
                                      nboot = 50)
barplotCI(res_scDC_noClust, c("WT","DFcKO"))
densityCI(res_scDC_noClust, c("WT",'DFcKO'))
res_GLM <- fitGLM(res_scDC_noClust, c("WT",'DFcKO'), 
                  pairwise = T)
summary(res_GLM$pool_res_fixed)
summary(res_GLM$pool_res_random)
