function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% Brute-force searching for best C and sigma
% Commented out code for exe efficiency once C and sigma is found

%cList = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%sigmaList = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%
%predError = -1;
%
%for c_best = cList
% for sigma_best = sigmaList
%
%  model= svmTrain(X, y, c_best, @(x1, x2) gaussianKernel(x1, x2, sigma_best));
%  predictions = svmPredict(model, Xval);
%  meanPredError = mean(double(predictions ~= yval));
%
%  if (predError == -1 || predError > meanPredError)
%    predError = meanPredError;
%    C = c_best;
%    sigma = sigma_best;
%  endif
%
% endfor
%endfor
%
%disp('found min predError')
%disp(predError)
%disp(C)
%disp(sigma)


% =========================================================================

end
