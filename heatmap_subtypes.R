gene1 <- lyd_RGC[['RNA']]@data["Serpine2",] 
gene2<- lyd_RGC[['RNA']]@data["Amigo2",] 
Serpine2Amigo2 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Lypd1",] 
gene2<- lyd_RGC[['RNA']]@data["Ntrk1",] 
Lypd1mNtrk1 <- (gene1 - gene2)

gene1 <- lyd_RGC[['RNA']]@data["Foxp2",] 
gene2<- lyd_RGC[['RNA']]@data["Irx4",] 
Foxp2Irx4 <- (gene1 + gene2)

Pde1a <- lyd_RGC[['RNA']]@data["Pde1a",]

gene1 <- lyd_RGC[['RNA']]@data["Tbr1",] 
gene2<- lyd_RGC[['RNA']]@data["Pcdh20",] 
Tbr1Pcdh20 <- (gene1 + gene2)

Zic1 <- lyd_RGC[['RNA']]@data["Zic1",]

gene1 <- lyd_RGC[['RNA']]@data["Tbx20",] 
gene2<- lyd_RGC[['RNA']]@data["Tagln2",] 
Tbx20Tagln2 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Prkcq",] 
gene2<- lyd_RGC[['RNA']]@data["Tac1",]
gene3<- lyd_RGC[['RNA']]@data["Spp1",] 
PrkcqTac1Spp1 <- (gene1 + gene2 - gene3)

gene1 <- lyd_RGC[['RNA']]@data["Slc7a11",] 
gene2<- lyd_RGC[['RNA']]@data["Plpp4",] 
Slc7a11Plpp4 <- (gene1 + gene2)

Gpr88 <- lyd_RGC[['RNA']]@data["Gpr88",]

gene1 <- lyd_RGC[['RNA']]@data["Serpinb1b",] 
gene2<- lyd_RGC[['RNA']]@data["Gm17750",] 
Serpinb1bGm17550 <- (gene1 + gene2)

Mmp17 <- lyd_RGC[['RNA']]@data["Mmp17",]

gene1 <- lyd_RGC[['RNA']]@data["Lypd1",] 
gene2<- lyd_RGC[['RNA']]@data["Ntrk1",] 
Lypd1Ntrk1 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Cartpt",] 
gene2<- lyd_RGC[['RNA']]@data["Vit",] 
CartptVit <- (gene1 + gene2)

Apela <- lyd_RGC[['RNA']]@data["Apela",] 

gene1 <- lyd_RGC[['RNA']]@data["Cartpt",] 
gene2<- lyd_RGC[['RNA']]@data["Col25a1",] 
CartptCol25a1 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Tbr1",] 
gene2<- lyd_RGC[['RNA']]@data["Irx4",] 
Tbr1Irx4 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Pcdh20",] 
gene2<- lyd_RGC[['RNA']]@data["4833423E24Rik",] 
Pcdh204833423E24Rik <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Penk",] 
gene2<- lyd_RGC[['RNA']]@data["Prdm8",]
gene3<- lyd_RGC[['RNA']]@data["Slc24a2",] 
PenkPrdm8Slc24a2 <- (gene1 + gene2 + gene3)

gene1 <- lyd_RGC[['RNA']]@data["Penk",] 
gene2<- lyd_RGC[['RNA']]@data["Gal",] 
PenkGal <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Tbr1",] 
gene2<- lyd_RGC[['RNA']]@data["Calca",] 
Tbr1Calca <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Serpine2",] 
gene2<- lyd_RGC[['RNA']]@data["Cdhr1",] 
Serpine2Cdhr1 <- (gene1 + gene2)

Prokr1 <- lyd_RGC[['RNA']]@data["Prokr1",] 

Fam19a4 <- lyd_RGC[['RNA']]@data["Fam19a4",] 

Slc17a7 <- lyd_RGC[['RNA']]@data["Slc17a7",] 

gene1 <- lyd_RGC[['RNA']]@data["Penk",] 
gene2<- lyd_RGC[['RNA']]@data["Igfbp5",] 
PenkIgfbp5 <- (gene1 + gene2)

Prkcg <- lyd_RGC[['RNA']]@data["Prkcg",] 

gene1 <- lyd_RGC[['RNA']]@data["Foxp2",] 
gene2<- lyd_RGC[['RNA']]@data["Cdk15",] 
Foxp2Cdk15 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Stxbp6",] 
gene2<- lyd_RGC[['RNA']]@data["Prlr",] 
Stxbp6Prlr <- (gene1 + gene2)

