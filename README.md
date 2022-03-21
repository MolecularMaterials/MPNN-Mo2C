![alt text](https://github.com/MolecularMaterials/MPNN-Mo2C/blob/main/MPNN-Mo2C.png?raw=true)
# MPNN-Mo2C
Python codes and graph data as described in:\
***"Accelerating Catalyst Screening via Machine-learned Local Coordination Graph Representations"***\
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

