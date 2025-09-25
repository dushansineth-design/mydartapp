import 'maintenance.dart';

class Citizen {
  final String citizenID;
  final String contact;
  final String email;

  Citizen({
    required this.citizenID,
    required this.contact,
    required this.email,
  });

  Maintenance reportIssue({
    required String location,
    required String category,
    required String description,
    String? photo,
  }) {
    return Maintenance(
      citizenID: citizenID,
      location: location,
      category: category,
      description: description,
      photo: photo,
    );
  }

  void trackStatus(Maintenance report) {
    print('Report ${report.reportID} status: ${report.status}');
  }
}