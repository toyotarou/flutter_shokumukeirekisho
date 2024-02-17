import 'package:isar/isar.dart';

part 'job_dummy.g.dart';

@collection
class JobDummy {
  Id id = Isar.autoIncrement;

  @Index()
  late String yearmonth;

  late String jobName;

  late String spot;

  late String company;
}
