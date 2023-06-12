enum HomePageType {
  analytics,
  commandCenter;

  bool get isAnalytics => this == HomePageType.analytics;
  bool get isCommandCenter => this == HomePageType.commandCenter;
}
