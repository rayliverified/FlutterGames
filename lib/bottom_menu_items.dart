enum BottomMenu {
  games,
  movies,
  browse,
  my,
  more,
}

String menuItemName(BottomMenu layoutType) {
  switch (layoutType) {
    case BottomMenu.games:
      return 'Games';
    case BottomMenu.movies:
      return 'Movies';
    case BottomMenu.browse:
      return 'Browse';
    case BottomMenu.my:
      return 'My Collection';
    case BottomMenu.more:
      return 'More';
    default:
      return '';
  }
}