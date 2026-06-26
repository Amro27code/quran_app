import 'package:quran_app/core/other/image_path_manager.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

class ListOfModels {
  static List<SongModel> recently = [
    SongModel(
      imagePath: ImagePathManager.ikhlas,
      title: "سورة الاخلاص",
      subtitle: "بصوت الشيخ ياسر الدوسري",
    ),
    SongModel(
      imagePath: ImagePathManager.fateha,
      title: "سورة الفاتحة",
      subtitle: "بصوت الشيخ محمد اللحيدان",
    ),

    SongModel(
      imagePath: ImagePathManager.wakeaa,
      title: "سورة الواقعة",
      subtitle: "بصوت الشيخ ياسر الدوسري",
    ),
  ];
  static List<SongModel> recommanded = [
    SongModel(
      imagePath: ImagePathManager.yaser,
      title: "ياسر الدوسري",
      subtitle: "قران",
    ),
    SongModel(
      imagePath: ImagePathManager.mohammed,
      title: "محمد اللحيدان",
      subtitle: "قران",
      isFavorite: true,
    ),
    SongModel(
      imagePath: ImagePathManager.maher,
      title: "ماهر المعيقلي",
      subtitle: "قران",
    ),
    SongModel(
      imagePath: ImagePathManager.abdallah,
      title: "عبد الله الجهني",
      subtitle: "قران",
    ),
    SongModel(
      imagePath: ImagePathManager.yaser,
      title: "ياسر الدوسري",
      subtitle: "قران",
      isFavorite: true,
    ),
  ];
}
