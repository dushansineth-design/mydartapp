import '../models/maintenance.dart';
import '../models/citizen.dart';

class MaintenanceService {
  final List<Maintenance> _reports = [];

  Maintenance createReport(
    Citizen citizen,
    String location,
    String category,
    String description,
    {String? photo}
  ) {
    final report = citizen.reportIssue(
      location: location,
      category: category,
      description: description,
      photo: photo,
    );
    _reports.add(report);
    return report;
  }

  List<Maintenance> getAllReports() => _reports;
}