// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ListiTableTable extends ListiTable
    with TableInfo<$ListiTableTable, ListiTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ListiTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 4,
      maxTextLength: 30,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _obsMeta = const VerificationMeta('obs');
  @override
  late final GeneratedColumn<String> obs = GeneratedColumn<String>(
    'obs',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateCreateMeta = const VerificationMeta(
    'dateCreate',
  );
  @override
  late final GeneratedColumn<DateTime> dateCreate = GeneratedColumn<DateTime>(
    'dateCreate',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateUpdateMeta = const VerificationMeta(
    'dateUpdate',
  );
  @override
  late final GeneratedColumn<DateTime> dateUpdate = GeneratedColumn<DateTime>(
    'dateUpdate',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, obs, dateCreate, dateUpdate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'listi_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ListiTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('obs')) {
      context.handle(
        _obsMeta,
        obs.isAcceptableOrUnknown(data['obs']!, _obsMeta),
      );
    } else if (isInserting) {
      context.missing(_obsMeta);
    }
    if (data.containsKey('dateCreate')) {
      context.handle(
        _dateCreateMeta,
        dateCreate.isAcceptableOrUnknown(data['dateCreate']!, _dateCreateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateCreateMeta);
    }
    if (data.containsKey('dateUpdate')) {
      context.handle(
        _dateUpdateMeta,
        dateUpdate.isAcceptableOrUnknown(data['dateUpdate']!, _dateUpdateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ListiTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ListiTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      obs: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}obs'],
      )!,
      dateCreate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dateCreate'],
      )!,
      dateUpdate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dateUpdate'],
      )!,
    );
  }

  @override
  $ListiTableTable createAlias(String alias) {
    return $ListiTableTable(attachedDatabase, alias);
  }
}

