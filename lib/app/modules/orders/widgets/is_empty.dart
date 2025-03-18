
import 'package:flutter/material.dart';

class IsEmpty extends StatelessWidget {
  const IsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: const Center(child: Text('Logo Here')),
        ),
        Text(
          "Tidak ada order aktif",
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
    );
  }
}
