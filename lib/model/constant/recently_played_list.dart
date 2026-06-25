import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/model/models/recently_played.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

class ListOfModels {
  static List<RecentlyPlayed> recently = [
    RecentlyPlayed(
      imagePath: ImagePathManager.ikhlas,
      title: "سورة الاخلاص",
      subtitle: "بصوت الشيخ ياسر الدوسري",
    ),
    RecentlyPlayed(
      imagePath: ImagePathManager.fateha,
      title: "سورة الفاتحة",
      subtitle: "بصوت الشيخ محمد اللحيدان",
    ),

    RecentlyPlayed(
      imagePath: ImagePathManager.wakeaa,
      title: "سورة الواقعة",
      subtitle: "بصوت الشيخ ياسر الدوسري",
    ),
  ];
  static List<RecommandedModel> recommanded = [
    RecommandedModel(
      imagePath: ImagePathManager.yaser,
      title: "ياسر الدوسري",
      subtitle: "قران",
      isFavorite: false,
    ),
    RecommandedModel(
      imagePath: ImagePathManager.mohammed,
      title: "محمد اللحيدان",
      subtitle: "قران",
      isFavorite: true,
    ),
    RecommandedModel(
      imagePath: ImagePathManager.maher,
      title: "ماهر المعيقلي",
      subtitle: "قران",
      isFavorite: false,
    ),
    RecommandedModel(
      imagePath: ImagePathManager.abdallah,
      title: "عبد الله الجهني",
      subtitle: "قران",
      isFavorite: false,
    ),
    RecommandedModel(
      imagePath: ImagePathManager.yaser,
      title: "ياسر الدوسري",
      subtitle: "قران",
      isFavorite: true,
    ),
  ];
}
