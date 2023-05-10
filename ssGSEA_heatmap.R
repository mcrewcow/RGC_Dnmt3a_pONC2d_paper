library(ggplot2)
library(ggpubr)
library(escape)

gene.sets1 <- getGeneSets(library = "C5", gene.sets = c("GOBP_NEURON_DEATH",'GOBP_DENDRITE_EXTENSION','GOBP_OPTIC_NERVE_MORPHOGENESIS',
                                                        'GOBP_AXON_DEVELOPMENT','GOBP_REGULATION_OF_AXONOGENESIS','GOBP_RESPONSE_TO_AXON_INJURY'),
                          species = 'Mus musculus')

#perform ssGSEA enrichment
ES <- enrichIt(obj = lyd_RGC, 
               gene.sets = gene.sets1, 
               groups = 1000, cores = 8)
ES2 <- data.frame(lyd_RGC[[]], Idents(lyd_RGC))
colnames(ES2)[ncol(ES2)] <- "cluster"

#find the averages per groups
aggregate(ES2$GOBP_AXON_DEVELOPMENT, list(ES2$background), FUN=mean)

#for WT/KO split
ggplot(lyd, aes(x = Condition, y = Pathway, fill= Amount)) +
    geom_tile(color = "black",
              lwd = 1,linetype = 1) +
    scale_fill_gradient2(low = "#075AFF",
                         mid = "white",
                         high = "#FF0000", midpoint = 1) + theme_bw() + coord_fixed() + geom_text(aes(label = round(Amount,1), colours = 'black'))
+ theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#for RGC subtypes split
lyd$Group.1 <- factor(lyd$Group.1, levels = c('alpha ON-S/M4 | alpha ON-T','W3L2 | F-RGC-novel | C44 | C35',
                                              'alpha OFF-S','alpha OFF-T | alpha ON-T','C10','C25 | C34','ooDSGC-D/V',
                                              'C24','C36','M1b | C27','T-RC-S1 | T-RGC-S2','U-3','MX | C37','ooDSGC-N',
                                              'C14','U-2','C8','C18 | C37','W3D2 | W3D3','M1a | M2','C7','T-RGC novel | C5',
                                              'C35','W3D1','C11','C29','F-mini-ON','W3B','C15','C19','F-midi-OFF','U-1','F-mini-OFF',
                                              'W3D1 | W3L1','F-midi-ON'))

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

axdev <- aggregate(lyd_RGC$GOBP_AXON_DEVELOPMENT, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
fun_range <- function(x) {                              # Create user-defined function
    (x - min(x)) / (max(x) - min(x))}
axdev$x <- fun_range(x = axdev$x)                        # Scale to 0/1
head(axdev)  

library(tidyverse)
dflist = list(axinj,regax,opnm,neudeath,dendrex,axdev)
total <- dflist %>% reduce(inner_join, by = 'Group.1')

total$regenfinal <- total$x.y + total$x.x.x + total$x.y.y.y + total$x.x.x.x
total$injury <- total$x.x + total$x.y.y
total$regenfinal_new <- fun_range(x = total$regenfinal) 
total$injury_new <- fun_range(x = total$injury) 

library(tidyr)
library(dplyr)
test <- axinj %>% select(Group.1, regenfinal_new, injury_new, Group.2) %>%
    pivot_longer(., cols = c(regenfinal_new, injury_new), names_to = "Var", values_to = "Val")
    
ggplot(test, aes(x = reorder(Group.1, +Val), y = Val, fill = Group.2, color = Group.2, group = Group.2)) +
geom_point() + geom_line() + theme_bw() + coord_flip() + facet_wrap(~Var)
   
