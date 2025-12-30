# <font size = 10 color = brown><b> Unsupervised - Clustering

# basic
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# for plotting
import plotly.express as px

# for k means clustering
from sklearn.cluster import KMeans

# for standardization
from sklearn.preprocessing  import StandardScaler

# for evaluation
from sklearn.metrics import silhouette_score

## <font size = 6 color = seagreen><b> Get data 

data = pd.read_csv('~/OneDrive/Emeritus/IITG-DSBA March 27th/Predictive/final datasets/Clustering_data.csv', index_col = 0)
data.head(3)

data.columns = ['Gender', 'Age', 'AnnualIncome', 'SpendingScore']

## <font size = 6 color = seagreen><b>Filter for numerical columns

new_data = data[['AnnualIncome', 'SpendingScore']]

## <font size = 6 color = seagreen><b>Visualize the distribution

plt.figure(figsize = (5,3))
plt.scatter(new_data['AnnualIncome'], new_data['SpendingScore'])
plt.show()

import warnings
warnings.filterwarnings('ignore')

## <font size = 6 color = seagreen><b>Standardize the data

sc = StandardScaler()
std_data = sc.fit_transform(new_data)

std_data.shape

plt.figure(figsize = (5,3))
plt.scatter(std_data[:,0], std_data[:, 1])
plt.show()

fig = px.scatter(new_data, x = 'AnnualIncome', y = 'SpendingScore', title = 'Income vs Spending',
          labels = {'AnnualIncome':'Annual Income (k$)', 'SpendingScore': 'Spend Score(1-100' })
fig.show()



max_rows = new_data.shape[0]
max_clusters = min(max_rows, 25)

wss_k = {}
for k in range(1, max_clusters):
    
    # defining the kmeans object with the no. of clusters
    kmeans = KMeans(n_clusters= k, max_iter=500,)

    # training with the data 
    kmeans.fit(std_data)

    # within sum of squares deviation(error)
    wss_k[k] = kmeans.inertia_


elbow_data = pd.Series(wss_k)
elbow_data.tail(2)

plt.figure(figsize = (16, 5))
plt.plot(elbow_data, marker = "o")
plt.show()

- elbow point : point of sharp change
 
---

Create Clusters using optimal $k$

kmeans = KMeans(n_clusters= 5, max_iter= 500)
kmeans.fit(std_data)

#>Get Cluster Labels

clus_labs = kmeans.predict(std_data)

labelled_data = new_data.assign(Cluster_label = clus_labs)
labelled_data.head(2)