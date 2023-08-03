package com.ksy.statlibrary.db;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.Log;
import com.ksy.statlibrary.log.LogBean;
import com.ksy.statlibrary.util.Constants;

/* loaded from: classes3.dex */
public class DBManager {
    private static final String SQL_DELETE_LOG = "DELETE FROM log WHERE id = ?";
    private static final String SQL_INSERT_LOG = "INSERT INTO log(content,uniqname) VALUES (?,?)";
    private static final String SQL_WHERE_UNIQNAME = "uniqname=?";
    private static DBManager mInstance;
    private static Object mLockObject = new Object();
    private SQLiteDatabase mDatabase;
    private SQLiteStatement mDeleteStatement;
    private SQLiteStatement mInsertStatement;

    @SuppressLint({"NewApi"})
    public DBManager(Context context) {
        if (context != null) {
            try {
                SQLiteDatabase writableDatabase = new DBHelper(context).getWritableDatabase();
                this.mDatabase = writableDatabase;
                this.mInsertStatement = writableDatabase.compileStatement(SQL_INSERT_LOG);
                this.mDeleteStatement = this.mDatabase.compileStatement(SQL_DELETE_LOG);
            } catch (SQLException e4) {
                e4.printStackTrace();
            }
        }
    }

    private boolean checkEnvironment() {
        return this.mDatabase != null;
    }

    public static DBManager getInstance(Context context) {
        DBManager dBManager = mInstance;
        if (dBManager == null && dBManager == null) {
            mInstance = new DBManager(context);
        }
        return mInstance;
    }

    public static void unInstance() {
        mInstance = null;
    }

    @SuppressLint({"NewApi"})
    public void deleteLog(long j4) {
        try {
            if (checkEnvironment()) {
                try {
                    this.mDatabase.beginTransaction();
                    this.mDeleteStatement.clearBindings();
                    this.mDeleteStatement.bindLong(1, j4);
                    this.mDeleteStatement.executeUpdateDelete();
                    this.mDatabase.setTransactionSuccessful();
                } catch (Exception e4) {
                    Log.d(Constants.LOG_TAG, "exception :" + e4.toString());
                }
            }
        } finally {
            this.mDatabase.endTransaction();
        }
    }

    @SuppressLint({"NewApi"})
    public void deleteLogs(String str) {
        if (!checkEnvironment() || TextUtils.isEmpty(str)) {
            return;
        }
        String[] split = str.split("\r\n");
        try {
            try {
                this.mDatabase.beginTransaction();
                this.mDeleteStatement.clearBindings();
                for (String str2 : split) {
                    this.mDeleteStatement.bindLong(1, Long.valueOf(str2).longValue());
                    this.mDeleteStatement.executeUpdateDelete();
                }
                this.mDatabase.setTransactionSuccessful();
            } catch (Exception e4) {
                Log.d(Constants.LOG_TAG, "exception :" + e4.toString());
            }
        } finally {
            this.mDatabase.endTransaction();
        }
    }

    @SuppressLint({"NewApi"})
    public LogBean fetchLogAndRemove() {
        LogBean logBean;
        Cursor cursor = null;
        r3 = null;
        LogBean logBean2 = null;
        cursor = null;
        if (!checkEnvironment()) {
            return null;
        }
        try {
            try {
                Cursor query = this.mDatabase.query(DBConstant.TABLE_NAME_LOG, new String[]{"id", "content"}, null, null, null, null, null, "1");
                if (query != null) {
                    try {
                        try {
                            if (query.moveToFirst()) {
                                int i4 = query.getInt(query.getColumnIndex("id"));
                                logBean = new LogBean(i4, query.getString(query.getColumnIndex("content")));
                                try {
                                    this.mDeleteStatement.clearBindings();
                                    this.mDeleteStatement.bindLong(1, i4);
                                    this.mDeleteStatement.executeUpdateDelete();
                                    logBean2 = logBean;
                                } catch (Exception e4) {
                                    e = e4;
                                    cursor = query;
                                    Log.d(Constants.LOG_TAG, "exception :" + e.toString());
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    return logBean;
                                }
                            }
                        } catch (Exception e10) {
                            e = e10;
                            logBean = null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                    return logBean2;
                }
                return logBean2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
            logBean = null;
        }
    }

    protected void finalize() throws Throwable {
        if (!checkEnvironment()) {
            super.finalize();
            return;
        }
        try {
            this.mDatabase.close();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.finalize();
    }

    public void getRecords(int i4, RecordResult recordResult, String str) {
        if (checkEnvironment()) {
            Cursor cursor = null;
            try {
                try {
                    cursor = this.mDatabase.query(DBConstant.TABLE_NAME_LOG, new String[]{"id", "content", DBConstant.TABLE_LOG_COLUMN_UNIQNAME}, SQL_WHERE_UNIQNAME, new String[]{str}, null, null, null, String.valueOf(i4));
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            int i10 = cursor.getInt(cursor.getColumnIndex("id"));
                            String string = cursor.getString(cursor.getColumnIndex("content"));
                            recordResult.idBuffer.append(i10);
                            recordResult.idBuffer.append("\r\n");
                            recordResult.putJson(string);
                        }
                        recordResult.setUniqname(str);
                    }
                    if (cursor == null) {
                        return;
                    }
                } catch (Exception e4) {
                    Log.d(Constants.LOG_TAG, "exception :" + e4.toString());
                    if (cursor == null) {
                        return;
                    }
                }
                cursor.close();
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public void insertLog(String str, String str2) {
        if (checkEnvironment()) {
            try {
                try {
                    if (queryCount(str2) < 5000) {
                        this.mDatabase.beginTransaction();
                        this.mInsertStatement.bindString(1, str);
                        this.mInsertStatement.bindString(2, str2);
                        this.mInsertStatement.executeInsert();
                        this.mDatabase.setTransactionSuccessful();
                    } else {
                        fetchLogAndRemove();
                        insertLog(str, str2);
                    }
                } catch (Exception e4) {
                    Log.d(Constants.LOG_TAG, "exception :" + e4.toString());
                }
            } finally {
                this.mDatabase.endTransaction();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryCount(java.lang.String r12) {
        /*
            r11 = this;
            boolean r0 = r11.checkEnvironment()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 0
            android.database.sqlite.SQLiteDatabase r2 = r11.mDatabase     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r3 = "log"
            java.lang.String r4 = "id"
            java.lang.String r5 = "content"
            java.lang.String[] r4 = new java.lang.String[]{r4, r5}     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r5 = "uniqname=?"
            r6 = 1
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r6[r1] = r12     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            android.database.Cursor r0 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            if (r0 == 0) goto L2b
            int r12 = r0.getCount()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r1 = r12
        L2b:
            if (r0 == 0) goto L51
        L2d:
            r0.close()
            goto L51
        L31:
            r12 = move-exception
            goto L52
        L33:
            r12 = move-exception
            java.lang.String r2 = "KSY_ANDROID_LOG"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31
            r3.<init>()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = "exception :"
            r3.append(r4)     // Catch: java.lang.Throwable -> L31
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> L31
            r3.append(r12)     // Catch: java.lang.Throwable -> L31
            java.lang.String r12 = r3.toString()     // Catch: java.lang.Throwable -> L31
            android.util.Log.d(r2, r12)     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L51
            goto L2d
        L51:
            return r1
        L52:
            if (r0 == 0) goto L57
            r0.close()
        L57:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksy.statlibrary.db.DBManager.queryCount(java.lang.String):int");
    }
}
