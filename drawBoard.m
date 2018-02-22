function []=drawBoard()
	close all
	figure('Name', 'X si 0');
	plot(-1. -1)
	axis([0 3 0 3])
	set(gca,'xTick',0:3)
	set(gca,'yTick',0:3)
	set(gca,'xTickLabel','')
	set(gca,'yTickLabel','')
	grid on
	set(get(gcf,'children'),'gridlinestyle','-') 
	set(get(gcf,'children'), 'linewidth', 3);
	hold on;
	%buton pentru a iesi din joc 
	kiessys = uicontrol( 'Position', [10 35 60 30], 'String', 'Exit', 'Callback', {@Callback,});
	shg
endfunction