class ListiTableData extends DataClass implements Insertable<ListiTableData> {
  final int id;
  final String name;
  final String obs;
  final DateTime dateCreate;
  final DateTime dateUpdate;
  const ListiTableData({
    required this.id,
    required this.name,
    required this.obs,
    required this.dateCreate,
    required this.dateUpdate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['obs'] = Variable<String>(obs);
    map['dateCreate'] = Variable<DateTime>(dateCreate);
    map['dateUpdate'] = Variable<DateTime>(dateUpdate);
    return map;
  }

  ListiTableCompanion toCompanion(bool nullToAbsent) {
    return ListiTableCompanion(
      id: Value(id),
      name: Value(name),
      obs: Value(obs),
      dateCreate: Value(dateCreate),
      dateUpdate: Value(dateUpdate),
    );
  }

  factory ListiTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ListiTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      obs: serializer.fromJson<String>(json['obs']),
      dateCreate: serializer.fromJson<DateTime>(json['dateCreate']),
      dateUpdate: serializer.fromJson<DateTime>(json['dateUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'obs': serializer.toJson<String>(obs),
      'dateCreate': serializer.toJson<DateTime>(dateCreate),
      'dateUpdate': serializer.toJson<DateTime>(dateUpdate),
    };
  }

  ListiTableData copyWith({
    int? id,
    String? name,
    String? obs,
    DateTime? dateCreate,
    DateTime? dateUpdate,
  }) => ListiTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    obs: obs ?? this.obs,
    dateCreate: dateCreate ?? this.dateCreate,
    dateUpdate: dateUpdate ?? this.dateUpdate,
  );
  ListiTableData copyWithCompanion(ListiTableCompanion data) {
    return ListiTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      obs: data.obs.present ? data.obs.value : this.obs,
      dateCreate: data.dateCreate.present
          ? data.dateCreate.value
          : this.dateCreate,
      dateUpdate: data.dateUpdate.present
          ? data.dateUpdate.value
          : this.dateUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ListiTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('obs: $obs, ')
          ..write('dateCreate: $dateCreate, ')
          ..write('dateUpdate: $dateUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, obs, dateCreate, dateUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ListiTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.obs == this.obs &&
          other.dateCreate == this.dateCreate &&
          other.dateUpdate == this.dateUpdate);
}

class ListiTableCompanion extends UpdateCompanion<ListiTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> obs;
  final Value<DateTime> dateCreate;
  final Value<DateTime> dateUpdate;
  const ListiTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.obs = const Value.absent(),
    this.dateCreate = const Value.absent(),
    this.dateUpdate = const Value.absent(),
  });
  ListiTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String obs,
    required DateTime dateCreate,
    required DateTime dateUpdate,
  }) : name = Value(name),
       obs = Value(obs),
       dateCreate = Value(dateCreate),
       dateUpdate = Value(dateUpdate);
  static Insertable<ListiTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? obs,
    Expression<DateTime>? dateCreate,
    Expression<DateTime>? dateUpdate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (obs != null) 'obs': obs,
      if (dateCreate != null) 'dateCreate': dateCreate,
      if (dateUpdate != null) 'dateUpdate': dateUpdate,
    });
  }

  ListiTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? obs,
    Value<DateTime>? dateCreate,
    Value<DateTime>? dateUpdate,
  }) {
    return ListiTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      obs: obs ?? this.obs,
      dateCreate: dateCreate ?? this.dateCreate,
      dateUpdate: dateUpdate ?? this.dateUpdate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (obs.present) {
      map['obs'] = Variable<String>(obs.value);
    }
    if (dateCreate.present) {
      map['dateCreate'] = Variable<DateTime>(dateCreate.value);
    }
    if (dateUpdate.present) {
      map['dateUpdate'] = Variable<DateTime>(dateUpdate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ListiTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('obs: $obs, ')
          ..write('dateCreate: $dateCreate, ')
          ..write('dateUpdate: $dateUpdate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ListiTableTable listiTable = $ListiTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [listiTable];
}

typedef $$ListiTableTableCreateCompanionBuilder =
    ListiTableCompanion Function({
      Value<int> id,
      required String name,
      required String obs,
      required DateTime dateCreate,
      required DateTime dateUpdate,
    });
typedef $$ListiTableTableUpdateCompanionBuilder =
    ListiTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> obs,
      Value<DateTime> dateCreate,
      Value<DateTime> dateUpdate,
    });

class $$ListiTableTableFilterComposer
    extends Composer<_$AppDatabase, $ListiTableTable> {
  $$ListiTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get obs => $composableBuilder(
    column: $table.obs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dateCreate => $composableBuilder(
    column: $table.dateCreate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dateUpdate => $composableBuilder(
    column: $table.dateUpdate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ListiTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ListiTableTable> {
  $$ListiTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get obs => $composableBuilder(
    column: $table.obs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dateCreate => $composableBuilder(
    column: $table.dateCreate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dateUpdate => $composableBuilder(
    column: $table.dateUpdate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ListiTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ListiTableTable> {
  $$ListiTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get obs =>
      $composableBuilder(column: $table.obs, builder: (column) => column);

  GeneratedColumn<DateTime> get dateCreate => $composableBuilder(
    column: $table.dateCreate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dateUpdate => $composableBuilder(
    column: $table.dateUpdate,
    builder: (column) => column,
  );
}

class $$ListiTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ListiTableTable,
          ListiTableData,
          $$ListiTableTableFilterComposer,
          $$ListiTableTableOrderingComposer,
          $$ListiTableTableAnnotationComposer,
          $$ListiTableTableCreateCompanionBuilder,
          $$ListiTableTableUpdateCompanionBuilder,
          (
            ListiTableData,
            BaseReferences<_$AppDatabase, $ListiTableTable, ListiTableData>,
          ),
          ListiTableData,
          PrefetchHooks Function()
        > {
  $$ListiTableTableTableManager(_$AppDatabase db, $ListiTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ListiTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ListiTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ListiTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> obs = const Value.absent(),
                Value<DateTime> dateCreate = const Value.absent(),
                Value<DateTime> dateUpdate = const Value.absent(),
              }) => ListiTableCompanion(
                id: id,
                name: name,
                obs: obs,
                dateCreate: dateCreate,
                dateUpdate: dateUpdate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String obs,
                required DateTime dateCreate,
                required DateTime dateUpdate,
              }) => ListiTableCompanion.insert(
                id: id,
                name: name,
                obs: obs,
                dateCreate: dateCreate,
                dateUpdate: dateUpdate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ListiTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ListiTableTable,
      ListiTableData,
      $$ListiTableTableFilterComposer,
      $$ListiTableTableOrderingComposer,
      $$ListiTableTableAnnotationComposer,
      $$ListiTableTableCreateCompanionBuilder,
      $$ListiTableTableUpdateCompanionBuilder,
      (
        ListiTableData,
        BaseReferences<_$AppDatabase, $ListiTableTable, ListiTableData>,
      ),
      ListiTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ListiTableTableTableManager get listiTable =>
      $$ListiTableTableTableManager(_db, _db.listiTable);
}
