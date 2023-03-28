import 'dart:io';

void main() {
  var player = 'X';
  var gameDashboard = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];
  dashboardDisplay(gameDashboard);
  play(gameDashboard, player);
}

//play
void play(List gameDashboard, String player) {
  print('player $player select row (0-2)');
  var row = int.parse(stdin.readLineSync()!);
  print('player $player select row (0-2)');
  var col = int.parse(stdin.readLineSync()!);

  gameDashboard[row][col];
  dashboardDisplay(gameDashboard);
}

//checkwinner
void checkWinner(List gameDashboard, String player) {
  dashboardDisplay(gameDashboard);
  //check winner
  if (gameDashboard[0][0] == gameDashboard[0][1] &&
      gameDashboard[0][1] == gameDashboard[0][2] &&
      gameDashboard[0][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[1][0] == gameDashboard[1][1] &&
      gameDashboard[1][1] == gameDashboard[1][2] &&
      gameDashboard[1][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[2][0] == gameDashboard[2][1] &&
      gameDashboard[2][1] == gameDashboard[2][2] &&
      gameDashboard[2][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[0][0] == gameDashboard[1][0] &&
      gameDashboard[1][0] == gameDashboard[2][0] &&
      gameDashboard[0][0].toString().isNotEmpty) {
    displayWinner(player);
  } else if (gameDashboard[2][0] == gameDashboard[2][1] &&
      gameDashboard[2][1] == gameDashboard[2][2] &&
      gameDashboard[2][0].toString().isNotEmpty) {
    displayWinner(player);
  } else {
    if (player == 'X') {
      player == 'O';
    } else {
      player == 'X';
    }
    checkWinner(gameDashboard, player);
    play(gameDashboard, player);
  }
}

//dashboardDisplay
void dashboardDisplay(List gameDashboard) {
  print(
      '${gameDashboard[0][0]}   | ${gameDashboard[0][1]}  |  ${gameDashboard[0][2]}');
  print('---+---+---');
  print(
      '${gameDashboard[1][0]}   | ${gameDashboard[1][1]}  |  ${gameDashboard[1][2]}');
  print('---+---+---');
  print(
      '${gameDashboard[2][0]}   | ${gameDashboard[2][1]}  |  ${gameDashboard[2][2]}');
}

//displayWinner
void displayWinner(String player) {
  print('player $player is the winner');
}
