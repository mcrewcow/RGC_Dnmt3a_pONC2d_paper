#perform ssGSEA enrichment
ES <- enrichIt(obj = lyd_RGC, 
               gene.sets = gene.sets1, 
               groups = 1000, cores = 8)
ES2 <- data.frame(lyd_RGC[[]], Idents(lyd_RGC))
colnames(ES2)[ncol(ES2)] <- "cluster"

#find the averages per groups
aggregate(ES2$GOBP_AXON_DEVELOPMENT, list(ES2$background), FUN=mean)

lyd$Group.1 <- factor(lyd$Group.1, levels = c('alpha ON-S/M4 | alpha ON-T','W3L2 | F-RGC-novel | C44 | C35','alpha OFF-S',
'alpha OFF-T | alpha ON-T','C10','C25 | C34','ooDSGC-D/V','C24','C36','M1b | C27','T-RC-S1 | T-RC-S2','U-3','U-2','C8','C18 | C37',
'W3D2 | W3D3','M1a | M2','MX | C37','ooDSGC-N','C14','C7','T-RGC novel | C5','C35','W3D1','C11','C29','F-mini-ON','W3B',
'C15','C19','F-midi-OFF','U-1','F-mini-OFF','W3D1 | W3L1 ','F-midi-ON'))

#draw the heatmap
ggplot(lyd, aes(x = Group, y = Pathway, fill= Converted)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) + geom_text(aes(label = round(Converted,1), colours = 'black'))+
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint = 1) +
    coord_fixed() + theme_bw()
