// import 'package:flutter/material.dart';
//
// import '../../../../../core/utils/app_colors.dart';
//
// class CustomDropMenu extends StatefulWidget {
//   const CustomDropMenu({super.key});
//
//   @override
//   State<CustomDropMenu> createState() => _CustomDropMenuState();
// }
//
// class _CustomDropMenuState extends State<CustomDropMenu> {
//   String hint = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownMenu(
//       menuStyle: MenuStyle.lerp(
//         MenuStyle(
//           backgroundColor: WidgetStateProperty.all(AppColors.primaryBlack),
//           shape: WidgetStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadiusGeometry.circular(16),
//             ),
//           ),
//         ),
//         MenuStyle(backgroundColor: WidgetStateProperty.all(Colors.red)),
//         1,
//       ),
//       initialSelection: 0,
//       width: MediaQuery.widthOf(context) * 269 / 393,
//       inputDecorationTheme: InputDecorationTheme(
//         border: buildOutlineInputBorder(),
//         enabledBorder: buildOutlineInputBorder(),
//         disabledBorder: buildOutlineInputBorder(),
//         errorBorder: buildOutlineInputBorder(),
//         focusedBorder: buildOutlineInputBorder(),
//       ),
//       dropdownMenuEntries: [
//         DropdownMenuEntry(
//           value: 1,
//           label: "Dark",
//           style: ButtonStyle(shape: WidgetStateProperty.all(StarBorder())),
//         ),
//         DropdownMenuEntry(value: 2, label: "Light"),
//       ],
//     );
//   }
//
//   OutlineInputBorder buildOutlineInputBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(16),
//       borderSide: BorderSide(color: AppColors.primaryWhite, width: 1.5),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_assets.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';

class CustomDropMenu extends StatefulWidget {
  const CustomDropMenu({super.key});

  @override
  State<CustomDropMenu> createState() => _CustomDropMenuState();
}

class _CustomDropMenuState extends State<CustomDropMenu> {
  String? value;
  List<String> items = ["English", "Arabic"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 4, 10, 4),
      width: MediaQuery.widthOf(context) * 269 / 393,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primaryBlack,
        border: Border.all(color: AppColors.primaryWhite),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: AppColors.mediumGrey,
          icon: ImageIcon(AssetImage(AppAssets.polygonIcon)),
          iconSize: 32,
          iconEnabledColor: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(16),
          isExpanded: true,
          value: value ?? items[0],
          items: items.map((e) => buildMenuItems(e)).toList(),
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItems(String item) => DropdownMenuItem(
  value: item,
  child: Text(
    item,
    style: AppStyles.medium20.copyWith(color: AppColors.primaryWhite),
  ),
);
