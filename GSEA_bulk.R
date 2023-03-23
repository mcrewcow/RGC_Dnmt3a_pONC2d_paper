data <- read.csv('G://allsigDEG.csv')
if (!("clusterProfiler" %in% installed.packages())) {
  # Install this package if it isn't installed yet
  BiocManager::install("clusterProfiler", update = FALSE)
}

if (!("msigdbr" %in% installed.packages())) {
  # Install this package if it isn't installed yet
  BiocManager::install("msigdbr", update = FALSE)
}

if (!("org.Mm.eg.db" %in% installed.packages())) {
  # Install this package if it isn't installed yet
  BiocManager::install("org.Mm.eg.db", update = FALSE)
}

# Attach the library
library(clusterProfiler)

# Package that contains MSigDB gene sets in tidy format
library(msigdbr)

# Human annotation package we'll use for gene identifier conversion
library(org.Mm.eg.db)

# We will need this so we can use the pipe: %>%
library(magrittr)

msigdbr_species()
mm_hallmark_sets <- msigdbr(
  species = "Mus musculus", # Replace with species name relevant to your data
  category = "H"
)
head(mm_hallmark_sets)
keytypes(org.Mm.eg.db)

# First let's create a mapped data frame we can join to the differential
# expression stats
dge_mapped_df <- data.frame(
  gene_symbol = mapIds(
    # Replace with annotation package for the organism relevant to your data
    org.Mm.eg.db,
    keys = data$gene,
    # Replace with the type of gene identifiers in your data
    keytype = "ENSEMBL",
    # Replace with the type of gene identifiers you would like to map to
    column = "SYMBOL",
    # This will keep only the first mapped value for each Ensembl ID
    multiVals = "first"
  )
) %>%
  # If an Ensembl gene identifier doesn't map to a gene symbol, drop that
  # from the data frame
  dplyr::filter(!is.na(gene_symbol)) %>%
  # Make an `Ensembl` column to store the rownames
  tibble::rownames_to_column("Ensembl") %>%
  # Now let's join the rest of the expression data
  dplyr::inner_join(data, by = c("Ensembl" = "gene"))

head(dge_mapped_df)

any(duplicated(dge_mapped_df$gene_symbol))

# Let's create a named vector ranked based on the log2 fold change values
lfc_vector <- dge_mapped_df$log2FoldChange
names(lfc_vector) <- dge_mapped_df$gene_symbol

# We need to sort the log2 fold change values in descending order here
lfc_vector <- sort(lfc_vector, decreasing = TRUE)

# Look at first entries of the ranked log2 fold change vector
head(lfc_vector)

# Set the seed so our results are reproducible:
set.seed(2023)

gsea_results <- GSEA(
  geneList = lfc_vector, # Ordered ranked gene list
  minGSSize = 25, # Minimum gene set size
  maxGSSize = 500, # Maximum gene set set
  pvalueCutoff = 0.05, # p-value cutoff
  eps = 0, # Boundary for calculating the p value
  seed = TRUE, # Set seed to make results reproducible
  pAdjustMethod = "BH", # Benjamini-Hochberg correction
  TERM2GENE = dplyr::select(
    mm_hallmark_sets,
    gs_name,
    gene_symbol
  )
)

# We can access the results from our `gsea_results` object using `@result`
head(gsea_results@result)
gsea_result_df <- data.frame(gsea_results@result)

gsea_result_df %>%
  # This returns the 5 rows with the largest NES values
  dplyr::slice_max(NES, n = 5)

gsea_result_df %>%
  # Return the 3 rows with the smallest (most negative) NES values
  dplyr::slice_min(NES, n = 3)

readr::write_tsv(
  gsea_result_df,
  file.path('C://Users/Emil/10X/Lydia_GSEA.tsv'
  )
)

#to visualize
libraru(ggplot2)
ggplot(lyd, aes(x = reorder(Pathway,Fold.Enrichment), y = Fold.Enrichment,  fill = c('red','red','red','red','red','red','red','red','red','red',
'blue','blue','blue','blue','blue','blue','blue','blue','blue','blue'))) + geom_bar(stat = "identity",  color="black",) +
geom_hline(yintercept=0, linetype="dashed", color = "black") + theme_bw() + theme(legend.position = 'none') + coord_flip() + ylim(-12,12)
