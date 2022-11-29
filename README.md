>**Moved to [MolecularMaterials/nfp](https://github.com/MolecularMaterials/nfp)! Please follow the link to the new page for the latest updates.**
![alt text](https://github.com/MolecularMaterials/MPNN-Mo2C/blob/main/MPNN-Mo2C.png?raw=true)
# MPNN-Mo2C
Python codes and graph data as described in:\
***"Accelerating the Evaluation of Crucial Descriptors for Catalyst Screening via Message Passing Neural Network"***\
Hieu A. Doan, Chenyang Li, Logan Ward, Mingxia Zhou, Larry A. Curtiss, and Rajeev S. Assary. 

# Dependencies
- Python (3.6.6) 
- Numpy (1.19.4)
- Tensorflow (2.5.0)
- Pandas (1.1.5)
- Scikit-learn (0.23.1)
- Seaborn (0.11.1)
- Matplotlib (3.3.1) 

# Instructions 
## Preprocess .graphml files and create an input dataframe
- Unzip **notebooks/Oads_Mo2C_graphml.tar.gz** that contains all .graphml files of adsorption geometries:\
`tar -xvf Oads_Mo2C_graphml.tar.gz`
- Run **notebooks/Oads_Mo2C_catalysts_PreprocessGraphStructure.ipynb** to convert graph data into a dataframe input for MPNN model

## Train the model and make predictions on the test set
- Run **notebooks/Oads_Mo2C_catalysts.ipynb** 

## Additional instructions for analyzing Atomic Simulation Environment (ASE) database and generating graphs in .graphml format
If you want to experiment with building your own adsorption graphs from the VASP outputs used in the paper, please follow the steps below:
1. Download the data in ASE database format (.db) from the Materials Data Facility [here](https://petreldata.net/mdf/detail/doan_datasets_accelerating_representations_v1.1/)
2. Run **notebooks/DescriptorGen-networkxGraph-pristine-Mo2C.ipynb** and **notebooks/DescriptorGen-networkxGraph-doped-Mo2C.ipynb** with the downloaded "Oads_Mo2C_pristine_MDF.db" and "Oads_Mo2C_doped_MDF.db", respectively