import 'package:pangolin/components/overlays/quick_settings/pages/qs_event/color_picker.dart';
import 'package:pangolin/components/overlays/quick_settings/widgets/qs_titlebar.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/events_manager.dart';
import 'package:pangolin/widgets/global/box/box_container.dart';
import 'package:pangolin/widgets/global/quick_button.dart';
import 'package:flutter/material.dart';

class QsNewEventPage extends StatefulWidget {
  const QsNewEventPage({super.key});

  @override
  _QsNewEventPageState createState() => _QsNewEventPageState();
}

class _QsNewEventPageState extends State<QsNewEventPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final ColorPickerController colorPickerController = ColorPickerController();

  bool isAllDay = false;

  @override
  void dispose() {
    titleController.dispose();
    locationController.dispose();
    notesController.dispose();
    colorPickerController.dispose();
    super.dispose();
  }

  void _createEvent() {
    final EventsProvider events = EventsProvider.of(context, listen: false);
    final Event event = Event(
      title: titleController.text,
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 2)),
      location: locationController.text,
      notes: notesController.text,
      color: colorPickerController.color,
    );

    events.manager.addEvent(event);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QsTitlebar(
        title: "New Event",
        trailing: [
          QuickActionButton(
            leading: const Icon(Icons.check),
            onPressed: _createEvent,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _TextField(
                controller: titleController,
                hint: "Event Title",
              ),
              const SizedBox(height: 8.0),
              _TextField(
                controller: locationController,
                hint: "Location",
              ),
              const SizedBox(height: 8.0),
              ColorPicker(colorPickerController),
              Row(
                children: [
                  Checkbox(
                    value: isAllDay,
                    onChanged: (value) => setState(() {
                      if (value != null) {
                        isAllDay = value;
                      }
                    }),
                  ),
                  const Text("All day"),
                ],
              ),
              const SizedBox(height: 8.0),
              const _TextField(
                hint: "Start",
              ),
              const SizedBox(height: 8.0),
              const _TextField(
                hint: "End",
              ),
              const SizedBox(height: 8.0),
              const _TextField(
                hint: "Subject",
              ),
              const SizedBox(height: 8.0),
              _TextField(
                controller: notesController,
                hint: "Note",
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final int? maxLines;

  const _TextField({
    required this.hint,
    this.controller,
    this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxContainer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 48.0,
      child: Material(
        type: MaterialType.transparency,
        child: TextField(
          controller: controller,
          maxLines: maxLines,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
