#preload and integrate fetal + adult data, select RGCs by orig.ident, choose RBPMS positive cells (RBPMS > 1)

library(ggplot2)
ggplot(data_plot, aes(x = Stage, y = Percent, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", color = 'black') +
  labs(title = "Stacked Bar Plot with Positive and Negative Groups",
       x = "Stage",
       y = "Expression") +
  scale_fill_manual(values = c("Positive_Value" = "gray", "Negative_Value" = "white")) +
  theme_bw()
data_plot$Stage <- factor(data_plot$Stage, levels = c('FD59','FD82','FD125','Adult'))
