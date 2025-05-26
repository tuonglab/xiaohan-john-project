# Project plan

Title: Curating scRNA-seq data of paediatric cancers for pan-paedcancer atlas construction

We have collected 47 paediatric cancer datasets and we aim to integrate them to build an atlas.

The resulting pan-paedcancer meta dataset can be accessed here: 
https://figshare.com/articles/dataset/all_cancer_meta_anndata_scVI_pca_clean_h5ad/29146493?file=54821375

## Folder structure

```bash
pan-paedcancer-scrnaseq/
├── notebooks/ 
│   ├── 01_count_matrix_generation/ # extract count matrices from each available scRNA-seq dataset
│   ├── 02_meta_analysis/ # construct a pan-paedcancer single-cell atlas
├── scripts/
```
