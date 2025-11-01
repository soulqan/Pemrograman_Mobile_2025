import '../models/data_layer.dart';
import 'package:flutter/material.dart';


class PlanScreen extends StatefulWidget {
  final Plan plan; // Tambahkan ini
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get plan => widget.plan; // Tambahkan getter ini
  
  // ... rest of the class
  // @override
  // Widget build(BuildContext context) {
  //  return Scaffold(
  //   // ganti ‘Namaku' dengan Nama panggilan Anda
  //   appBar: AppBar(title: const Text('Master Plan Namaku')),
  //   body: _buildList(),
  //   floatingActionButton: _buildAddTaskButton(),
  //  );
  // }

@override
Widget build(BuildContext context) {
  // Dapatkan notifier untuk List<Plan>
  ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

  return Scaffold(
    appBar: AppBar(title: Text(plan.name)), // Gunakan getter 'plan'
    // Dengarkan perubahan pada List<Plan>
    body: ValueListenableBuilder<List<Plan>>(
      valueListenable: plansNotifier,
      builder: (context, plans, child) {
        // Temukan 'plan' saat ini dari dalam 'list plans'
        Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
        return Column(
          children: [
            Expanded(child: _buildList(currentPlan)), // Kirim currentPlan
            SafeArea(child: Text(currentPlan.completenessMessage)),
          ],
        );
      },
    ),
    floatingActionButton: _buildAddTaskButton(context),
  );
}

//   Widget _buildAddTaskButton() {
//   return FloatingActionButton(
//    child: const Icon(Icons.add),
//    onPressed: () {
//      setState(() {
//       plan = Plan(
//        name: plan.name,
//        tasks: List<Task>.from(plan.tasks)
//        ..add(const Task()),
//      );
//     });
//    },
//   );
// }

Widget _buildAddTaskButton(BuildContext context) {
  ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
      Plan currentPlan = plan; // Dapatkan plan dari getter
      // Cari index dari plan saat ini
      int planIndex =
          planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
      // Buat list tasks yang sudah diupdate
      List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
        ..add(const Task());
      // Buat list plans yang baru
      planNotifier.value = List<Plan>.from(planNotifier.value)
        ..[planIndex] = Plan( // Ganti plan di index yang sesuai
          name: currentPlan.name,
          tasks: updatedTasks,
        );
    },
  );
}

// Widget _buildList() {
//   return ListView.builder(
//    itemCount: plan.tasks.length,
//    itemBuilder: (context, index) =>
//    _buildTaskTile(plan.tasks[index], index),
//   );
// }

// Widget _buildList() {
//   return ListView.builder(
//    controller: scrollController, // Tambahkan ini
//    keyboardDismissBehavior: Theme.of(context).platform == // Tambahkan ini
//          TargetPlatform.iOS
//           ? ScrollViewKeyboardDismissBehavior.onDrag
//           : ScrollViewKeyboardDismissBehavior.manual, // Tambahkan ini
//    itemCount: plan.tasks.length,
//    itemBuilder: (context, index) =>
//    _buildTaskTile(plan.tasks[index], index),
//   );
// }

Widget _buildList(Plan plan) { // Terima 'plan' dari parameter
  return ListView.builder(
    controller: scrollController,
    keyboardDismissBehavior: Theme.of(context).platform ==
            TargetPlatform.iOS
        ? ScrollViewKeyboardDismissBehavior.onDrag
        : ScrollViewKeyboardDismissBehavior.manual,
    itemCount: plan.tasks.length,
    itemBuilder: (context, index) =>
        _buildTaskTile(plan.tasks[index], index, context), // Tambahkan 'context'
  );
}

// Widget _buildTaskTile(Task task, int index) {
//     return ListTile(
//       leading: Checkbox(
//           value: task.complete,
//           onChanged: (selected) {
//             setState(() {
//               plan = Plan(
//                 name: plan.name,
//                 tasks: List<Task>.from(plan.tasks)
//                   ..[index] = Task(
//                     description: task.description,
//                     complete: selected ?? false,
//                   ),
//               );
//             });
//           }),
//       title: TextFormField(
//         initialValue: task.description,
//         onChanged: (text) {
//           setState(() {
//             plan = Plan(
//               name: plan.name,
//               tasks: List<Task>.from(plan.tasks)
//                 ..[index] = Task(
//                   description: text,
//                   complete: task.complete,
//                 ),
//             );
//           });
//         },
//       ),
//     );
//   }

Widget _buildTaskTile(Task task, int index, BuildContext context) {
  ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
  
  // Dapatkan plan saat ini dari getter
  Plan currentPlan = plan;
  
  return ListTile(
    leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          int planIndex =
              planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
        }),
    title: TextFormField(
      initialValue: task.description,
      onChanged: (text) {
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: text,
                complete: task.complete,
              ),
          );
      },
    ),
  );
}
  
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }
  
@override
void dispose() {
  scrollController.dispose();
  super.dispose();
}
}