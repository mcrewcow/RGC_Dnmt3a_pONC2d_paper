library(ggplot2)

table(lyd_RGC$annotation, lyd_RGC$background)

ggplot(df) + geom_bar(aes(x = reorder(Cluster, -Number), y = Number, fill = Background
+                           ), stat = 'identity', position=position_dodge()) + theme_bw() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
