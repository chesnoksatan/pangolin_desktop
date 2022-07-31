import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventsProvider extends ChangeNotifier {
  static EventsProvider of(BuildContext context, {bool listen = true}) =>
      Provider.of<EventsProvider>(context, listen: listen);

  late final EventsManager manager;

  EventsProvider([List<Event>? events]) {
    manager = EventsManager(events);
    manager.addListener((_, __) => notifyListeners());
  }
}

class EventsManager extends CalendarDataSource {
  EventsManager([List<Event>? events]) {
    appointments = List<Event>.empty(growable: true);
    if (events != null) {
      appointments?.addAll(events);
    }
  }

  void addEvent(Event event) {
    appointments?.add(event);
    notifyListeners(CalendarDataSourceAction.add, [event]);
  }
}

class Event extends Appointment {
  String title;

  Event({
    required super.startTime,
    required super.endTime,
    required this.title,
    super.startTimeZone,
    super.endTimeZone,
    super.recurrenceRule,
    super.location,
    super.isAllDay = false,
    super.notes,
    super.resourceIds,
    super.id,
    super.subject = '',
    super.color = Colors.lightBlue,
    super.recurrenceExceptionDates,
  });
}
