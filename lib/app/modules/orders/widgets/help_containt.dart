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
          color: Colors.lightBlueAccent[100],
        ),
        child: Row(
          spacing: 8,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Center(child: Text('Logo Here')),
            ),
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
                  Text(
                    "Pusat Bantuan",
                    style: Theme.of(context).textTheme.labelMedium,
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
