% plot of the Kernel function K1(r/L) and 
% the result of a single point analysis
%------------------------------------------

clear all; close all; clc;
%--------------------

% load the results (gg), the spatial step (dx) and the size of the domain
% in number of dx (imax)
%--------------------------------------------------------------------------

load('./OnePointAnalysis.mat');

N=(imax-1)/2;
xx = [0:dx:N*dx];
yy = gg(N+1,N+1:2*N+1);

% plot of the analysed field versus the distance with respect to the data
%------------------------------------------------------------------------

figure;
plot(xx,yy,'color','r','linewidth',2);
hold  on;

nu1 = 1;
besselfun1 = besselk(nu1,xx);
ordonnee1 = xx.*besselfun1;
plot(xx,ordonnee1,'color','k','linewidth',2); hold on


xlabel('Distance (r/L)','fontsize',14)
ylabel('Field value     ','fontsize',14,'rotation',0)
set(gca,'fontsize',14);

exportfig(gcf,'kernelf','bounds','tight','Preview','none','Color','rgb','Resolution',300)