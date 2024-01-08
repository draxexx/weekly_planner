import 'package:flutter/material.dart';
import 'package:weekly_planner/feature/task/widgets/task_progress.dart';
import 'package:weekly_planner/feature/task/widgets/task_remaining_time.dart';
import 'package:weekly_planner/feature/task/widgets/task_subtasks_container.dart';
import 'package:weekly_planner/feature/task/widgets/task_subtasks_title.dart';
import 'package:weekly_planner/feature/task/widgets/task_tag_list.dart';
import 'package:weekly_planner/product/utils/custom_box_shadow.dart';
import 'package:weekly_planner/product/utils/custom_padding.dart';
import 'package:weekly_planner/product/utils/custom_radius.dart';
import 'package:weekly_planner/product/utils/custom_space.dart';
import 'package:weekly_planner/product/widgets/custom_icon.dart';
import 'package:weekly_planner/product/widgets/custom_text.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> with TickerProviderStateMixin {
  final _duration = const Duration(milliseconds: 500);
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: _duration);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

  bool _isExpanded = false;

  // expand subtasks container
  void _expandSubTasks() async {
    _isExpanded ? _controller.reverse() : _controller.forward();

    if (_isExpanded) {
      await Future.delayed(_duration);
    }

    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _taskMainCard(),
        TaskSubtasksContainer(controller: _controller, animation: _animation),
      ],
    );
  }

  Widget _taskMainCard() {
    return Container(
      margin: CustomPadding().exceptBottomLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _taskTime(),
          CustomSpace().verticalMedium,
          _taskContainer(),
        ],
      ),
    );
  }

  Container _taskContainer() {
    return Container(
      padding: CustomPadding().allLarge,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius:
            _isExpanded ? CustomRadius().topMedium : CustomRadius().allMedium,
        boxShadow: [
          CustomBoxShadow().boxShadow(),
        ],
      ),
      child: _taskColumn(),
    );
  }

  Column _taskColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            TaskTagList(),
            TaskRemainingTime(),
          ],
        ),
        CustomSpace().verticalMedium,
        _taskTitle(),
        const TaskProgress(),
        CustomSpace().verticalMedium,
        _taskBottom(),
      ],
    );
  }

  Row _taskBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TaskSubtasksTitle(
          onTap: _expandSubTasks,
          isExpanded: _isExpanded,
        ),
        const CustomIcon(
          icon: Icons.more_horiz,
          size: 32,
        ),
      ],
    );
  }

  CustomText _taskTitle() {
    return CustomText(
      text: "Create Design System",
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  CustomText _taskTime() {
    return CustomText(
      text: "9.00 AM - 11.00 AM",
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.surface,
          ),
    );
  }
}
