import 'package:flutter/material.dart';
import 'package:pangolin/components/settings/data/presets.dart';
import 'package:pangolin/utils/data/common_data.dart';
import 'package:pangolin/widgets/global/box/box_container.dart';

class ColorPickerController extends ValueNotifier<Color> {
  ColorPickerController({Color? value})
      : super(value ?? SettingsPresets.accentColorPresets.first.color);

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
        itemCount: SettingsPresets.accentColorPresets.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            BoxContainer(
              borderRadius:
                  CommonData.of(context).borderRadius(BorderRadiusType.medium),
              width: 48,
              height: 48,
              child: Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () => setState(() {
                    widget.controller.color =
                        SettingsPresets.accentColorPresets[index].color;
                  }),
                  child: Center(
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: SettingsPresets.accentColorPresets[index].color,
                        borderRadius: CommonData.of(context)
                            .borderRadius(BorderRadiusType.round),
                      ),
                      child: widget.controller.color ==
                              SettingsPresets.accentColorPresets[index].color
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
