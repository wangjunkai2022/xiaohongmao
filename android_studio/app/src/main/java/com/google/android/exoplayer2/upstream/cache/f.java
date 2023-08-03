package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: CacheFileMetadataIndex.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: c  reason: collision with root package name */
    private static final String f27090c = "ExoPlayerCacheFileMetadata";

    /* renamed from: d  reason: collision with root package name */
    private static final int f27091d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f27092e = "name";

    /* renamed from: f  reason: collision with root package name */
    private static final String f27093f = "length";

    /* renamed from: h  reason: collision with root package name */
    private static final int f27095h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f27096i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f27097j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final String f27098k = "name = ?";

    /* renamed from: m  reason: collision with root package name */
    private static final String f27100m = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)";

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.database.a f27101a;

    /* renamed from: b  reason: collision with root package name */
    private String f27102b;

    /* renamed from: g  reason: collision with root package name */
    private static final String f27094g = "last_touch_timestamp";

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f27099l = {"name", "length", f27094g};

    public f(com.google.android.exoplayer2.database.a aVar) {
        this.f27101a = aVar;
    }

    @WorkerThread
    public static void a(com.google.android.exoplayer2.database.a aVar, long j4) throws DatabaseIOException {
        String hexString = Long.toHexString(j4);
        try {
            String e4 = e(hexString);
            SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            com.google.android.exoplayer2.database.d.c(writableDatabase, 2, hexString);
            b(writableDatabase, e4);
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase, String str) {
        String valueOf = String.valueOf(str);
        sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
    }

    private Cursor d() {
        com.google.android.exoplayer2.util.a.g(this.f27102b);
        return this.f27101a.getReadableDatabase().query(this.f27102b, f27099l, null, null, null, null, null);
    }

    private static String e(String str) {
        String valueOf = String.valueOf(str);
        return valueOf.length() != 0 ? f27090c.concat(valueOf) : new String(f27090c);
    }

    @WorkerThread
    public Map<String, e> c() throws DatabaseIOException {
        try {
            Cursor d4 = d();
            HashMap hashMap = new HashMap(d4.getCount());
            while (d4.moveToNext()) {
                hashMap.put(d4.getString(0), new e(d4.getLong(1), d4.getLong(2)));
            }
            d4.close();
            return hashMap;
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @WorkerThread
    public void f(long j4) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j4);
            this.f27102b = e(hexString);
            if (com.google.android.exoplayer2.database.d.b(this.f27101a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f27101a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                com.google.android.exoplayer2.database.d.d(writableDatabase, 2, hexString, 1);
                b(writableDatabase, this.f27102b);
                String str = this.f27102b;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 108);
                sb.append("CREATE TABLE ");
                sb.append(str);
                sb.append(" ");
                sb.append(f27100m);
                writableDatabase.execSQL(sb.toString());
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @WorkerThread
    public void g(String str) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.g(this.f27102b);
        try {
            this.f27101a.getWritableDatabase().delete(this.f27102b, f27098k, new String[]{str});
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @WorkerThread
    public void h(Set<String> set) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.g(this.f27102b);
        try {
            SQLiteDatabase writableDatabase = this.f27101a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                writableDatabase.delete(this.f27102b, f27098k, new String[]{it.next()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @WorkerThread
    public void i(String str, long j4, long j10) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.g(this.f27102b);
        try {
            SQLiteDatabase writableDatabase = this.f27101a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j4));
            contentValues.put(f27094g, Long.valueOf(j10));
            writableDatabase.replaceOrThrow(this.f27102b, null, contentValues);
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }
}
