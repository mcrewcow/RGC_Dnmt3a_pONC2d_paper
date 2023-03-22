#perform ssGSEA enrichment
ES <- enrichIt(obj = lyd_RGC, 
               gene.sets = gene.sets1, 
               groups = 1000, cores = 8)
ES2 <- data.frame(lyd_RGC[[]], Idents(lyd_RGC))
colnames(ES2)[ncol(ES2)] <- "cluster"

#find the averages per groups
aggregate(ES2$GOBP_AXON_DEVELOPMENT, list(ES2$background), FUN=mean)

#draw the heatmap
ggplot(lyd, aes(x = Group, y = Pathway, fill= Converted)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) + geom_text(aes(label = round(Converted,1), colours = 'black'))+
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint = 1) +
    coord_fixed() + theme_bw()
