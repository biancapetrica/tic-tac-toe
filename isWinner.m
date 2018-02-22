%Functia verifica daca exista vreun castigator pe linie, coloana sau diagonala
%in caz afirmativ se actualizeaza winner cu codul jucatorului castigator
function winner = isWinner(table)
    % Diagonala
    if table(1,1) == table(2,2) && table(1,1) == table(3,3) 
        winner = table(1,1);
    elseif table(1,3) == table(2,2) && table(1,3) == table(3,1) 
        winner = table(1,3);

    %Orizontal
    elseif table(1,1) == table(1,2) && table(1,1) == table(1,3) 
        winner = table(1,1);
    elseif table(2,1) == table(2,2) && table(2,1) == table(2,3) 
        winner = table(2,1);
    elseif table(3,1) == table(3,2) && table(3,1) == table(3,3) 
        winner = table(3,1);
  
    % Vertical
    elseif table(1,1) == table(2,1) && table(1,1) == table(3,1) 
        winner = table(1,1);
    elseif table(1,2) == table(2,2) && table(1,2) == table(3,2) 
        winner = table(1,2);
    elseif table(1,3) == table(2,3) && table(1,3) == table(3,3) 
        winner = table(1,3);
    elseif table(1)~=-1 && table(2)~=-1 && table(3)~=-1 && table(4)~=-1 && table(5)~=-1 && table(6)~=-1 && table(7)~=-1 && table(8)~=-1 && table(9)~=-1
        winner=3; % nu am gasit un castigator iar tabla de joc este plina
    else
        winner = -1; 
    endif
endfunction