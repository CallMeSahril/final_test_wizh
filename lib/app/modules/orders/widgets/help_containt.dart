import 'package:flutter/material.dart';

class HelpContaint extends StatelessWidget {
  const HelpContaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blue[100],
        ),
        child: Row(
          spacing: 8,
          children: [
            Icon(Icons.help, size: 50, color: Colors.lightBlue[50]),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    "Pesananmu bermasalah?",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Kami siap membantu kamu. Hubungi kami melalui live chat atau email.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  InkWell(
                    child: Text(
                      "Pusat Bantuan",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
