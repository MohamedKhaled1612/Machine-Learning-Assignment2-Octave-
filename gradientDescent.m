function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

									    % ====================== YOUR CODE HERE ======================
									    % Instructions: Perform a single gradient step on the parameter vector
									    %               theta. 
									    %
									    % Hint: While debugging, it can be useful to print out the values
									    %       of the cost function (computeCost) and gradient here.
									    %
%%%%%% solution1 %%%%%
error = (X*theta)-y
delta  = X'*(error)
theta = theta - (alpha/m)* delta

%%%%%% solution2 %%%%%
%error = (X*theta)-y
%delta = sum(error.*X)
%theta = theta - (alpha/m)*delta

%%%%%% solution2 %%%%%%
%error = (X'*theta)-y
%temp0 = theta(1)-(alpha/m)* (X(:,1)'*error)
%temp1 = theta(2)-(alpha/m)* (X(:,2)'*error)
%theta=[temp0,temp1]

%%%%%% solution3 %%%%%%
%error = (X'*theta)-y
%temp0 = theta(1)-(alpha/m)* sum(error.*X(:,1))
%temp1 = theta(2)-(alpha/m)* sum(error.*X(:,2))
%theta=[temp0,temp1]

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
