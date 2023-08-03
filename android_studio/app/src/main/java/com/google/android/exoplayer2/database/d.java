package com.google.android.exoplayer2.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.util.z0;

/* compiled from: VersionTable.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21556a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21557b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21558c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21559d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21560e = 1000;

    /* renamed from: f  reason: collision with root package name */
    private static final String f21561f = "ExoPlayerVersions";

    /* renamed from: g  reason: collision with root package name */
    private static final String f21562g = "feature";

    /* renamed from: h  reason: collision with root package name */
    private static final String f21563h = "instance_uid";

    /* renamed from: i  reason: collision with root package name */
    private static final String f21564i = "version";

    /* renamed from: j  reason: collision with root package name */
    private static final String f21565j = "feature = ? AND instance_uid = ?";

    /* renamed from: k  reason: collision with root package name */
    private static final String f21566k = "PRIMARY KEY (feature, instance_uid)";

    /* renamed from: l  reason: collision with root package name */
    private static final String f21567l = "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))";

    private d() {
    }

    private static String[] a(int i4, String str) {
        return new String[]{Integer.toString(i4), str};
    }

    public static int b(SQLiteDatabase sQLiteDatabase, int i4, String str) throws DatabaseIOException {
        try {
            if (z0.q1(sQLiteDatabase, f21561f)) {
                Cursor query = sQLiteDatabase.query(f21561f, new String[]{"version"}, f21565j, a(i4, str), null, null, null);
                if (query.getCount() == 0) {
                    query.close();
                    return -1;
                }
                query.moveToNext();
                int i10 = query.getInt(0);
                query.close();
                return i10;
            }
            return -1;
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, int i4, String str) throws DatabaseIOException {
        try {
            if (z0.q1(sQLiteDatabase, f21561f)) {
                sQLiteDatabase.delete(f21561f, f21565j, a(i4, str));
            }
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase, int i4, String str, int i10) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL(f21567l);
            ContentValues contentValues = new ContentValues();
            contentValues.put(f21562g, Integer.valueOf(i4));
            contentValues.put(f21563h, str);
            contentValues.put("version", Integer.valueOf(i10));
            sQLiteDatabase.replaceOrThrow(f21561f, null, contentValues);
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }
}
