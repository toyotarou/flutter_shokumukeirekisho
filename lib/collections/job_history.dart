import 'package:isar/isar.dart';

part 'job_history.g.dart';

@collection
class JobHistory {
  Id id = Isar.autoIncrement;

  @Index()
  late String yearmonth;

  late String jobName;

  late String spot;

  late String company;
}
