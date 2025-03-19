
import 'package:flutter/material.dart';

class BuildWarning extends StatelessWidget {
  final bool isReschedule;
  const BuildWarning({super.key, this.isReschedule = false});

  Widget _buildContaint() {
    return isReschedule
        ? Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.info, color: Colors.blue),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Menampilkan Riwayat Perjalananmu Dalam 90 hari terakhir",
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        )
        : SizedBox.shrink();
  }

  Widget _buildContaintReschedule() {
    return isReschedule
        ? Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.warning, color: Colors.orange),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Penerbanganmu di reschedule oleh pihak maskapai.",
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        )
        : SizedBox.shrink();
  }

  Widget getBuildContaint() {
    return isReschedule ? _buildContaintReschedule() : _buildContaint();
  }

  @override
  Widget build(BuildContext context) {
    return getBuildContaint();
  }
}