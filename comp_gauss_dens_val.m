function [ value ] = comp_gauss_dens_val( mean, cov_matrix, variable )
%COMP_GAUSS_DENS_VAL Summary of this function goes here
%   Detailed explanation goes here

%% check the dimensions of mean and covariance matrix
l = length(mean);

%% calculate the probability density value
exp_component = (variable - mean).'*inv(cov_matrix)*(variable - mean);
value = 1/((2*pi)^(l/2)*det(cov_matrix)^(1/2))*exp(-1/2*exp_component);

end

