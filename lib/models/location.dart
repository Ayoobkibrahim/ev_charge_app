class Location {
  final String locationId;
  final String name;
  final double latitude;
  final double longitude;

  Location({
    required this.locationId,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      locationId: json['locationId'] ?? '',
      name: json['name'] ?? '',
      latitude: json['latitude'] ?? 0.0,
      longitude: json['longitude'] ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'locationId': locationId,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
