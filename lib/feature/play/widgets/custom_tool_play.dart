import 'package:flutter/material.dart';
import 'package:quran_app/controller/play_controller.dart';
import 'package:quran_app/core/other/color_manager.dart';

Container customToolPlay() {
  return Container(
    width: 252,
    height: 46,
    decoration: BoxDecoration(
      color: ColorManager.onbSecondary2,
      borderRadius: BorderRadiusGeometry.circular(10),
    ),
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: .spaceAround,
      crossAxisAlignment: .center,
      children: List.generate(
        PlayController.listToolPlay.length,
        (index) => Column(
          children: [
            Icon(
              PlayController.listToolPlay[index].icon,
              color: ColorManager.whiteColor,
            ),
            Text(
              PlayController.listToolPlay[index].text,
              style: TextStyle(color: ColorManager.whiteColor, fontSize: 8),
            ),
          ],
        ),
      ),
    ),
    // ListView.separated(
    //   padding: const EdgeInsets.all(5),
    //   physics: NeverScrollableScrollPhysics(),
    //   scrollDirection: .horizontal,
    //   itemBuilder: (context, index) => Column(
    //     children: [
    //       Icon(_list[index].icon, color: ColorManager.whiteColor),
    //       Text(
    //         _list[index].text,
    //         style: TextStyle(
    //           color: ColorManager.whiteColor,
    //           fontSize: 8,
    //         ),
    //       ),
    //     ],
    //   ),
    //
    //   separatorBuilder: (context, index) =>
    //       const SizedBox(width: 23),
    //   itemCount: _list.length,
    // ),

    // Row(
    //   mainAxisSize: .min,
    //   spacing: 32,
    //   children: [
    //     Column(
    //       children: [Icon(Icons.favorite_border), Text("Like")],
    //     ),
    //     Column(
    //       children: [
    //         Icon(Icons.playlist_add_check),
    //         Text("Playlist"),
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Icon(Icons.cloud_download_outlined),
    //         Text("Download"),
    //       ],
    //     ),
    //     Column(children: [Icon(Icons.more_vert), Text("More")]),
    //   ],
    // ),
  );
}
