import 'package:flutter/material.dart';

class RefreshWidget extends StatefulWidget {

  final Widget child;
  final Future Function() onRefresh;

  const RefreshWidget({
    required this.child,
    required this.onRefresh,
  });

  @override
  State<RefreshWidget> createState() => _RefreshWidgetState();
}

class _RefreshWidgetState extends State<RefreshWidget> {
  @override
  Widget build(BuildContext context) => buildAndroidList();
  Widget buildAndroidList() => RefreshIndicator(
    onRefresh: widget.onRefresh,
    child: widget.child,
  );
}