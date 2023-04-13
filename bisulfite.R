library(ggplot2)

#Load the bisulfite DEGs, quantify rich factor
#GO barplot:
ggplot(data = df) + geom_bar(aes(x=Rich_factor,y=reorder(Description, +Rich_factor),fill=Meth),stat="identity",position="identity") +  theme_bw() +xlim(-17,17)


#KEGG dotplot:
ggplot(df1, aes(x = df1$Rich_factor, y = reorder(df1$Term, df1$Corrected_P_Value))) + geom_point(aes(size = Input_number, colour = df1$Corrected_P_Value)) 
    + scale_colour_gradientn(name = 'category', colours = c('red', 'blue'),
    limits = c(0,1)) +theme_bw() + xlim(0.06, 0.24)
