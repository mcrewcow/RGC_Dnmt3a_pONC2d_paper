gene1 <- lyd_RGC[['RNA']]@data["Serpine2",] 
gene2<- lyd_RGC[['RNA']]@data["Amigo2",] 
Serpine2Amigo2 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Lypd1",] 
gene2<- lyd_RGC[['RNA']]@data["Ntrk1",] 
Lypd1Ntrk1 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Foxp2",] 
gene2<- lyd_RGC[['RNA']]@data["Irx4",] 
Foxp2Irx4 <- (gene1 + gene2)

Apela <- lyd_RGC[['RNA']]@data["Apela",] 

gene1 <- lyd_RGC[['RNA']]@data["Cartpt",] 
gene2<- lyd_RGC[['RNA']]@data["Col25a1",] 
CartptCol25a1 <- (gene1 + gene2)

lyd_RGC[['NEW']] <- CreateAssayObject(data = rbind(Serpine2Amigo2, Lypd1Ntrk1, Foxp2Irx4, Apela,
                                                   CartptCol25a1))
DefaultAssay(lyd_RGC) <- "NEW"
DotPlot(lyd_RGC, features = c('Serpine2Amigo2', 'Lypd1Ntrk1', 'Foxp2Irx4','Apela',
                              'CartptCol25a1'), dot.scale = 10) 

#change the order of RGCs to follow the expression + unknnown RGC subtypes
