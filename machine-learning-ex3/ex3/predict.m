function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
%fprintf('X: [%.2f %.2f]\n', [size(X)]);
%fprintf('Theta1: [%.2f %.2f]\n', [size(Theta1)]);
%fprintf('Theta2: [%.2f %.2f]\n', [size(Theta2)]);
a1 = [ones(m,1) X]'; %transpose

a2 = sigmoid(Theta1*a1);
%fprintf('a2: [%.2f %.2f]\n', [size(a2)]);

n = size(a2, 2);
a2 = [ones(1,n); a2];

a3 = sigmoid(Theta2*a2);
%fprintf('a3: [%.2f %.2f]\n', [size(a3)]);
[val pos] = max(a3, [], 1);
pos(pos==10) = 0;
p = pos;
% =========================================================================


end
