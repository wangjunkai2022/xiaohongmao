package androidx.sqlite.db;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void beginTransaction();

    void beginTransactionNonExclusive();

    void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener);

    void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener sQLiteTransactionListener);

    SupportSQLiteStatement compileStatement(String str);

    int delete(String str, String str2, Object[] objArr);

    @RequiresApi(api = 16)
    void disableWriteAheadLogging();

    boolean enableWriteAheadLogging();

    void endTransaction();

    void execPerConnectionSQL(@NonNull String str, @Nullable @SuppressLint({"ArrayReturn"}) Object[] objArr);

    void execSQL(String str) throws SQLException;

    void execSQL(String str, Object[] objArr) throws SQLException;

    List<Pair<String, String>> getAttachedDbs();

    long getMaximumSize();

    long getPageSize();

    String getPath();

    int getVersion();

    boolean inTransaction();

    long insert(String str, int i4, ContentValues contentValues) throws SQLException;

    boolean isDatabaseIntegrityOk();

    boolean isDbLockedByCurrentThread();

    boolean isExecPerConnectionSQLSupported();

    boolean isOpen();

    boolean isReadOnly();

    @RequiresApi(api = 16)
    boolean isWriteAheadLoggingEnabled();

    boolean needUpgrade(int i4);

    Cursor query(SupportSQLiteQuery supportSQLiteQuery);

    @RequiresApi(api = 16)
    Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal);

    Cursor query(String str);

    Cursor query(String str, Object[] objArr);

    @RequiresApi(api = 16)
    void setForeignKeyConstraintsEnabled(boolean z9);

    void setLocale(Locale locale);

    void setMaxSqlCacheSize(int i4);

    long setMaximumSize(long j4);

    void setPageSize(long j4);

    void setTransactionSuccessful();

    void setVersion(int i4);

    int update(String str, int i4, ContentValues contentValues, String str2, Object[] objArr);

    boolean yieldIfContendedSafely();

    boolean yieldIfContendedSafely(long j4);
}
