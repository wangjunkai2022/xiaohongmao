package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t9);

    @Override // androidx.room.SharedSQLiteStatement
    protected abstract String createQuery();

    public final int handle(T t9) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t9);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(Iterable<? extends T> iterable) {
        SupportSQLiteStatement acquire = acquire();
        int i4 = 0;
        try {
            for (T t9 : iterable) {
                bind(acquire, t9);
                i4 += acquire.executeUpdateDelete();
            }
            return i4;
        } finally {
            release(acquire);
        }
    }

    public final int handleMultiple(T[] tArr) {
        SupportSQLiteStatement acquire = acquire();
        try {
            int i4 = 0;
            for (T t9 : tArr) {
                bind(acquire, t9);
                i4 += acquire.executeUpdateDelete();
            }
            return i4;
        } finally {
            release(acquire);
        }
    }
}
