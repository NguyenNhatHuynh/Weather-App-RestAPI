import 'package:geolocator/geolocator.dart';

Future<Position> getLocation() async {
  LocationPermission permission;

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Quyền vị trí bị từ chối');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Quyền vị trí bị từ chối vĩnh viễn, chúng tôi không thể yêu cầu quyền',
    );
  }
  return await Geolocator.getCurrentPosition();
}
