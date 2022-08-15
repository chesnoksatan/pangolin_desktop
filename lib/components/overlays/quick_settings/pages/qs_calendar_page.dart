import 'package:pangolin/components/overlays/quick_settings/widgets/qs_titlebar.dart';
import 'package:pangolin/utils/extensions/extensions.dart';
import 'package:pangolin/utils/other/events_manager.dart';
import 'package:pangolin/widgets/global/quick_button.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';

class QsCalendarPage extends StatelessWidget {
  const QsCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QsTitlebar(
        title: "Calendar",
        trailing: [
          QuickActionButton(
            leading: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, "/pages/new_event"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Calendar(),
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final EventsProvider events = EventsProvider.of(context);
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
      dataSource: events.manager,
    );
  }
}
