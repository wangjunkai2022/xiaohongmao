package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    @VisibleForTesting
    static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    @VisibleForTesting
    static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    @VisibleForTesting
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();
    @VisibleForTesting
    int mArgCount;
    private final int[] mBindingTypes;
    @VisibleForTesting
    final byte[][] mBlobBindings;
    @VisibleForTesting
    final int mCapacity;
    @VisibleForTesting
    final double[] mDoubleBindings;
    @VisibleForTesting
    final long[] mLongBindings;
    private volatile String mQuery;
    @VisibleForTesting
    final String[] mStringBindings;

    private RoomSQLiteQuery(int i4) {
        this.mCapacity = i4;
        int i10 = i4 + 1;
        this.mBindingTypes = new int[i10];
        this.mLongBindings = new long[i10];
        this.mDoubleBindings = new double[i10];
        this.mStringBindings = new String[i10];
        this.mBlobBindings = new byte[i10];
    }

    public static RoomSQLiteQuery acquire(String str, int i4) {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            Map.Entry<Integer, RoomSQLiteQuery> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i4));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                RoomSQLiteQuery value = ceilingEntry.getValue();
                value.init(str, i4);
                return value;
            }
            RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i4);
            roomSQLiteQuery.init(str, i4);
            return roomSQLiteQuery;
        }
    }

    public static RoomSQLiteQuery copyFrom(SupportSQLiteQuery supportSQLiteQuery) {
        RoomSQLiteQuery acquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
        supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery.1
            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindBlob(int i4, byte[] bArr) {
                RoomSQLiteQuery.this.bindBlob(i4, bArr);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindDouble(int i4, double d4) {
                RoomSQLiteQuery.this.bindDouble(i4, d4);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindLong(int i4, long j4) {
                RoomSQLiteQuery.this.bindLong(i4, j4);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindNull(int i4) {
                RoomSQLiteQuery.this.bindNull(i4);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void bindString(int i4, String str) {
                RoomSQLiteQuery.this.bindString(i4, str);
            }

            @Override // androidx.sqlite.db.SupportSQLiteProgram
            public void clearBindings() {
                RoomSQLiteQuery.this.clearBindings();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        });
        return acquire;
    }

    private static void prunePoolLocked() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it = treeMap.descendingKeySet().iterator();
        while (true) {
            int i4 = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i4;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i4, byte[] bArr) {
        this.mBindingTypes[i4] = 5;
        this.mBlobBindings[i4] = bArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i4, double d4) {
        this.mBindingTypes[i4] = 3;
        this.mDoubleBindings[i4] = d4;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i4, long j4) {
        this.mBindingTypes[i4] = 2;
        this.mLongBindings[i4] = j4;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i4) {
        this.mBindingTypes[i4] = 1;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i4, String str) {
        this.mBindingTypes[i4] = 4;
        this.mStringBindings[i4] = str;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        for (int i4 = 1; i4 <= this.mArgCount; i4++) {
            int i10 = this.mBindingTypes[i4];
            if (i10 == 1) {
                supportSQLiteProgram.bindNull(i4);
            } else if (i10 == 2) {
                supportSQLiteProgram.bindLong(i4, this.mLongBindings[i4]);
            } else if (i10 == 3) {
                supportSQLiteProgram.bindDouble(i4, this.mDoubleBindings[i4]);
            } else if (i10 == 4) {
                supportSQLiteProgram.bindString(i4, this.mStringBindings[i4]);
            } else if (i10 == 5) {
                supportSQLiteProgram.bindBlob(i4, this.mBlobBindings[i4]);
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        Arrays.fill(this.mBindingTypes, 1);
        Arrays.fill(this.mStringBindings, (Object) null);
        Arrays.fill(this.mBlobBindings, (Object) null);
        this.mQuery = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void copyArgumentsFrom(RoomSQLiteQuery roomSQLiteQuery) {
        int argCount = roomSQLiteQuery.getArgCount() + 1;
        System.arraycopy(roomSQLiteQuery.mBindingTypes, 0, this.mBindingTypes, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mLongBindings, 0, this.mLongBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mStringBindings, 0, this.mStringBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mBlobBindings, 0, this.mBlobBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mDoubleBindings, 0, this.mDoubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        return this.mArgCount;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }

    void init(String str, int i4) {
        this.mQuery = str;
        this.mArgCount = i4;
    }

    public void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }
}
