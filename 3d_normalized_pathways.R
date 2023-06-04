library(escape)
#perform standart escape analysis to ES2 object

axdev <- aggregate(lyd_RGC$GOBP_AXON_DEVELOPMENT, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
axdev$axdev <- fun_range(x = axdev$x)
opnm <- aggregate(lyd_RGC$GOBP_OPTIC_NERVE_MORPHOGENESIS, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
opnm$opnm <- fun_range(x = opnm$x)
regax <- aggregate(lyd_RGC$GOBP_REGULATION_OF_AXONOGENESIS, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
regax$regax <- fun_range(x = regax$x)
dende <- aggregate(lyd_RGC$GOBP_DENDRITE_DEVELOPMENT, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
dende$dende <- fun_range(x = dende$x)

neude <- aggregate(lyd_RGC$GOBP_NEURON_DEATH, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
neude$neude <- fun_range(x = neude$x) 
resax <- aggregate(lyd_RGC$GOBP_RESPONSE_TO_AXON_INJURY, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
resax$resax <- fun_range(x = resax$x) 

acinf <- aggregate(lyd_RGC$GOBP_ACUTE_INFLAMMATORY_RESPONSE, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
acinf$acinf <- fun_range(x = acinf$x) 
cytpr <- aggregate(lyd_RGC$GOBP_CYTOKINE_PRODUCTION_INVOLVED_IN_INFLAMMATORY_RESPONSE, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
cytpr$cytpr <- fun_range(x = cytpr$x) 
infco <- aggregate(lyd_RGC$GOBP_INFLAMMASOME_COMPLEX_ASSEMBLY, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
infco$infco <- fun_range(x = infco$x) 
infre <- aggregate(lyd_RGC$GOBP_INFLAMMATORY_RESPONSE, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
infre$infre <- fun_range(x = infre$x) 
neure <- aggregate(lyd_RGC$GOBP_NEUROINFLAMMATORY_RESPONSE, list(lyd_RGC$annotation, lyd_RGC$background), FUN = mean)
neure$neure <- fun_range(x = neure$x) 

final <- dende
final$regax <- regax$regax
final$opnm <- opnm$opnm
final$axdev <- axdev$axdev
final$neude <- neude$neude
final$resax <- resax$resax
final$acinf <- acinf$acinf
final$cytpr <- cytpr$cytpr
final$infco <- infco$infco
final$infre <- infre$infre
final$neure <- neure$neure

final$regenfinal <- final$dende + final$regax + final$opnm + final$axdev
final$injury <- final$resax + final$neude
final$inflam <- final$acinf + final$cytpr + final$infco + final$infre + final$neure
final$regenfinal_new <- fun_range(x = final$regenfinal) 
final$injury_new <- fun_range(x = final$injury) 
final$inflam_new <- fun_range(x = final$inflam) 

testnew <- final %>% select(Group.1, regenfinal_new, injury_new, inflam_new, Group.2) %>%
  pivot_longer(., cols = c(regenfinal_new, injury_new, inflam_new), names_to = "Var", values_to = "Val")

ggplot(testnew, aes(x = reorder(Group.1, +Val), y = Val, fill = Group.2, color = Group.2, group = Group.2)) +
  geom_point() + geom_line() + theme_bw() + coord_flip() + facet_wrap(~Var)

final_ko <- final[which(final$Group.2=='DFcKO'),]
final_wt <- final[which(final$Group.2=='WT'),]
final_ko$delta_injury_new <- final_ko$injury_new - final_wt$injury_new
final_ko$delta_infl_new <- final_ko$inflam_new - final_wt$inflam_new
final_ko$delta_regen_new <- final_ko$regenfinal_new - final_wt$regenfinal_new

library(plotly)

fig <- plot_ly(final_ko, x = ~delta_injury_new, y = ~delta_infl_new, z = ~delta_regen_new,  color = ~Group.1, text = final_ko$Group.1)  %>% 
    add_markers() #wo relabeling

fig <- plot_ly(final_ko, x = ~delta_injury_new, y = ~delta_infl_new, z = ~delta_regen_new,  color = ~Group.1, text = final_ko$Group.1)  %>% 
    add_markers() %>% 
    layout(scene = list(xaxis = list(title = "Δ injury", zerolinewidth=4, zerolinecolor='black'),
                        yaxis = list(title = "Δ inflammation",zerolinewidth=4, zerolinecolor='black'),
                        zaxis = list(title = "Δ regeneration",zerolinewidth=4, zerolinecolor='black')))
fig

htmlwidgets::saveWidget(
widget = fig, #the plotly object
file = "C://Users/Emil/Downloads/figure.html", #the path & file name
selfcontained = TRUE #creates a single html file
)


install.packages("webshot")
library(webshot)

final_ko_test$Group.1 <- as.character(final_ko_test$Group.1)
final_ko_test$Group.1[final_ko_test$Group.1 == 'U-3'] <- 'ooDGSC-D/V_2'
final_ko_test$Group.1[final_ko_test$Group.1 == 'U-2'] <- 'C8_2'
final_ko_test$Group.1[final_ko_test$Group.1 == 'U-1'] <- 'C19_2'
final_ko_test$Group.1[final_ko_test$Group.1 == 'C5'] <- 'J-RGC'
final_ko_test$Group.1[final_ko_test$Group.1 == 'T-RGC novel | C5'] <- 'T-RGC novel | J-RGC'
final_ko_test$Group.1[final_ko_test$Group.1 == 'T-RC-S1 | T-RGC-S2'] <- 'T-RGC-S1 | T-RGC-S2'
final_ko_test$Group.1[final_ko_test$Group.1 == 'ooDGSC-D/V_2'] <- 'ooDSGC-D/V_2'

final_ko_test1$Group.1 <- factor(final_ko_test1$Group.1, levels = c('C10', 'C11', 'C14', 'C15','C18 | C37',
                                                                    'C19','C19_2','C24','C25 | C34', 'C29','C35',
                                                                    'C36','C7','C8','C8_2','F-midi-OFF','F-midi-ON',
                                                                    'F-mini-OFF','F-mini-ON','M1a | M2','M1b | C27','MX | C37',
                                                                    'T-RGC novel | J-RGC','T-RGC-S1 | T-RGC-S2','W3B','W3D1','W3D1 | W3L1',
                                                                    'W3D2 | W3D3','W3L2 | F-RGC-novel | C44 | C35','alpha OFF-S',
                                                                    'alpha OFF-T | alpha ON-T', 'alpha ON-S/M4 | alpha ON-T','ooDGSC-D/V_2',
                                                                    'ooDSGC-D/V','ooDSGC-N'))


lyd_RGC <- SetIdent(lyd_RGC, value = 'annotation') #dimplot to check the color palette

library(scales)
show_col(hue_pal()(35))

fig <- plot_ly(final_ko_test1, x = ~delta_injury_new, y = ~delta_infl_new, z = ~delta_regen_new, color = ~Group.1, colors = c('#F365E6','#E76BF3','#00C094',
                                    '#D774FD','#53B400','#A58AFF','#E88523','#8195FF','#A3A500','#B4A000','#75AF00','#00B0F6',
                                    '#FF61C5','#FB61D7','#F17E4F','#00BECD','#00A8FF','#FF699D','#FD6F86','#00B6EB','#00C0BB',
                                    '#00B70C','#C49A00','#00BF7D','#FF64B2','#DE8C00','#D29300','#00BBDD','#8EAB00','#4B9FFF','#00BB45','#00BD64',
                                    '#F8766D','#C17FFF','#00C1A8'), text = final_ko_test1$Group.1)  %>% 
    add_markers() %>% 
    layout(scene = list(xaxis = list(title = "Δ injury", zerolinewidth=4, zerolinecolor='black'),
                        yaxis = list(title = "Δ inflammation",zerolinewidth=4, zerolinecolor='black'),
                        zaxis = list(title = "Δ regeneration",zerolinewidth=4, zerolinecolor='black')))
fig



fig <- plot_ly(final_ko_test, x = ~delta_injury_new, y = ~delta_regen_new,  color = ~Group.1, text = final_ko$Group.1)  %>% 
  add_markers() %>% 
  layout(scene = list(xaxis = list(title = "Δ injury", zerolinewidth=4, zerolinecolor='black'),
                      yaxis = list(title = "Δ regeneration",zerolinewidth=4, zerolinecolor='black')))
fig

m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)

fig <- plot_ly(final_ko_test, x = ~delta_injury_new, y = ~delta_regen_new,  color = ~Group.1, text = final_ko$Group.1)  %>% 
  add_markers() %>% 
  layout(scene = list(xaxis = list(title = "Δ injury", zerolinewidth=4, zerolinecolor='black'),
                      yaxis = list(title = "Δ regeneration",zerolinewidth=4, zerolinecolor='black')),autosize = F, width = 600, height = 700, margin = m)
fig

fig <- plot_ly(final_ko_test, x = ~delta_infl_new, y = ~delta_regen_new,  color = ~Group.1, text = final_ko$Group.1)  %>% 
  add_markers() %>% 
  layout(scene = list(xaxis = list(title = "Δ inflammation", zerolinewidth=4, zerolinecolor='black'),
                      yaxis = list(title = "Δ regeneration",zerolinewidth=4, zerolinecolor='black')),autosize = F, width = 600, height = 700, margin = m)
fig

export(fig, "C://Users/Emil/Downloads/2d_inj_reg_final.pdf") #and others
