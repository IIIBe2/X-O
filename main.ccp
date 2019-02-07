#include <iostream>
#include <string>	
#include <cstdio>

using namespace std;

char cell_1 = '1', cell_2 = '2', cell_3 = '3', cell_4 = '4', cell_5 = '5', cell_6 = '6', cell_7 = '7', cell_8 = '8', cell_9 = '9', play;
char var;
string NamePlayer_1, NamePlayer_2, playern;

void algoritm(int numplayer) {
	if (((cell_1 == 'O') && (cell_2 == 'O') && (cell_3 == 'O')) ||
		((cell_1 == 'O') && (cell_5 == 'O') && (cell_9 == 'O')) ||
		((cell_1 == 'O') && (cell_4 == 'O') && (cell_7 == 'O')) ||
		((cell_2 == 'O') && (cell_5 == 'O') && (cell_8 == 'O')) ||
		((cell_3 == 'O') && (cell_5 == 'O') && (cell_7 == 'O')) ||
		((cell_4 == 'O') && (cell_5 == 'O') && (cell_6 == 'O')) ||
		((cell_6 == 'O') && (cell_3 == 'O') && (cell_9 == 'O')) ||
		((cell_7 == 'O') && (cell_8 == 'O') && (cell_9 == 'O')) ||
		((cell_1 == 'X') && (cell_2 == 'X') && (cell_3 == 'X')) ||
		((cell_1 == 'X') && (cell_5 == 'X') && (cell_9 == 'X')) ||
		((cell_1 == 'X') && (cell_4 == 'X') && (cell_7 == 'X')) ||
		((cell_2 == 'X') && (cell_5 == 'X') && (cell_8 == 'X')) ||
		((cell_3 == 'X') && (cell_5 == 'X') && (cell_7 == 'X')) ||
		((cell_4 == 'X') && (cell_5 == 'X') && (cell_6 == 'X')) ||
		((cell_6 == 'X') && (cell_3 == 'X') && (cell_9 == 'X')) ||
		((cell_7 == 'X') && (cell_8 == 'X') && (cell_9 == 'X')))
	{
		if (numplayer == 1) { playern = NamePlayer_1; }
		else { playern = NamePlayer_2; }
		cout << "Player " << playern << " Win!!!" << endl;
		cout << "Game Over" << endl;
		cout << "Klick y on restart game, or random simvol on exit " << endl;
		char k;
		cin >> k;
		if (k == 'y') {
			system("start путь к файлу ");  //путь к файлу
		}
		else {exit(1);}
		system("pause");
	}
}

void tabl() {
	cout << cell_1 << " | " << cell_2 << " | " << cell_3 << endl;
	cout << "----------" << endl;
	cout << cell_4 << " | " << cell_5 << " | " << cell_6 << endl;
	cout << "----------" << endl;
	cout << cell_7 << " | " << cell_8 << " | " << cell_9 << endl;
}


void going(int player) {
	if (player == 1) {
		cout << "Going "<< NamePlayer_1 << " => ";
		play = 'X';
	}
	else {
		cout << "Going " << NamePlayer_2 << " => ";
		play = 'O';
	}
	cin >> var;
	if (var == cell_1) { cell_1 = play; }
	else if (var == cell_2) {
		cell_2 = play;
	}
	else if (var == cell_3) {
		cell_3 = play;
	}
	else if (var == cell_4) {
		cell_4 = play;
	}
	else if (var == cell_5) {
		cell_5 = play;
	}
	else if (var == cell_6) {
		cell_6 = play;
	}
	else if (var == cell_7) {
		cell_7 = play;
	}
	else if (var == cell_8) {
		cell_8 = play;
	}
	else if (var == cell_9) {
		cell_9 = play;
	}
	else {
		cout << "Enter correct number " << endl;
		going(player);
	}
}

int main() {
	cout << "Enter name Player 1 => " << endl;
	getline(cin, NamePlayer_1);
	cout << "Enter name Player 2 => " << endl;
	getline(cin, NamePlayer_2);
	tabl();going(1);
	tabl();going(2);
	tabl();going(1);
	tabl();going(2);
	tabl();going(1);
	tabl();algoritm(1);going(2);
	tabl();algoritm(2);going(1);
	tabl();algoritm(1);going(2);
	tabl();algoritm(2);going(1);
	tabl();algoritm(1);
	cout << " << Draw >> ";
	system("pause");
	return 0;
}
