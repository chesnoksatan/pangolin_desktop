import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pangolin/services/icon.dart';
import 'package:pangolin/widgets/global/icon/xpm.dart';
import 'package:path/path.dart' as p;

class DynamicIcon extends StatefulWidget {
  final String icon;
  final int size;
  final bool lookupForSize;

  const DynamicIcon({
    required this.icon,
    this.size = 24,
    this.lookupForSize = false,
    super.key,
  });

  @override
  State<DynamicIcon> createState() => _DynamicIconState();
}

class _DynamicIconState extends State<DynamicIcon> {
  String? _loadedIcon;

  @override
  void initState() {
    super.initState();
    _loadIcon();
    IconService.current.addListener(_loadIcon);
  }

  @override
  void dispose() {
    IconService.current.removeListener(_loadIcon);
    super.dispose();
  }

  @override
  void didUpdateWidget(DynamicIcon oldWidget) {
    if (widget.icon != oldWidget.icon || widget.size != oldWidget.size) {
      _loadIcon();
    }
    super.didUpdateWidget(oldWidget);
  }

  Future<void> _loadIcon() async {
    if (widget.icon.startsWith("/")) {
      _loadedIcon = widget.icon;
    } else {
      _loadedIcon = await IconService.current.lookup(
            widget.icon,
            widget.lookupForSize ? widget.size : null,
          ) ??
          await IconService.current.lookup(
            "application-x-executable",
            widget.lookupForSize ? widget.size : null,
          );
    }
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedIcon == null) {
      return SizedBox.square(dimension: widget.size.toDouble());
    }

    if (_loadedIcon!.startsWith("asset://")) {
      return Image.asset(
        _loadedIcon!.replaceAll("asset://", ""),
        width: widget.size.toDouble(),
        height: widget.size.toDouble(),
      );
    }

    final String ext = p.extension(_loadedIcon!);

    switch (ext) {
      case ".svg":
        return SvgPicture.file(
          File(_loadedIcon!),
          width: widget.size.toDouble(),
          height: widget.size.toDouble(),
        );
      case ".png":
        return Image.file(
          File(_loadedIcon!),
          width: widget.size.toDouble(),
          height: widget.size.toDouble(),
        );
      case ".xpm":
        return XpmImage(
          File(_loadedIcon!),
          width: widget.size.toDouble(),
          height: widget.size.toDouble(),
        );
    }

    return SizedBox.square(dimension: widget.size.toDouble());
  }
}
