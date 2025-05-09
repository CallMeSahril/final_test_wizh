import 'package:final_test_wizh/app/modules/history/widget/build_warning.dart';
import 'package:flutter/material.dart';

class BuildContaintOrder extends StatelessWidget {
  final bool? isReschedule;
  final String? title;
  const BuildContaintOrder({
    super.key,
    this.isReschedule = false,
    this.title = "Selesai",
  });
  _getColorTitle() {
    return title != "Selesai" ? Colors.green : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Transform.rotate(
                    angle: 45 * 3.1415927 / 180,
                    child: Icon(Icons.airplanemode_active),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Jakarta - Bali",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_sharp,size: 16,),
            ],
          ),
          Text(
            "Min, 16 Mar 2025 - 01:20",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.grey[800]),
          ),
          Text(
            "Lion Air - Soekarno Hatta, Terminal 2A Domestik",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: Colors.grey[800]),
          ),
          Divider(),
          Text(
            title!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: _getColorTitle(),
            ),
          ),
          BuildWarning(isReschedule: isReschedule!),
        ],
      ),
    );
  }
}
