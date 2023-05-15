library(ggplot2)

#Load the bisulfite DEGs, quantify rich factor
#GO barplot:
ggplot(data = df) + geom_bar(aes(x=Rich_factor,y=reorder(Description, +Rich_factor),fill=Meth),stat="identity",position="identity") +  theme_bw() +xlim(-17,17)


#KEGG dotplot:
ggplot(df1, aes(x = df1$Rich_factor, y = reorder(df1$Term, df1$Corrected_P_Value))) + geom_point(aes(size = Input_number, colour = df1$Corrected_P_Value)) 
    + scale_colour_gradientn(name = 'category', colours = c('red', 'blue'),
    limits = c(0,1)) +theme_bw() + xlim(0.06, 0.24)

library(scales)

#adjusted p-value scaling
ggplot(my_data, aes(x = my_data$Rich_factor, y = reorder(my_data$Term, my_data$Rich_factor))) + geom_point(aes(size = Input.number,
    colour = my_data $Corrected.P.Value)) + scale_colour_gradientn(name = 'category', colours = c('red', 'blue'),trans=log2_trans(),
                         limits = c(min(my_data$Corrected.P.Value),max(my_data$Corrected.P.Value)), breaks = c(0,0.000001,0.0001,0.005)) 
                         +theme_bw() + xlim(0.08, 0.21)
