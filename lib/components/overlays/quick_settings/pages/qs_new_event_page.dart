import 'package:pangolin/components/overlays/quick_settings/widgets/qs_titlebar.dart';
import 'package:pangolin/utils/data/common_data.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/events_manager.dart';
import 'package:pangolin/widgets/global/box/box_container.dart';
import 'package:pangolin/widgets/global/quick_button.dart';

class QsNewEventPage extends StatefulWidget {
  const QsNewEventPage({super.key});

  @override
  _QsNewEventPageState createState() => _QsNewEventPageState();
}

class _QsNewEventPageState extends State<QsNewEventPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  bool isAllDay = false;

  @override
  void dispose() {
    titleController.dispose();
    locationController.dispose();
    notesController.dispose();
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
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _TextField(
                    controller: titleController,
                    hint: "Event Title",
                  ),
                ),
                const SizedBox(width: 8.0),
                const _PickColor(),
              ],
            ),
            const SizedBox(height: 8.0),
            _TextField(
              controller: locationController,
              hint: "Location",
            ),
            Row(
              children: [
                Checkbox(
                  value: isAllDay,
                  onChanged: (value) {},
                ),
                const Text("All day"),
              ],
            ),
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
      borderRadius:
          CommonData.of(context).borderRadius(BorderRadiusType.medium),
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

// TODO: implement DropDown
class _PickColor extends StatelessWidget {
  const _PickColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxContainer(
      borderRadius:
          CommonData.of(context).borderRadius(BorderRadiusType.medium),
      width: 48,
      height: 48,
      child: Material(
        type: MaterialType.transparency,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius:
                    CommonData.of(context).borderRadius(BorderRadiusType.round),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
