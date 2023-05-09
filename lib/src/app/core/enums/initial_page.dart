enum InitialPage {
  home,
  dashboard;

  bool get isHome => this == InitialPage.home;
  bool get isDashboard => this == InitialPage.dashboard;
}
