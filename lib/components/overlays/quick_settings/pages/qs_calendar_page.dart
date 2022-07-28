import 'package:intl/intl.dart';
import 'package:pangolin/components/overlays/quick_settings/widgets/qs_titlebar.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/date_time_manager.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
        child: ValueListenableBuilder(
          valueListenable: DateTimeManager.getDateNotifier()!,
          builder: (context, String value, child) {
            return Calendar();
          },
        ),
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SfCalendar(
      view: CalendarView.month,
      headerDateFormat: "EE, MMMM d, yyyy",
      showNavigationArrow: true,
      selectionDecoration: BoxDecoration(
        color: theme.colorScheme.secondary.withOpacity(0.2),
      ),
      headerStyle: const CalendarHeaderStyle(
        textAlign: TextAlign.center,
      ),
    );
  }
}
