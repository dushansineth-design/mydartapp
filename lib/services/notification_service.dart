import '../models/notification_model.dart';
import '../models/citizen.dart';
import '../models/admin.dart';

class NotificationService {
  void notifyCitizen(Citizen citizen, String message) {
    final notification = Notification(message: message);
    notification.sendToCitizen(citizen);
  }

  void notifyAdmin(Admin admin, String message) {
    final notification = Notification(message: message);
    notification.sendToAdmin(admin);
  }
}