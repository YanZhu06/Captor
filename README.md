Overview

We developed an O-glycosylation predictor for Homo sapiens, named Captor, through multiple features. A random under-sampling method and a synthetic minority oversampling technique were employed to deal with imbalanced data. In addition, the Kruskal-Wallis test was adopted to optimize feature vectors and improve the performance of the model. A support vector machine, due to its optimal performance, was used to train and optimize the final prediction model after a comprehensive comparison of various classifiers in traditional machine learning methods and deep learning.

1. Data

   The training and test samples are placed in the Data folder. You can see that there are protein sequence fragments in window 31, and the file is in FASTA format.
   
2. Code

　　The Code folder contains four feature encoding schemes used in the article. AAINDEX.xlsx are the amino acids’ 553 Physicochemical properties

3. Optimized_feature

   This file provides the optimized feature combination by K-W test.

4. Feature

   There are original features in the Feature folder, that is, features that have not been processed.

5. Dependency

   MATLAB R2018a
   
   LIBSVM 3.23

If you have any questions, please contact Yan Zhu: zhuyaner_6@163.com
