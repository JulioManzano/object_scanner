import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../styles/text_style.dart';

class AppBarBasic extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBasic({
    Key? key,
    this.title,
    this.titleWidget,
    this.automaticallyImplyLeading = false,
    this.centerTitle = false,
    this.leading,
  }) : super(key: key);
  final Widget? titleWidget;
  final Widget? leading;
  final String? title;
  final bool automaticallyImplyLeading;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ?? Text(title ?? '' , style: StyleTxt.appBarTitle,),
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: centerTitle,
      titleSpacing: 0,
      actions: [
        if(titleWidget!=null)const SizedBox(width: 40,),
        /*IconButton(
          onPressed: () {
            //Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),*/
      ],
      leading: IconButton(
        onPressed: () {
          //Navigator.of(context).pop();
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
