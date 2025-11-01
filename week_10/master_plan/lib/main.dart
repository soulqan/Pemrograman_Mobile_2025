import 'package:flutter/material.dart';
import 'package:master_plan/models/data_layer.dart'; // Impor data_layer
import 'package:master_plan/views/plan_creator_screen.dart'; // Impor screen baru

void main() => runApp(MasterPlanApp());

// Di lib/main.dart
class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. ANGKAT PlanProvider ke atas
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>([]),
      // 2. MaterialApp sekarang ada DI DALAM provider
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        // 3. 'home' hanya berisi layar saja
        home: const PlanCreatorScreen(),
      ),
    );
  }
}