
 class Constants {

  static  String get _userid => "Player 1";
  static  String  get _username => "username";
  static String get _vs => '';

  set vs (String value)  {
    value = _vs;
  }

  static const String  stockfishpicture =   "assets/pictures/stockfish.png";
  static const String  playerIcon = "assets/pictures/playerimage.jpg";

// home page buttons
  static const String multiPlayerButtontitle = ' Multiplayer ';
  static const String multiPlayerButtonsub = ' Multiplayer ';
  static const String multiPlayerButtonchips = ' Multiplayer ';

   
  static const String vsComputerTitle = ' Vs. Computer ';
  static const String vsComputerSub = ' Vs. Computer ';
  static const String vsComputerChips = ' Vs. Computer ';


  static const String puzzlesTitle = ' Puzzles ';
  static const String puzzlesSub = ' Puzzles ';
  static const String puzzlesChips = ' Puzzles ';


  static const String customGameTitle = ' Custom Game ';
  static const String customGameSub = ' Custom Game ';
  static const String customGameChips = ' Custom Game ';


get userid => _userid;
get username => _username;

static const String homeScreen = '/screens/home_page';
static const String gameScreen = '/screens/gamespage';
static const String profileScreen = '/screens/profilepage';
static const String multiplayerScreen = '/screens/multiplayers';
static const String puzzleScreen = '/screens/puzzlesPage';
static const String customgameScreen = '/screens/customgamepage';
static const String settingsScreen = '/screens/settings_page';
static const String historyScreen = '/screens/history_games';
static const String aboutScreen = '/screens/aboutPage';
static const String vsComnpScreen = '/screens/vsComputer';
}


class FontConstants {

  static double fweight_Title = 35;
  static double fweight_SubTitle = 20;
  static double fweight_Chips = 15;
}