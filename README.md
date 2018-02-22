# tic-tac-toe

Pentru implementarea X si 0 am folosit 7 functii: 3 pentru
afisarea tablei de joc si pentru marcarea cu X sau 0 a acesteia, drawBoard, 
drawX si drawO. O parte din interfata grafica am luat-o de pe internet si am 
adaptat-o. Functia Callback este pentru a sterge tabla de joc daca jucatorul
alege sa apese pe butonul de Exit in cazul in care vrea sa opreasca jocul.
Functia joc este functia principala in care sunt apelate celelalte. La inceputul
jocului se alege daca se va juca cu X sau cu 0. X va executa intotdeauna prima
mutare. Jucatorul va juca cu calculatorul care va exeuta mutari random, iar
la fiecare mutare este apelata functia isWinner pentru a vedea daca este o 
mutare castigatoare, iar tabla de joc este actualizata in urma alegerii mutarii
prin functia play, care determina pozitia mouseului si marcheaza tabla de joc.
La sfarsit va fi afisat castigatorul si scorul si va exista posibiltatea de
a mai juca alt joc sau de inchidere a acestuia.
 

