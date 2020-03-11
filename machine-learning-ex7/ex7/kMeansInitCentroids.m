function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%
m = size(X,1);
while true
	idx=unique(randi([1, m], 1, m));
	if length(idx)>=K
		break;
	end;
end;
for i=1:K
	centroids(i,:) = X(idx(i),:);
end;




% =============================================================

end

