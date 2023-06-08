enum TrafficSectionType {
  advertising,
  session;

  bool get isAdvertising => this == TrafficSectionType.advertising;
  bool get isSession => this == TrafficSectionType.session;
}
