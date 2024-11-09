import 'package:flutter/material.dart';

class VStack extends StatelessWidget {
  VStack({
    this.spacing = 0,
    this.padding,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
    super.key,
    List<Widget>? children,
  }) : children = _addSpacing(children, spacing);

  final double? spacing;
  final EdgeInsetsGeometry? padding;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;

  final List<Widget>? children;

  static List<Widget> _addSpacing(List<Widget>? children, double? spacing) {
    if (children == null) {
      return [];
    }
    final spacedChildren = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(height: spacing ?? 0));
      }
    }
    return spacedChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        verticalDirection: verticalDirection,
        children: children ?? [],
      ),
    );
  }
}
