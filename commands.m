%% Commands for Image Generation
%
% These commands are used to generate the images used in the "How Kalman
% Filters Work" article. They use 'enjaden', an open-source project for
% publishing MATLAB scripts to Jade syntax (a web language).
%
% This file is not itself part of the demonstration.

%%
delete('jade/img/particle*');
enjaden('particle_demo.m', 'jade', [], true, []);

%%
delete('jade/img/sigma_point*');
enjaden('sigma_point_demo.m', 'jade', [], true, []);

%%
delete('jade/img/ekf*');
enjaden('ekf_demo.m', 'jade', [], true, []);

%%
delete('jade/img/lkf*');
enjaden('lkf_demo.m', 'jade', [], true, []);

%% Deploy generated files.
target = '../anuncommonlab.com/public/articles/how-kalman-filters-work/img/';
copyfile('jade/img/*', target);
copyfile('animations/*.gif', target);
