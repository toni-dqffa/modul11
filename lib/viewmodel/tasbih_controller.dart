import 'package:get/get.dart';

class TasbihController extends GetxController {
  // Variabel reaktif (observable) menggunakan .obs
  var counter = 0.0.obs;
  var progress = 0.0.obs;

  // Batas maksimum hitungan
  final double maxCount = 33;

  /// Menambah counter selama belum mencapai batas maksimum,
  /// sekaligus memperbarui progress dalam persen (0 - 100).
  void incrementCounter() {
    if (counter.value < maxCount) {
      counter.value++;
      progress.value = (counter.value / maxCount) * 100;
    }
  }

  /// Mengembalikan counter dan progress ke kondisi awal.
  void resetCounter() {
    counter.value = 0;
    progress.value = 0;
  }
}