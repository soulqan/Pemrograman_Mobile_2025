import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({
    super.key,
    required Widget child,
    // Ubah parameternya menjadi List<Plan>
    required ValueNotifier<List<Plan>> notifier, 
  }) : super(child: child, notifier: notifier);

  // Ubah tipe data yang dikembalikan (return type) menjadi List<Plan>
  static ValueNotifier<List<Plan>> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
  }
}