import 'package:pangolin/components/overlays/quick_settings/widgets/qs_titlebar.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/date_time_manager.dart';

class QsCalendarPage extends StatelessWidget {
  const QsCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const QsTitlebar(
        title: "Calendar",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            const SizedBox(width: 200),
            ValueListenableBuilder(
              valueListenable: DateTimeManager.getDateNotifier()!,
              builder: (BuildContext context, String date, child) {
                return ValueListenableBuilder(
                  valueListenable: DateTimeManager.getTimeNotifier()!,
                  builder: (BuildContext context, String time, child) {
                    return Text("$date - $time");
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
