/// Class untuk manage search history
class SearchHistoryManager {
  // Singleton pattern - hanya ada 1 instance
  static final SearchHistoryManager _instance =
      SearchHistoryManager._internal();
  factory SearchHistoryManager() => _instance;
  SearchHistoryManager._internal();

  // List untuk simpan history
  final List<String> _history = [];

  // Getter untuk akses history
  List<String> get history => List.unmodifiable(_history);

  /// Tambah search ke history
  void addToHistory(String searchText) {
    if (searchText.trim().isEmpty) return;

    // Hapus duplicate jika ada
    _history.remove(searchText);

    // Tambahkan di posisi paling atas
    _history.insert(0, searchText);

    // Batasi maksimal 10 item
    if (_history.length > 10) {
      _history.removeLast();
    }
  }

  /// Hapus satu item berdasarkan index
  void removeAt(int index) {
    if (index >= 0 && index < _history.length) {
      _history.removeAt(index);
    }
  }

  /// Hapus satu item berdasarkan text
  void remove(String searchText) {
    _history.remove(searchText);
  }

  /// Hapus semua history
  void clearAll() {
    _history.clear();
  }

  /// Cek apakah history kosong
  bool get isEmpty => _history.isEmpty;

  /// Cek apakah history tidak kosong
  bool get isNotEmpty => _history.isNotEmpty;

  /// Get jumlah item
  int get length => _history.length;

  /// Get item by index
  String getAt(int index) => _history[index];
}
