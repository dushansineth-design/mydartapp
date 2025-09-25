import 'maintenance.dart';

class Admin {
  final String adminID;
  final String role;
  final String email;

  Admin({
    required this.adminID,
    required this.role,
    required this.email,
  });

  void assignReport(Maintenance report) {
    report.assignToAdmin(adminID);
  }

  void updateStatus(Maintenance report, String newStatus) {
    report.updateStatus(newStatus);
  }
}