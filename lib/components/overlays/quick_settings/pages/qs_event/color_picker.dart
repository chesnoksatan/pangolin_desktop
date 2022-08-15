import 'package:flutter/material.dart';
import 'package:pangolin/components/settings/data/presets.dart';
import 'package:pangolin/widgets/global/box/box_container.dart';
import 'package:flutter/material.dart';
import 'package:pangolin/utils/data/constants.dart';

class ColorPickerController extends ValueNotifier<Color> {
  ColorPickerController({Color? value})
      : super(value ?? BuiltinColor.values.first.value);

  Color get color => value;
  set color(Color newColor) {
    value = newColor;
  }
}

class ColorPicker extends StatefulWidget {
  final ColorPickerController controller;

  const ColorPicker(this.controller);

  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: ListView.builder(
        itemCount: BuiltinColor.values.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            BoxContainer(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              width: 48,
              height: 48,
              child: Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () => setState(() {
                    widget.controller.color = BuiltinColor.values[index].value;
                  }),
                  child: Center(
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: BuiltinColor.values[index].value,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: widget.controller.color ==
                              BuiltinColor.values[index].value
                          ? const Icon(Icons.check, size: 16.0)
                          : null,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 9.0),
          ],
        ),
      ),
    );
  }
}
