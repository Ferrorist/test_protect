import 'package:flutter/material.dart';
import 'package:protect/models/hospital_model.dart';

class FindEmergency extends StatelessWidget {
  FindEmergency({super.key});
  // 검색된 병원 목록
  List<HospitalModel> HospitalInstances = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Center(
                child: Text(
                  "병원 탐색",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "현재 증상을 적어주세요.",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                      focusColor: Colors.greenAccent,
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
