// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_dummy.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJobDummyCollection on Isar {
  IsarCollection<JobDummy> get jobDummys => this.collection();
}

const JobDummySchema = CollectionSchema(
  name: r'JobDummy',
  id: 8123108829649030343,
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
  estimateSize: _jobDummyEstimateSize,
  serialize: _jobDummySerialize,
  deserialize: _jobDummyDeserialize,
  deserializeProp: _jobDummyDeserializeProp,
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
  getId: _jobDummyGetId,
  getLinks: _jobDummyGetLinks,
  attach: _jobDummyAttach,
  version: '3.1.0+1',
);

int _jobDummyEstimateSize(
  JobDummy object,
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

void _jobDummySerialize(
  JobDummy object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.company);
  writer.writeString(offsets[1], object.jobName);
  writer.writeString(offsets[2], object.spot);
  writer.writeString(offsets[3], object.yearmonth);
}

JobDummy _jobDummyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JobDummy();
  object.company = reader.readString(offsets[0]);
  object.id = id;
  object.jobName = reader.readString(offsets[1]);
  object.spot = reader.readString(offsets[2]);
  object.yearmonth = reader.readString(offsets[3]);
  return object;
}

P _jobDummyDeserializeProp<P>(
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

Id _jobDummyGetId(JobDummy object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jobDummyGetLinks(JobDummy object) {
  return [];
}

void _jobDummyAttach(IsarCollection<dynamic> col, Id id, JobDummy object) {
  object.id = id;
}

extension JobDummyQueryWhereSort on QueryBuilder<JobDummy, JobDummy, QWhere> {
  QueryBuilder<JobDummy, JobDummy, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JobDummyQueryWhere on QueryBuilder<JobDummy, JobDummy, QWhereClause> {
  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> idBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> yearmonthEqualTo(
      String yearmonth) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'yearmonth',
        value: [yearmonth],
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterWhereClause> yearmonthNotEqualTo(
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

extension JobDummyQueryFilter
    on QueryBuilder<JobDummy, JobDummy, QFilterCondition> {
  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyEqualTo(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyGreaterThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyLessThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyStartsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyEndsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyContains(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyMatches(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> idBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameEqualTo(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameGreaterThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameLessThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameStartsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameEndsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameContains(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameMatches(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobName',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> jobNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jobName',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotEqualTo(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotGreaterThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotLessThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotStartsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotEndsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotContains(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotMatches(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spot',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> spotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spot',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthEqualTo(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthGreaterThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthLessThan(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthBetween(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthStartsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthEndsWith(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthContains(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthMatches(
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

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition> yearmonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearmonth',
        value: '',
      ));
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterFilterCondition>
      yearmonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'yearmonth',
        value: '',
      ));
    });
  }
}

extension JobDummyQueryObject
    on QueryBuilder<JobDummy, JobDummy, QFilterCondition> {}

extension JobDummyQueryLinks
    on QueryBuilder<JobDummy, JobDummy, QFilterCondition> {}

extension JobDummyQuerySortBy on QueryBuilder<JobDummy, JobDummy, QSortBy> {
  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByJobName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByJobNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortBySpot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortBySpotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByYearmonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> sortByYearmonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.desc);
    });
  }
}

extension JobDummyQuerySortThenBy
    on QueryBuilder<JobDummy, JobDummy, QSortThenBy> {
  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByJobName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByJobNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobName', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenBySpot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenBySpotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spot', Sort.desc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByYearmonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.asc);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QAfterSortBy> thenByYearmonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearmonth', Sort.desc);
    });
  }
}

extension JobDummyQueryWhereDistinct
    on QueryBuilder<JobDummy, JobDummy, QDistinct> {
  QueryBuilder<JobDummy, JobDummy, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QDistinct> distinctByJobName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QDistinct> distinctBySpot(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spot', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<JobDummy, JobDummy, QDistinct> distinctByYearmonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yearmonth', caseSensitive: caseSensitive);
    });
  }
}

extension JobDummyQueryProperty
    on QueryBuilder<JobDummy, JobDummy, QQueryProperty> {
  QueryBuilder<JobDummy, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JobDummy, String, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<JobDummy, String, QQueryOperations> jobNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobName');
    });
  }

  QueryBuilder<JobDummy, String, QQueryOperations> spotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spot');
    });
  }

  QueryBuilder<JobDummy, String, QQueryOperations> yearmonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yearmonth');
    });
  }
}
