function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
predictions=X*theta
square_error=(predictions-y).^2
% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

J=1/(2*m)*sum(square_error)


%J=1/2*length(y)*sum((X*theta-y).^2) %advanced solution

%= 1/2*m sum(h(x)-y)^2



% =========================================================================

end
