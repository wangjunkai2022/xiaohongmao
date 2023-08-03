package androidx.room.util;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.ColumnInfo;
import androidx.room.Index;
import androidx.sqlite.db.SupportSQLiteDatabase;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TableInfo {
    public static final int CREATED_FROM_DATABASE = 2;
    public static final int CREATED_FROM_ENTITY = 1;
    public static final int CREATED_FROM_UNKNOWN = 0;
    public final Map<String, Column> columns;
    public final Set<ForeignKey> foreignKeys;
    @Nullable
    public final Set<Index> indices;
    public final String name;

    /* loaded from: classes.dex */
    public static final class Column {
        @ColumnInfo.SQLiteTypeAffinity
        public final int affinity;
        public final String defaultValue;
        private final int mCreatedFrom;
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;
        public final String type;

        @Deprecated
        public Column(String str, String str2, boolean z9, int i4) {
            this(str, str2, z9, i4, null, 0);
        }

        private static boolean containsSurroundingParenthesis(@NonNull String str) {
            if (str.length() == 0) {
                return false;
            }
            int i4 = 0;
            for (int i10 = 0; i10 < str.length(); i10++) {
                char charAt = str.charAt(i10);
                if (i10 == 0 && charAt != '(') {
                    return false;
                }
                if (charAt == '(') {
                    i4++;
                } else if (charAt == ')' && i4 - 1 == 0 && i10 != str.length() - 1) {
                    return false;
                }
            }
            return i4 == 0;
        }

        public static boolean defaultValueEquals(@NonNull String str, @Nullable String str2) {
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            if (containsSurroundingParenthesis(str)) {
                return str.substring(1, str.length() - 1).trim().equals(str2);
            }
            return false;
        }

        @ColumnInfo.SQLiteTypeAffinity
        private static int findAffinity(@Nullable String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (obj instanceof Column) {
                Column column = (Column) obj;
                if (this.primaryKeyPosition == column.primaryKeyPosition && this.name.equals(column.name) && this.notNull == column.notNull) {
                    if (this.mCreatedFrom != 1 || column.mCreatedFrom != 2 || (str3 = this.defaultValue) == null || defaultValueEquals(str3, column.defaultValue)) {
                        if (this.mCreatedFrom != 2 || column.mCreatedFrom != 1 || (str2 = column.defaultValue) == null || defaultValueEquals(str2, this.defaultValue)) {
                            int i4 = this.mCreatedFrom;
                            return (i4 == 0 || i4 != column.mCreatedFrom || ((str = this.defaultValue) == null ? column.defaultValue == null : defaultValueEquals(str, column.defaultValue))) && this.affinity == column.affinity;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.affinity) * 31) + (this.notNull ? 1231 : 1237)) * 31) + this.primaryKeyPosition;
        }

        public boolean isPrimaryKey() {
            return this.primaryKeyPosition > 0;
        }

        public String toString() {
            return "Column{name='" + this.name + "', type='" + this.type + "', affinity='" + this.affinity + "', notNull=" + this.notNull + ", primaryKeyPosition=" + this.primaryKeyPosition + ", defaultValue='" + this.defaultValue + "'}";
        }

        public Column(String str, String str2, boolean z9, int i4, String str3, int i10) {
            this.name = str;
            this.type = str2;
            this.notNull = z9;
            this.primaryKeyPosition = i4;
            this.affinity = findAffinity(str2);
            this.defaultValue = str3;
            this.mCreatedFrom = i10;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static final class ForeignKey {
        @NonNull
        public final List<String> columnNames;
        @NonNull
        public final String onDelete;
        @NonNull
        public final String onUpdate;
        @NonNull
        public final List<String> referenceColumnNames;
        @NonNull
        public final String referenceTable;

        public ForeignKey(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<String> list, @NonNull List<String> list2) {
            this.referenceTable = str;
            this.onDelete = str2;
            this.onUpdate = str3;
            this.columnNames = Collections.unmodifiableList(list);
            this.referenceColumnNames = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ForeignKey) {
                ForeignKey foreignKey = (ForeignKey) obj;
                if (this.referenceTable.equals(foreignKey.referenceTable) && this.onDelete.equals(foreignKey.onDelete) && this.onUpdate.equals(foreignKey.onUpdate) && this.columnNames.equals(foreignKey.columnNames)) {
                    return this.referenceColumnNames.equals(foreignKey.referenceColumnNames);
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.referenceTable.hashCode() * 31) + this.onDelete.hashCode()) * 31) + this.onUpdate.hashCode()) * 31) + this.columnNames.hashCode()) * 31) + this.referenceColumnNames.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.referenceTable + "', onDelete='" + this.onDelete + "', onUpdate='" + this.onUpdate + "', columnNames=" + this.columnNames + ", referenceColumnNames=" + this.referenceColumnNames + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {
        final String mFrom;
        final int mId;
        final int mSequence;
        final String mTo;

        ForeignKeyWithSequence(int i4, int i10, String str, String str2) {
            this.mId = i4;
            this.mSequence = i10;
            this.mFrom = str;
            this.mTo = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull ForeignKeyWithSequence foreignKeyWithSequence) {
            int i4 = this.mId - foreignKeyWithSequence.mId;
            return i4 == 0 ? this.mSequence - foreignKeyWithSequence.mSequence : i4;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public static final class Index {
        public static final String DEFAULT_PREFIX = "index_";
        public final List<String> columns;
        public final String name;
        public final List<String> orders;
        public final boolean unique;

        public Index(String str, boolean z9, List<String> list) {
            this(str, z9, list, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Index) {
                Index index = (Index) obj;
                if (this.unique == index.unique && this.columns.equals(index.columns) && this.orders.equals(index.orders)) {
                    if (this.name.startsWith(DEFAULT_PREFIX)) {
                        return index.name.startsWith(DEFAULT_PREFIX);
                    }
                    return this.name.equals(index.name);
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.name.startsWith(DEFAULT_PREFIX) ? -1184239155 : this.name.hashCode()) * 31) + (this.unique ? 1 : 0)) * 31) + this.columns.hashCode()) * 31) + this.orders.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.name + "', unique=" + this.unique + ", columns=" + this.columns + ", orders=" + this.orders + '}';
        }

        public Index(String str, boolean z9, List<String> list, List<String> list2) {
            this.name = str;
            this.unique = z9;
            this.columns = list;
            this.orders = (list2 == null || list2.size() == 0) ? Collections.nCopies(list.size(), Index.Order.ASC.name()) : list2;
        }
    }

    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set, Set<Index> set2) {
        this.name = str;
        this.columns = Collections.unmodifiableMap(map);
        this.foreignKeys = Collections.unmodifiableSet(set);
        this.indices = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static TableInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        return new TableInfo(str, readColumns(supportSQLiteDatabase, str), readForeignKeys(supportSQLiteDatabase, str), readIndices(supportSQLiteDatabase, str));
    }

    private static Map<String, Column> readColumns(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (query.getColumnCount() > 0) {
                int columnIndex = query.getColumnIndex("name");
                int columnIndex2 = query.getColumnIndex("type");
                int columnIndex3 = query.getColumnIndex("notnull");
                int columnIndex4 = query.getColumnIndex("pk");
                int columnIndex5 = query.getColumnIndex("dflt_value");
                while (query.moveToNext()) {
                    String string = query.getString(columnIndex);
                    hashMap.put(string, new Column(string, query.getString(columnIndex2), query.getInt(columnIndex3) != 0, query.getInt(columnIndex4), query.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    private static List<ForeignKeyWithSequence> readForeignKeyFieldMappings(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex(Session.b.f81845f);
        int columnIndex3 = cursor.getColumnIndex(TypedValues.Transition.S_FROM);
        int columnIndex4 = cursor.getColumnIndex(TypedValues.Transition.S_TO);
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < count; i4++) {
            cursor.moveToPosition(i4);
            arrayList.add(new ForeignKeyWithSequence(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set<ForeignKey> readForeignKeys(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor query = supportSQLiteDatabase.query("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = query.getColumnIndex("id");
            int columnIndex2 = query.getColumnIndex(Session.b.f81845f);
            int columnIndex3 = query.getColumnIndex("table");
            int columnIndex4 = query.getColumnIndex("on_delete");
            int columnIndex5 = query.getColumnIndex("on_update");
            List<ForeignKeyWithSequence> readForeignKeyFieldMappings = readForeignKeyFieldMappings(query);
            int count = query.getCount();
            for (int i4 = 0; i4 < count; i4++) {
                query.moveToPosition(i4);
                if (query.getInt(columnIndex2) == 0) {
                    int i10 = query.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (ForeignKeyWithSequence foreignKeyWithSequence : readForeignKeyFieldMappings) {
                        if (foreignKeyWithSequence.mId == i10) {
                            arrayList.add(foreignKeyWithSequence.mFrom);
                            arrayList2.add(foreignKeyWithSequence.mTo);
                        }
                    }
                    hashSet.add(new ForeignKey(query.getString(columnIndex3), query.getString(columnIndex4), query.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            query.close();
        }
    }

    @Nullable
    private static Index readIndex(SupportSQLiteDatabase supportSQLiteDatabase, String str, boolean z9) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = query.getColumnIndex("seqno");
            int columnIndex2 = query.getColumnIndex("cid");
            int columnIndex3 = query.getColumnIndex("name");
            int columnIndex4 = query.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (query.moveToNext()) {
                    if (query.getInt(columnIndex2) >= 0) {
                        int i4 = query.getInt(columnIndex);
                        String string = query.getString(columnIndex3);
                        String str2 = query.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        treeMap.put(Integer.valueOf(i4), string);
                        treeMap2.put(Integer.valueOf(i4), str2);
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                ArrayList arrayList2 = new ArrayList(treeMap2.size());
                arrayList2.addAll(treeMap2.values());
                return new Index(str, z9, arrayList, arrayList2);
            }
            return null;
        } finally {
            query.close();
        }
    }

    @Nullable
    private static Set<Index> readIndices(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = query.getColumnIndex("name");
            int columnIndex2 = query.getColumnIndex("origin");
            int columnIndex3 = query.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (query.moveToNext()) {
                    if ("c".equals(query.getString(columnIndex2))) {
                        String string = query.getString(columnIndex);
                        boolean z9 = true;
                        if (query.getInt(columnIndex3) != 1) {
                            z9 = false;
                        }
                        Index readIndex = readIndex(supportSQLiteDatabase, string, z9);
                        if (readIndex == null) {
                            return null;
                        }
                        hashSet.add(readIndex);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            query.close();
        }
    }

    public boolean equals(Object obj) {
        Set<Index> set;
        if (this == obj) {
            return true;
        }
        if (obj instanceof TableInfo) {
            TableInfo tableInfo = (TableInfo) obj;
            String str = this.name;
            if (str == null ? tableInfo.name == null : str.equals(tableInfo.name)) {
                Map<String, Column> map = this.columns;
                if (map == null ? tableInfo.columns == null : map.equals(tableInfo.columns)) {
                    Set<ForeignKey> set2 = this.foreignKeys;
                    if (set2 == null ? tableInfo.foreignKeys == null : set2.equals(tableInfo.foreignKeys)) {
                        Set<Index> set3 = this.indices;
                        if (set3 == null || (set = tableInfo.indices) == null) {
                            return true;
                        }
                        return set3.equals(set);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Column> map = this.columns;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<ForeignKey> set = this.foreignKeys;
        return hashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.name + "', columns=" + this.columns + ", foreignKeys=" + this.foreignKeys + ", indices=" + this.indices + '}';
    }

    public TableInfo(String str, Map<String, Column> map, Set<ForeignKey> set) {
        this(str, map, set, Collections.emptySet());
    }
}
