package androidx.room;

import androidx.annotation.NonNull;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class QueryInterceptorStatement implements SupportSQLiteStatement {
    private final List<Object> mBindArgsCache = new ArrayList();
    private final SupportSQLiteStatement mDelegate;
    private final RoomDatabase.QueryCallback mQueryCallback;
    private final Executor mQueryCallbackExecutor;
    private final String mSqlStatement;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QueryInterceptorStatement(@NonNull SupportSQLiteStatement supportSQLiteStatement, @NonNull RoomDatabase.QueryCallback queryCallback, String str, @NonNull Executor executor) {
        this.mDelegate = supportSQLiteStatement;
        this.mQueryCallback = queryCallback;
        this.mSqlStatement = str;
        this.mQueryCallbackExecutor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$0() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$executeInsert$2() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$executeUpdateDelete$1() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$simpleQueryForLong$3() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$simpleQueryForString$4() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

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
        this.mDelegate.bindBlob(i4, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i4, double d4) {
        saveArgsToCache(i4, Double.valueOf(d4));
        this.mDelegate.bindDouble(i4, d4);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i4, long j4) {
        saveArgsToCache(i4, Long.valueOf(j4));
        this.mDelegate.bindLong(i4, j4);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i4) {
        saveArgsToCache(i4, this.mBindArgsCache.toArray());
        this.mDelegate.bindNull(i4);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i4, String str) {
        saveArgsToCache(i4, str);
        this.mDelegate.bindString(i4, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.mBindArgsCache.clear();
        this.mDelegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mDelegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public void execute() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.t0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.this.lambda$execute$0();
            }
        });
        this.mDelegate.execute();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long executeInsert() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.u0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.this.lambda$executeInsert$2();
            }
        });
        return this.mDelegate.executeInsert();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.v0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.this.lambda$executeUpdateDelete$1();
            }
        });
        return this.mDelegate.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.w0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.this.lambda$simpleQueryForLong$3();
            }
        });
        return this.mDelegate.simpleQueryForLong();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public String simpleQueryForString() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.s0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.this.lambda$simpleQueryForString$4();
            }
        });
        return this.mDelegate.simpleQueryForString();
    }
}
