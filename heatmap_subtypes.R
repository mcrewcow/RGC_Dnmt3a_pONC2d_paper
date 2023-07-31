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


lyd_RGC$annotation <- factor(lyd_RGC$annotation, levels = c('W3D1 | W3L1','W3D1','F-mini-ON','F-mini-OFF','T-RGC novel | C5','W3B',
                                                           'C7','C8','C10','C11','ooDSGC-N','W3L2 | F-RGC-novel | C44 | C35',
                                                           'C14','C15','ooDSGC-D/V','T-RC-S1 | T-RGC-S2','C18 | C37','C19','MX | C37',
                                                           'W3D2 | W3D3','C24','C25 | C34','M1b | C27','F-midi-OFF',
                                                            'C29','M1a | M2','C35','C36','F-midi-ON','alpha OFF-T | alpha ON-T',
                                                            'alpha OFF-S','alpha ON-S/M4 | alpha ON-T','U-1','U-2','U-3'
                                                           ))
# c20, c26, c34, c39 - missing in the analysis
p <- AverageExpression(lyd_RGC2, features = c('Serpine2','Amigo2','Lypd1','Ntrk1','Foxp2','Irx4','Pde1a',
                                              'Tbr1','Pcdh20','Zic1','Tbx20','Tagln2','Prkcq',"Tac1",'Spp1','Slc7a11','Plpp4',
                                              'Gpr88','Serpinb1b','Gm17750','Mmp17','Lypd1','Ntrk1','Cartpt','Vit','Apela','Col25a1',
                                              'Pcdh20','4833423E24Rik','Penk','Prdm8','Slc24a2','Penk','Gal','Calca','Serpine2','Cdhr1',
                                              'Prokr1','Fam19a4','Slc17a7','Igfbp5','Prkcg','Foxp2','Cdk15','Stxbp6','Prlr','Postn','Tbx20',
                                              'Rhox5','Adcyap1','Opn4','Nmb','Tpbg','Igfbp4','Chrm2','Stxbp6','Coch','Ceacam10','Foxp2','Anxa3',
                                              'Neurod2','S100b','Nmb','Kit','Fes','Il1rapl2','Bhlhe22','Fxyd6','Tpbg'), group.by = 'annotation', assay = 'SCT')

DotPlot(lyd_RGC, features = c('Serpine2Amigo2', 'Lypd1mNtrk1',
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
                              'Spp1Fes','Spp1Il1rapl2','Bhlhe22Fxyd6','Spp1Tpbg')) 
library("tidyr")
mine.long <- pivot_longer(data = lyd, 
                           cols = -c(1),
                          names_to = "Features_upd", 
                          values_to = "Amount")

mine.long$Features_upd <- factor(mine.long$Features_upd, levels = c('W3D1...W3L1','W3D1','F.mini.ON','F.mini.OFF','T.RGC.novel...C5','W3B',
                                                            'C7','C8','C10','C11','ooDSGC.N','W3L2...F.RGC.novel...C44...C35',
                                                            'C14','C15','ooDSGC.D.V','T.RC.S1...T.RGC.S2','C18...C37','C19','MX...C37',
                                                            'W3D2...W3D3','C24','C25...C34','M1b...C27','F.midi.OFF',
                                                            'C29','M1a...M2','C35','C36','F.midi.ON','alpha.OFF.T...alpha.ON.T',
                                                            'alpha.OFF.S','alpha.ON.S.M4...alpha.ON.T','U.1','U.2','U.3'
))

mine.long$Features <- factor(mine.long$Features, levels = c('Serpine2Amigo2', 'Lypd1mNtrk1',
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
                                                            'Spp1Fes','Spp1Il1rapl2','Bhlhe22Fxyd6','Spp1Tpbg'
))

ggplot(mine.long, aes(x = Features_upd, y = Features, fill = Amount)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) +
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint =0.5) + theme_bw() + coord_fixed() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#Identified U-1, U-2, U-3. U-1 will be C19_2, U-2 > C8_2, U-3 > ooDSGC-D/V_2

mine.long$Features_upd <- factor(mine.long$Features_upd, levels = c('W3D1...W3L1','W3D1','F.mini.ON','F.mini.OFF','T.RGC.novel...C5','W3B',
                                                            'C7','U.2','C8','C10','C11','ooDSGC.N','W3L2...F.RGC.novel...C44...C35',
                                                            'C14','C15','ooDSGC.D.V','U.3','T.RC.S1...T.RGC.S2','C18...C37','U.1','C19','MX...C37',
                                                            'W3D2...W3D3','C24','C25...C34','M1b...C27','F.midi.OFF',
                                                            'C29','M1a...M2','C35','C36','F.midi.ON','alpha.OFF.T...alpha.ON.T',
                                                            'alpha.OFF.S','alpha.ON.S.M4...alpha.ON.T'
))

#order reverse
ggplot(mine.long, aes(x = reorder(Features_upd, desc(Features_upd)), y = Features, fill = Amount)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) +
    scale_fill_gradient2(low = "white",
                         mid = "white",
                         high = "#FF0000") + theme_bw() + coord_fixed() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))



#statistics for PTEN
library(ggpubr)
test_sign = list(c("DFcKO", "WT"))
VlnPlot(lyd_RGC, features = c('Pten'),
        pt.size = 0.1, 
        group.by = "background", y.max = 4
) + facet_wrap(~lyd_RGC$annotation) + stat_compare_means(comparisons = test_sign, label = "p.signif", method = 't.test')
