import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final bool centerTitle;
  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.centerTitle = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Get.textTheme.titleLarge, // Menggunakan TextTheme
      ),
      centerTitle: centerTitle,
      leading:
          showBackButton
              ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
              )
              : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
