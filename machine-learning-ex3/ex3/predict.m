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

%disp('Theta1 size:'), disp(size(Theta1))
%disp('Theta2 size:'), disp(size(Theta2))

X = [ones(m, 1) X];
%disp('X size:'), disp(size(X))

A2 = [ones(m,1) sigmoid(X * Theta1')];
%disp('A2 size:'), disp(size(A2))

A3 = sigmoid(A2 * Theta2');
%disp('A3 size:'), disp(size(A3))

[pAll, pAllIdx] = max(A3, [], 2);
%disp('pAllIdx size:'), disp(size(pAllIdx))

p = pAllIdx;





% =========================================================================


end
