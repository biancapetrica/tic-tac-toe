function [] = joc()

    prompt = {'Enter X or 0'};
    title = 'X si 0';
    defaultans = {'X'};
    answer = inputdlg(prompt,title,1,defaultans);

    if strcmp( answer, 'X') == 1
        player=1; 
        computer=0;
    else
        player=0;
        computer=1;
    endif

    winner = -1; 
    keepScoreX=0;
    keepScore0=0;
    keepPlaying=1; % (1 = da, 0 = nu)

    while keepPlaying == 1
        drawBoard(); % este generata tabla de joc
        table =  [[-1 -1 -1]
                        [-1 -1 -1]
                        [-1 -1 -1]]; %  -1 = nimic, 0 = O, 1 = X
     
        winner = -1; % nu avem castigator 
        currentPlayer = player; 
        if currentPlayer == 0
            currentPlayer++; %intotdeauna incepe jucatorul X
        endif

        while winner == -1
            if currentPlayer == 1
                xlabel('Player: X');
            else
                xlabel('Player: O');
            endif
            if currentPlayer == computer 
                generate = 1; %trebuie generata o mutare pentru calculator
            else 
                generate = 0;
            endif

            new = play(currentPlayer, table, generate); % urmatoarea mutare
            if new == -1  % mutare incorecta
                xlabel('Find new spot');
            else % se actualizeaza tabla daca s-a efectuat o mutare corecta
                table = new; 
                currentPlayer = mod(currentPlayer + 1,2); % trece la urmatorul jucator
                winner = isWinner(new); % verifica daca este o mutare castigatoare
            endif
        endwhile

        %afisez castigatorul si scorul 
        if winner == 0  
            keepScore0++;
            msgbox(sprintf('O wins this round\n Score:  %d - %d ', keepScoreX, keepScore0), 'X si 0');         
        elseif winner == 1 
            keepScoreX++;
            msgbox(sprintf('X wins this round\n Score:  %d - %d ', keepScoreX, keepScore0), 'X si 0');
        else
            msgbox(sprintf('It''s a tie\n Score:  %d - %d ', keepScoreX, keepScore0), 'X si 0');
        endif

        %jucatorul alege daca mai vrea sa joace incontinuare sau nu
        qstring = 'Do you want to play again?';
        choice = questdlg(qstring,'The game has ended','Yes','No','No');
        if strcmp(choice,'No')
            keepPlaying = 0;
        endif 

    endwhile
    close all %se sterge tabla de joc
endfunction               