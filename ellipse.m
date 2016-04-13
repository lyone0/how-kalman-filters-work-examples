function ell = ellipse(P, x, n)
    
% ellipse
% 
% Create the points of the 3-sigma ellipse indicated by covariance matrix P
% centered at x. The ellipse will be 2D and will correspond to P(1:2, 1:2).
%
% An optional number of points, n, can be provided.
% 
% Inputs:
%
% P  Covariance matrix
% x  Center for ellipse
% n  Number of points to use in the ellipse (default is 100)
%
% Outputs:
%
% ell  Points of the ellipse (2-by-n)
% 

% Copyright 2016 An Uncommon Lab

    % Set a default number of points.
    if nargin < 3, n = 100; end;
    
    % Create a unit circle.
    theta  = linspace(0, 2*pi, n);
    circle = [cos(theta); sin(theta)];
    
    % Scale the unit circle appropriately and add on x.
    ell = bsxfun(@plus, 3 * chol(P(1:2,1:2), 'lower') * circle, x(1:2));

end % ellipse
