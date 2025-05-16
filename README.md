This is a fork of the code of the paper "Multimodal deep learning to predict prognosis in adult and pediatric brain tumors", for COMS672 final project. Done by Ekin Beyazit, Koushik Howlader.

**How to run**

**You need to be running this on a Nova instance, otherwise you would have to download multiple GBs per whole slide images and doing patch extraction. If you run through Nova, you can just use the default data filepath in the config_ours file we provided.**

1. Navigate into the folder 5_JointFusion

2. Run the following in the terminal: ```bash run_ours.sh```

This will create a file called training_output_ours.txt and write the program's outputs (loss and CI score information) into the file. We used this file to easily run 5 seeds and log the results. For ease of testing, we set NUM_RUNS to 1 in the sh file. Note that training will take 15-20 minutes. 

There are also example output txt files in the directory, which you can check. They are named after the parameters that we used (such as learning rate, dropout rate, batch size etc.), the corresponding parameters are also listed at the beginning of the txt file.

Again, if you run this on a Nova instance, you should not have to change any config file (because it uses absolute paths anyway). 

Our modifications include:

Added 1_JointFusion_train_ours.py - this is an altered version of the existing file 1_JointFusion_train.py that we added our own code. We commented our names to the parts that we added/changed.

Modified models.py - implemented attention layer and an altered version of the existing model architecture that combines the layers. We commented our names to the parts that we added/changed.

Added run_ours.sh which just runs our training code.

Added config_ours.json which acts as a default config for setting parameters for the training.

Added 128x32_0.001_0.0001_0.3.txt, 256x16_0.001_0.001_0.txt, 8x8_0.01_0.01_0.2_.txt files as output examples from the training code.










THIS REPO CONTAINS THE SOURCE CODE OF THE MODELS PRESENTED IN https://doi.org/10.1101/2022.09.21.22280223

# Multimodal data fusion of adult and pediatric brain tumors with deep learning

Sandra Steyaert <sup>1,\*</sup>, Yeping Lina Qiu<sup>1,2,\*</sup>, Yuanning Zheng<sup>1</sup>, Pritam Mukherjee<sup>1</sup>, Hannes Vogel<sup>3</sup> and Olivier Gevaert<sup>1,4,5,\*\*</sup>

1)	Stanford Center for Biomedical Informatics Research (BMIR), Department of Medicine, Stanford University, Stanford, CA, USA. 
2)	Department of Electrical Engineering, Stanford University, Stanford, CA, USA. 
3)	Department of Pathology, Stanford University, Stanford, CA, USA.
4)	Department of Biomedical Data Science, Stanford University, Stanford, CA, USA. 
5)	On behalf of The Children’s Brain Tumor Tissue Consortium (CBTTC).

\* Contributed equally

\*\* To whom correspondence should be addressed: ogevaert@stanford.edu


### Abstract

The introduction of deep learning in both imaging and genomics has significantly advanced the analysis of biomedical data. For complex diseases such as cancer different data modalities may reveal different disease characteristics, and the integration of imaging with genomic data has the potential to unravel additional information then when using these data sources in isolation. Here, we propose a DL framework that by combining histopathology images with gene expression profiles can predict prognosis of brain tumors.  Using two separate cohorts of 783 adult and 305 pediatric brain tumors, the developed multimodal data models achieved better prediction results compared to the single data models, but also leads to the identification of more relevant biological pathways. Importantly, when testing our adult models on a third independent brain tumor dataset, we show our multimodal framework is able to generalize and performs better on new data from different cohorts. Furthermore, leveraging the concept of transfer learning, we demonstrate how our multimodal models pre-trained on pediatric glioma can be used to predict prognosis for two more rare (less available samples) pediatric brain tumors, i.e. ependymoma and medulloblastoma. To summarize, our study illustrates that a multimodal data fusion approach can be successfully implemented and customized to model clinical outcome of adult and pediatric brain tumors.
 
![image](https://user-images.githubusercontent.com/44655862/192858138-3433b524-eb8c-4a69-bf61-d25b47da5671.png)

