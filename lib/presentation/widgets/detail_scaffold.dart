import 'package:flutter/material.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';

class DetailScaffold extends StatefulWidget {
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final List<Widget> slivers;
  final double expandedHeight;

  final bool hasPinnedAppBar;

  DetailScaffold({
    Key? key,
    required this.expandedHeight,
    this.controller,
    this.physics,
    required this.slivers,
    this.hasPinnedAppBar = false,
  }) : super(key: key);

  @override
  _DetailScaffoldState createState() => _DetailScaffoldState();
}

class _DetailScaffoldState extends State<DetailScaffold> {
  late ScrollController ctrl;

  @override
  void initState() {
    super.initState();

    ctrl = widget.controller ?? ScrollController();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      ctrl.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          controller: ctrl,
          physics: widget.physics,
          slivers: widget.slivers,
        ),
        _buildEdge(),
      ],
    );
  }

  Positioned _buildEdge() {
    const edgeHeight = Constants.d30;
    final paddingTop = MediaQuery.of(context).padding.top + Constants.baseQ;

    final defaultOffset = (paddingTop + widget.expandedHeight) - edgeHeight;

    var top = defaultOffset;
    var edgeSize = edgeHeight;

    if (ctrl.hasClients) {
      final double offset = ctrl.offset;
      top -= offset > 0 ? offset : 0;

      if (widget.hasPinnedAppBar) {
        // Hide edge to prevent overlapping the toolbar during scroll.
        final breakpoint = widget.expandedHeight - kToolbarHeight - edgeHeight;

        if (offset >= breakpoint) {
          edgeSize = edgeHeight - (offset - breakpoint);
          if (edgeSize < 0) {
            edgeSize = 0;
          }
          top += edgeHeight - edgeSize;
        }
      }
    }

    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: Container(
        height: edgeSize,
        decoration: const BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Constants.d30),
          ),
        ),
      ),
    );
  }
}
