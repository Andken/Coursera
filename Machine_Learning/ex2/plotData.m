function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

admitted = [];
rejected = [];

for i=1:length(X)
  if y(i) == 1
    admitted = [admitted; X(i,:)];
  else
    rejected = [rejected; X(i,:)];
  end
end

plot(rejected(:,1), rejected(:,2), 'ko', 'MarkerSize', 7);
plot(admitted(:,1), admitted(:,2), 'k+', 'MarkerSize', 7, 'MarkerFaceColor', 'y', 'LineWidth', 2);








% =========================================================================



hold off;

end
