import '../lib/models/citizen.dart';
import '../lib/models/admin.dart';
import '../lib/services/maintenance_service.dart';
import '../lib/services/notification_service.dart';

void main() {
  final citizen = Citizen(
    citizenID: 'C001',
    contact: '0771234567',
    email: 'nimal@mail.com',
  );

  final admin = Admin(
    adminID: 'A001',
    role: 'Supervisor',
    email: 'admin@mail.com',
  );

  final maintenanceService = MaintenanceService();
  final notificationService = NotificationService();

  final report = maintenanceService.createReport(
    citizen,
    'Main Street',
    'Road',
    'Pothole near the junction',
  );

  admin.assignReport(report);
  admin.updateStatus(report, 'In Progress');

  notificationService.notifyAdmin(admin, 'New report assigned: ${report.reportID}');
  notificationService.notifyCitizen(citizen, 'Your report ${report.reportID} is now being processed.');

  print('\n--- Report Details ---');
  print(report);
}