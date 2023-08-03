package com.google.android.exoplayer2.database;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.exoplayer2.util.w;

/* compiled from: ExoDatabaseProvider.java */
/* loaded from: classes2.dex */
public final class c extends SQLiteOpenHelper implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f21553a = "exoplayer_internal.db";

    /* renamed from: b  reason: collision with root package name */
    private static final int f21554b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final String f21555c = "ExoDatabaseProvider";

    public c(Context context) {
        super(context.getApplicationContext(), f21553a, (SQLiteDatabase.CursorFactory) null, 1);
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("sqlite_master", new String[]{"type", "name"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                String string2 = query.getString(1);
                if (!"sqlite_sequence".equals(string2)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 16 + String.valueOf(string2).length());
                    sb.append("DROP ");
                    sb.append(string);
                    sb.append(" IF EXISTS ");
                    sb.append(string2);
                    String sb2 = sb.toString();
                    try {
                        sQLiteDatabase.execSQL(sb2);
                    } catch (SQLException e4) {
                        String valueOf = String.valueOf(sb2);
                        w.e(f21555c, valueOf.length() != 0 ? "Error executing ".concat(valueOf) : new String("Error executing "), e4);
                    }
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        query.close();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
    }
}
