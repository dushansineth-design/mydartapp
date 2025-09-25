import 'citizen.dart';
import 'admin.dart';

class Notification {
  static int _idCounter = 0;
  final String notificationID;
  final String message;
  final DateTime dateTime;

  Notification({
    required this.message,
  })  : notificationID = 'N${++_idCounter}',
        dateTime = DateTime.now();

  void sendToCitizen(Citizen citizen) {
    print('Notification to Citizen ${citizen.citizenID}: $message');
  }

  void sendToAdmin(Admin admin) {
    print('Notification to Admin ${admin.adminID}: $message');
  }
}