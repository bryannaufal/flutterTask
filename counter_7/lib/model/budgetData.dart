class dataBudget {
  static List<dataBudget> budgets = [];
  String judul;
  int nominal;
  String jenis;
  DateTime tanggal;

  dataBudget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.tanggal,
  });

  static void addBudget({
    required judul,
    required nominal,
    required jenis,
    required tanggal,
  }) {
    budgets.add(dataBudget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      tanggal: tanggal,
    ));
  }
}