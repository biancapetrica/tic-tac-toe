function drawX(col, row)
    hold on
    x = 0:1;
    pos = 0:1;
    neg = 1-x;
    plot(x+col, pos+row,'LineWidth',4)
    plot(x+col, neg+row,'LineWidth',4)
    hold off
end
