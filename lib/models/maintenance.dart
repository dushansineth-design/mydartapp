class Maintenance {
  static int _idCounter = 0;
  final String reportID;
  final String citizenID;
  String? adminID;
  final String location;
  final String category;
  final String description;
  final String? photo;
  String status;
  final DateTime dateReported;

  Maintenance({
    required this.citizenID,
    required this.location,
    required this.category,
    required this.description,
    this.photo,
  })  : reportID = 'R${++_idCounter}',
        status = 'Open',
        dateReported = DateTime.now();

  void assignToAdmin(String adminId) {
    adminID = adminId;
    status = 'Assigned';
  }

  void updateStatus(String newStatus) {
    status = newStatus;
  }

  @override
  String toString() {
    return 'ReportID: $reportID\nLocation: $location\nCategory: $category\nStatus: $status\nDate: $dateReported';
  }
}