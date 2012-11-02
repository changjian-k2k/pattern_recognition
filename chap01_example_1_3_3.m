%% script for example 1.3.3

%% variance and covariance
% one case in one row
% $\sigma_1^2,\sigma_2^2,\sigma_{12}$
cov_paramters = [1 1 0;0.2 0.2 0;2 2 0;0.2 2 0; 2 0.2 0;1 1 0.5;0.3 2 0.5;0.3 2 -0.5];

%% generate and plot the data set
m = [0 0]';
S = eye(length(m));
N = 500;

for i = 1:size(cov_paramters,1)
    S = [cov_paramters(i,1),cov_paramters(i,3);cov_paramters(i,3),cov_paramters(i,2)];
    X = mvnrnd(m,S,N)';
    subplot(3,3,i)
    plot(X(1,:),X(2,:),'.');
    axis equal
    axis ([-7 7 -7 7])
end