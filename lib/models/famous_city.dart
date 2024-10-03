class FamousCity {
  final String name;
  final double lat;
  final double lon;

  const FamousCity({
    required this.name,
    required this.lat,
    required this.lon,
  });
}

List<FamousCity> famousCities = [
  const FamousCity(
    name: 'Hà Nội', // Việt Nam
    lat: 21.00,
    lon: 105.00,
  ),
  const FamousCity(
    name: 'Bangkok', // Thái Lan
    lat: 13.7563,
    lon: 100.5018,
  ),
  const FamousCity(
    name: 'Jakarta', // Indonesia
    lat: -6.2088,
    lon: 106.8456,
  ),
];
