package com.ksy.statlibrary.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes3.dex */
public class DBHelper extends SQLiteOpenHelper {
    private static final String SQL_CREATE_LOG = "CREATE TABLE IF NOT EXISTS log (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, content TEXT DEFAULT \"\" ,uniqname TEXT DEFAULT \"\")";
    private static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS log";

    public DBHelper(Context context) {
        super(context, DBConstant.DB_NAME, (SQLiteDatabase.CursorFactory) null, 3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(SQL_CREATE_LOG);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        sQLiteDatabase.execSQL(SQL_DROP_TABLE);
        onCreate(sQLiteDatabase);
    }
}
