import 'package:flutter/material.dart';
import 'package:quran_app/app/widgets.dart';
import 'package:quran_app/feature/play/widgets/custom_app_bar.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: A(),
      appBar: customAppBar(title: "Now playing"),
      body: backgroundGradiant(
          child: Center(child: Text("data"))
      ),

    );
  }
}
// class A extends StatelessWidget implements PreferredSizeWidget {
//   const A({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       foregroundColor: ColorManager.whiteColor,
//       leading: Icon(Icons.arrow_back_ios_sharp, size: 16),
//       title: Text("Now playing", style: TextStyle(fontSize: 18, fontWeight: .w500)),
//       centerTitle: true,
//       actions: [
//
//         Icon(Icons.share_outlined, size: 16),
//         const SizedBox(width: 21),
//         Icon(Icons.more_vert, size: 16),
//         const SizedBox(width: 13),
//       ],
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
