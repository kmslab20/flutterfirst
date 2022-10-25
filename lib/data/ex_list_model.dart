class ExModel {
  const ExModel(this.petName, this.customerName, this.phoneNumber, this.hospitalUserName, this.visitingStatus, this.memo);
  final String petName;
  final String customerName;
  final String phoneNumber;
  final String hospitalUserName;
  final int visitingStatus;
  final String memo;
}

const exList = [
  ExModel("A", "alpha", "01123456789", "Mr. Kim", 2, "MM"),
  ExModel("B", "beta", "0987654321", "Mr. Park", 3, "this is memo. this is memo."),
  ExModel("C", "gamma", "0987654321", "Mr. Lee", 1, "this is memo. this is memo. this is a new memo."),
  ExModel("D", "delta", "0987654321", "Mr. Park", 3, "this is memo. this is memo."),
  ExModel("E", "Epsilon", "0987654321", "Mr. Park", 4, "this is memo."),
  ExModel("F", "Wau", "0987654321", "Mr. Park", 5, "this is memo. this is memo."),
  ExModel("G", "Gamma2", "0987654321", "Mr. Park", 5, "this is memo."),
  ExModel("H", "Eta", "0987654321", "Mr. Park", 2, "this is memo."),
];