package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    private List<Object> mBindArgsCache = new ArrayList();

    private void saveArgsToCache(int i4, Object obj) {
        int i10 = i4 - 1;
        if (i10 >= this.mBindArgsCache.size()) {
            for (int size = this.mBindArgsCache.size(); size <= i10; size++) {
                this.mBindArgsCache.add(null);
            }
        }
        this.mBindArgsCache.set(i10, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i4, byte[] bArr) {
        saveArgsToCache(i4, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i4, double d4) {
        saveArgsToCache(i4, Double.valueOf(d4));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i4, long j4) {
        saveArgsToCache(i4, Long.valueOf(j4));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i4) {
        saveArgsToCache(i4, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i4, String str) {
        saveArgsToCache(i4, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.mBindArgsCache.clear();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Object> getBindArgs() {
        return this.mBindArgsCache;
    }
}
