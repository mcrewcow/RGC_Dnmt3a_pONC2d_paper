library(Seurat)
library(SeuratDisk)
lydia <- LoadH5Seurat('F://lydia.h5Seurat0.h5seurat')
head(lydia)


library(ggplot2)
library(ggpubr)
library(escape)
library(patchwork)

gene.sets1 <- getGeneSets(library = "C5", gene.sets = c('GOBP_NEURON_DEATH','GOBP_RESPONSE_TO_AXON_INJURY', 
                                                        'GOBP_INFLAMMATORY_RESPONSE', 'GOBP_INFLAMMASOME_COMPLEX_ASSEMBLY', 
                                                        'GOBP_ACUTE_INFLAMMATORY_RESPONSE', 'GOBP_CYTOKINE_PRODUCTION_INVOLVED_IN_INFLAMMATORY_RESPONSE',
                                                        'GOBP_NEUROINFLAMMATORY_RESPONSE'),
                          species = 'Mus musculus')

ES <- enrichIt(obj = lydia, 
               gene.sets = gene.sets1, 
               groups = 1000)

lydia <- AddMetaData(lydia, ES)

ES2 <- data.frame(lydia[[]], Idents(lydia))
colnames(ES2)[ncol(ES2)] <- "cluster"

lyd_RGC <- ES2
fun_range <- function(x) {                              # Create user-defined function
  (x - min(x)) / (max(x) - min(x))}

neude <- aggregate(lyd_RGC$GOBP_NEURON_DEATH, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
neude$neude <- fun_range(x = neude$x) 
resax <- aggregate(lyd_RGC$GOBP_RESPONSE_TO_AXON_INJURY, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
resax$resax <- fun_range(x = resax$x) 

acinf <- aggregate(lyd_RGC$GOBP_ACUTE_INFLAMMATORY_RESPONSE, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
acinf$acinf <- fun_range(x = acinf$x) 
cytpr <- aggregate(lyd_RGC$GOBP_CYTOKINE_PRODUCTION_INVOLVED_IN_INFLAMMATORY_RESPONSE, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
cytpr$cytpr <- fun_range(x = cytpr$x) 
infco <- aggregate(lyd_RGC$GOBP_INFLAMMASOME_COMPLEX_ASSEMBLY, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
infco$infco <- fun_range(x = infco$x) 
infre <- aggregate(lyd_RGC$GOBP_INFLAMMATORY_RESPONSE, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
infre$infre <- fun_range(x = infre$x) 
neure <- aggregate(lyd_RGC$GOBP_NEUROINFLAMMATORY_RESPONSE, list(lyd_RGC$anno2, lyd_RGC$background), FUN = mean)
neure$neure <- fun_range(x = neure$x) 

final <- neude
final$neude <- neude$neude
final$resax <- resax$resax
final$acinf <- acinf$acinf
final$cytpr <- cytpr$cytpr
final$infco <- infco$infco
final$infre <- infre$infre
final$neure <- neure$neure

head(final)
final$injury <- final$resax + final$neude
final$inflam <- final$acinf + final$cytpr + final$infco + final$infre + final$neure

final$injury_new <- fun_range(x = final$injury) 
final$inflam_new <- fun_range(x = final$inflam) 

testnew <- final %>% select(Group.1, injury_new, inflam_new, Group.2) %>%
  pivot_longer(., cols = c(injury_new, inflam_new), names_to = "Var", values_to = "Val")

head(testnew)
ggplot(testnew, aes(x = reorder(Group.1, +Val), y = Val, fill = Group.2, color = Group.2, group = Group.2)) +
  geom_point() + geom_line() + theme_bw() + coord_flip() + facet_wrap(~Var)
