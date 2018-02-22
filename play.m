function table = play(player, table, generate)
        if generate == 0
                [col row] = ginput(1);  %se obtine pozitia unde doreste jucatorul sa marcheze
                                                     %locul cu ajutorul mouse-ului
                col = fix(col);
                row = 2 - fix(row);
                if table(col+1, row+1) == -1 %actualizez tabla de joc si o marchez 
                        table(col+1, row+1) = player; 
                        if player == 1  
                                drawX(col, 2 - row);
                        else
                                drawO(col, 2 - row);
                        endif 
                else
                        table = -1; %mutare invalida
                endif
        else 
                %se genereaza random o pozitie in tabla de joc pentru calculator
                col = randi([0,2]); 
                row = 2 - randi([0,2]);
                if table(col+1, row+1) == -1 
                        table(col+1, row+1) = player; 
                        if player
                                drawX(col, 2 - row);
                        else
                                drawO(col, 2 - row);
                        endif 
                else
                        table=-1;
                endif
        endif
endfunction