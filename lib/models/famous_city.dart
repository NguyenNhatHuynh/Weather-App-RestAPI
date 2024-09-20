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
    lat: 21.0285,
    lon: 105.8542,
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
  const FamousCity(
    name: 'Manila', // Philippines
    lat: 14.5995,
    lon: 120.9842,
  ),
  const FamousCity(
    name: 'Kuala Lumpur', // Malaysia
    lat: 3.1390,
    lon: 101.6869,
  ),
  const FamousCity(
    name: 'Singapore', // Singapore
    lat: 1.3521,
    lon: 103.8198,
  ),
  const FamousCity(
    name: 'Phnom Penh', // Campuchia
    lat: 11.5564,
    lon: 104.9282,
  ),
  const FamousCity(
    name: 'Vientiane', // Lào
    lat: 17.9757,
    lon: 102.6331,
  ),
  const FamousCity(
    name: 'Yangon', // Myanmar
    lat: 16.8409,
    lon: 96.1735,
  ),
  const FamousCity(
    name: 'Bandar Seri Begawan', // Brunei
    lat: 4.9031,
    lon: 114.9398,
  ),
  const FamousCity(
    name: 'Dili', // Đông Timor
    lat: -8.5569,
    lon: 125.5603,
  ),
];
