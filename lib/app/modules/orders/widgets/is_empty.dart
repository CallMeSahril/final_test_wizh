import 'package:flutter/material.dart';

class IsEmpty extends StatelessWidget {
final String title;
  const IsEmpty({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
      child: Column(
        children: [
          Icon(Icons.list_alt_outlined, size: 100),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            "Semua e-tiket milikmu akan ditampilkan disini. Yuk, rencanakan perjalananmu dengan www.yourweb.com!",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