Postn <- lyd_RGC[['RNA']]@data["Postn",] 

gene1 <- lyd_RGC[['RNA']]@data["Tbx20",] 
gene2<- lyd_RGC[['RNA']]@data["Spp1",] 
Tbx20Spp1 <- (gene1 + gene2)

Rhox5 <- lyd_RGC[['RNA']]@data["Rhox5",] 

gene1 <- lyd_RGC[['RNA']]@data["Adcyap1",] 
gene2<- lyd_RGC[['RNA']]@data["Opn4",]
gene3<- lyd_RGC[['RNA']]@data["Nmb",] 
Adcyap1Opn4Nmb <- (gene1 + gene2 - gene3)

gene1 <- lyd_RGC[['RNA']]@data["Tpbg",] 
gene2<- lyd_RGC[['RNA']]@data["Spp1",] 
TpbgSpp1 <- (gene1 - gene2)

gene1 <- lyd_RGC[['RNA']]@data["Igfbp4",] 
gene2<- lyd_RGC[['RNA']]@data["Chrm2",] 
Igfbp4Chrm2 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Stxbp6",] 
gene2<- lyd_RGC[['RNA']]@data["Coch",] 
Stxbp6Coch <- (gene1 + gene2)

Ceacam10 <- lyd_RGC[['RNA']]@data["Ceacam10",] 

gene1 <- lyd_RGC[['RNA']]@data["Foxp2",] 
gene2<- lyd_RGC[['RNA']]@data["Anxa3",] 
Foxp2Anxa3 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Neurod2",] 
gene2<- lyd_RGC[['RNA']]@data["S100b",] 
Neurod2S100b <- (gene1 + gene2)

Nmb <- lyd_RGC[['RNA']]@data["Nmb",] 

gene1 <- lyd_RGC[['RNA']]@data["Spp1",] 
gene2<- lyd_RGC[['RNA']]@data["Kit",] 
Spp1Kit <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Spp1",] 
gene2<- lyd_RGC[['RNA']]@data["Fes",] 
Spp1Fes <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Spp1",] 
gene2<- lyd_RGC[['RNA']]@data["Il1rapl2",] 
Spp1Il1rapl2 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Bhlhe22",] 
gene2<- lyd_RGC[['RNA']]@data["Fxyd6",] 
Bhlhe22Fxyd6 <- (gene1 + gene2)

gene1 <- lyd_RGC[['RNA']]@data["Spp1",] 
gene2<- lyd_RGC[['RNA']]@data["Tpbg",] 
Spp1Tpbg <- (gene1 + gene2)

lyd_RGC[['NEW']] <- CreateAssayObject(data = rbind(DotPlot(lyd_RGC, features = c('Serpine2Amigo2', 'Lypd1mNtrk1',
                              'Foxp2Irx4', 'Pde1a', 'Tbr1Pcdh20', 'Zic1',
                              'Tbx20Tagln2','PrkcqTac1Spp1','Slc7a11Plpp4',
                              'Gpr88','Serpinb1bGm17550','Mmp17','Lypd1Ntrk1',
                              'CartptVit', 'Apela', 'CartptCol25a1','Tbr1Irx4',
                              'Pcdh204833423E24Rik','PenkPrdm8Slc24a2','PenkGal',
                              'Tbr1Calca','Serpine2Cdhr1','Prokr1','Fam19a4',
                              'Slc17a7','PenkIgfbp5','Prkcg','Foxp2Cdk15','Stxbp6Prlr',
                              'Postn','Tbx20Spp1','Rhox5','Adcyap1Opn4Nmb',
                              'TpbgSpp1','Igfbp4Chrm2','Stxbp6Coch','Ceacam10',
                              'Foxp2Anxa3','Neurod2S100b','Nmb','Spp1Kit',
                              'Spp1Fes','Spp1Il1rapl2','Bhlhe22Fxyd6','Spp1Tpbg'), dot.scale = 10) ))
DefaultAssay(lyd_RGC) <- "NEW"
DotPlot(lyd_RGC, features = c('Serpine2Amigo2', 'Lypd1Ntrk1', 'Foxp2Irx4','Apela',
                              'CartptCol25a1'), dot.scale = 10) 

#change the order of RGCs to follow the expression + unknnown RGC subtypes
