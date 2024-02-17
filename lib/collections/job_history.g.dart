// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJobHistoryCollection on Isar {
  IsarCollection<JobHistory> get jobHistorys => this.collection();
}

const JobHistorySchema = CollectionSchema(
  name: r'JobHistory',
  id: 1491988795245410118,
  properties: {
    r'company': PropertySchema(
      id: 0,
      name: r'company',
      type: IsarType.string,
    ),
    r'jobName': PropertySchema(
      id: 1,
      name: r'jobName',
      type: IsarType.string,
    ),
    r'spot': PropertySchema(
      id: 2,
      name: r'spot',
      type: IsarType.string,
    ),
    r'yearmonth': PropertySchema(
      id: 3,
      name: r'yearmonth',
      type: IsarType.string,
    )
  },
  estimateSize: _jobHistoryEstimateSize,
  serialize: _jobHistorySerialize,
  deserialize: _jobHistoryDeserialize,
  deserializeProp: _jobHistoryDeserializeProp,
  idName: r'id',
  indexes: {
    r'yearmonth': IndexSchema(
      id: -155441433374168257,
      name: r'yearmonth',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'yearmonth',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _jobHistoryGetId,
  getLinks: _jobHistoryGetLinks,
  attach: _jobHistoryAttach,
  version: '3.1.0+1',
);

int _jobHistoryEstimateSize(
  JobHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.company.length * 3;
  bytesCount += 3 + object.jobName.length * 3;
  bytesCount += 3 + object.spot.length * 3;
  bytesCount += 3 + object.yearmonth.length * 3;
  return bytesCount;
}

void _jobHistorySerialize(
  JobHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.company);
  writer.writeString(offsets[1], object.jobName);
  writer.writeString(offsets[2], object.spot);
  writer.writeString(offsets[3], object.yearmonth);
}

JobHistory _jobHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JobHistory();
  object.company = reader.readString(offsets[0]);
  object.id = id;
  object.jobName = reader.readString(offsets[1]);
  object.spot = reader.readString(offsets[2]);
  object.yearmonth = reader.readString(offsets[3]);
  return object;
}

P _jobHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jobHistoryGetId(JobHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jobHistoryGetLinks(JobHistory object) {
  return [];
}

void _jobHistoryAttach(IsarCollection<dynamic> col, Id id, JobHistory object) {
  object.id = id;
}

extension JobHistoryQueryWhereSort
    on QueryBuilder<JobHistory, JobHistory, QWhere> {
  QueryBuilder<JobHistory, JobHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JobHistoryQueryWhere
    on QueryBuilder<JobHistory, JobHistory, QWhereClause> {
  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> yearmonthEqualTo(
      String yearmonth) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'yearmonth',
        value: [yearmonth],
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterWhereClause> yearmonthNotEqualTo(
      String yearmonth) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearmonth',
              lower: [],
              upper: [yearmonth],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearmonth',
              lower: [yearmonth],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearmonth',
              lower: [yearmonth],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearmonth',
              lower: [],
              upper: [yearmonth],
              includeUpper: false,
            ));
      }
    });
  }
}

extension JobHistoryQueryFilter
    on QueryBuilder<JobHistory, JobHistory, QFilterCondition> {
  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      companyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      jobNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jobName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jobName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> jobNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobName',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      jobNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jobName',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spot',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> spotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spot',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      yearmonthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yearmonth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      yearmonthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'yearmonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition> yearmonthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'yearmonth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      yearmonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearmonth',
        value: '',
      ));
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterFilterCondition>
      yearmonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'yearmonth',
        value: '',
      ));
    });
  }
}

extension JobHistoryQueryObject
    on QueryBuilder<JobHistory, JobHistory, QFilterCondition> {}

extension JobHistoryQueryLinks
    on QueryBuilder<JobHistory, JobHistory, QFilterCondition> {}

extension JobHistoryQuerySortBy
    on QueryBuilder<JobHistory, JobHistory, QSortBy> {
  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByJobName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByJobNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortBySpot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortBySpotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByYearmonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> sortByYearmonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.desc);
    });
  }
}

extension JobHistoryQuerySortThenBy
    on QueryBuilder<JobHistory, JobHistory, QSortThenBy> {
  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByJobName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByJobNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenBySpot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenBySpotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.desc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByYearmonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.asc);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QAfterSortBy> thenByYearmonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.desc);
    });
  }
}

extension JobHistoryQueryWhereDistinct
    on QueryBuilder<JobHistory, JobHistory, QDistinct> {
  QueryBuilder<JobHistory, JobHistory, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QDistinct> distinctByJobName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QDistinct> distinctBySpot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spot', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobHistory, JobHistory, QDistinct> distinctByYearmonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yearmonth', caseSensitive: caseSensitive);
    });
  }
}

extension JobHistoryQueryProperty
    on QueryBuilder<JobHistory, JobHistory, QQueryProperty> {
  QueryBuilder<JobHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JobHistory, String, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<JobHistory, String, QQueryOperations> jobNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobName');
    });
  }

  QueryBuilder<JobHistory, String, QQueryOperations> spotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spot');
    });
  }

  QueryBuilder<JobHistory, String, QQueryOperations> yearmonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yearmonth');
    });
  }
}
