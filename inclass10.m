%In this directory, you will find some example data, which is a 300x8
%array stored in a .mat file. Image these are measurements for 300 genes are 8 different time
%points
%GB comments:
1)100
2)100
3)100
4)100
overall: 100

%1. Use matlab to perform pca on this data, getting the transformation
%matrix, the transformed data, and the eigenvalues.

load('example_dat.mat');
[coeff, sc, eig] = pca(dat);

%2. Look at the eigenvalues - how many dimensions are necessary to explain
%the data? 

% According to the output, there were 8 eigenvalues generated, but the data
% can be explained in 2 dimensions given that the remaining values are very low.

%3. Using kmeans clustering to cluster the data into 3 clusters. 
% Make a plot of the first coordinate of the raw data vs the second color coded
% by which cluster it is in. Make the same plot but use the first two
% principle components instead. 

ids = kmeans(dat,3);
figure;
scatter(dat(:,1),dat(:,2),[],ids(:,1));

scatter(sc(:,1),sc(:,2),[],ids(:,1));

%4. Repeat part 3 but use 7 clusters. Which is a more appropriate number of
%clusters for the data? 

ids2 = kmeans(dat,7);
figure;
scatter(dat(:,1),dat(:,2),[],ids(:,1));

figure;
scatter(sc(:,1),sc(:,2),[],ids(:,1));

%Given the generated figures, 3 clusters are more appropriate as the
%clusters are clearly delineated. 
