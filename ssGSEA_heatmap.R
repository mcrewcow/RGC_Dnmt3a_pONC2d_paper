library(ggplot2)
library(ggpubr)
library(escape)

#perform ssGSEA enrichment
ES <- enrichIt(obj = lyd_RGC, 
               gene.sets = gene.sets1, 
               groups = 1000, cores = 8)
ES2 <- data.frame(lyd_RGC[[]], Idents(lyd_RGC))
colnames(ES2)[ncol(ES2)] <- "cluster"

#find the averages per groups
aggregate(ES2$GOBP_AXON_DEVELOPMENT, list(ES2$background), FUN=mean)

lyd$Group.1 <- factor(lyd$Group.1, levels = c('alpha ON-S/M4 | alpha ON-T','W3L2 | F-RGC-novel | C44 | C35','alpha OFF-S',
'alpha OFF-T | alpha ON-T','C10','C25 | C34','ooDSGC-D/V','C24','C36','M1b | C27','T-RC-S1 | T-RC-S2','U-3','MX | C37','ooDSGC-N',
'C14','U-2','C8','C18 | C37','W3D2 | W3D3','M1a | M2','C7','T-RGC novel | C5','C35','W3D1','C11','C29',
'F-mini-ON','W3B','C15','C19','F-midi-OFF','U-1','F-mini-OFF','W3D1 | W3L1 ','F-midi-ON'))

#draw the heatmap
ggplot(lyd, aes(x = Group.1, y = Group.2, fill= AXON_DEVELOPMENT)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) +
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint =2400) + theme_bw() + coord_fixed() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#updated order version
lyd$Group.1 <- factor(lyd$Group.1, levels = c('M1b | C27', 'T-RC-S1 | T-RC-S2', 'C18 | C37', 'C14','alpha ON-S/M4 | alpha ON-T' , 'F-mini-OFF', 'U-1',
'U-2', 'C25 | C34', 'C10', 'W3D1 | W3L1 ', 'ooDSGC-D/V', 'T-RGC novel | C5', 'C8', 'C11', 'F-mini-ON', 'alpha OFF-S', 'MX | C37',
'ooDSGC-N', 'C29', 'F-midi-ON','M1a | M2', 'C24', 'W3L2 | F-RGC-novel | C44 | C35', 'U-3','C36','W3D1','F-midi-OFF','C15','W3B','C35','C19',
'W3D2 | W3D3','alpha OFF-T | alpha ON-T','C7'))

ggplot(lyd, aes(x = Group.1, y = Group.2, fill= AXON_DEVELOPMENT)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) +
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint =2400) + theme_bw() + coord_fixed() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#generate 6 plots for every pathway

library(patchwork)
p1 +  theme(axis.text.x=element_blank(),axis.title.x = element_blank()) + 
    p2 +  theme(axis.text.x=element_blank(),axis.title.x = element_blank()) + 
    p3 +  theme(axis.text.x=element_blank(),axis.title.x = element_blank()) + 
    p4 +  theme(axis.text.x=element_blank(),axis.title.x = element_blank()) + 
    p5 +  theme(axis.text.x=element_blank(),axis.title.x = element_blank()) + 
    p6 + plot_layout(ncol = 1)
