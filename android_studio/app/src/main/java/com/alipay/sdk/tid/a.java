package com.alipay.sdk.tid;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class a extends SQLiteOpenHelper {

    /* renamed from: b  reason: collision with root package name */
    private static final String f6921b = "msp.db";

    /* renamed from: c  reason: collision with root package name */
    private static final int f6922c = 1;

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f6923a;

    public a(Context context) {
        super(context, f6921b, (SQLiteDatabase.CursorFactory) null, 1);
        this.f6923a = new WeakReference<>(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
        if (r4.isOpen() != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
        if (r4.isOpen() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "select dt from tb_tid where name=?"
            r1 = 0
            r2 = 0
            android.database.sqlite.SQLiteDatabase r4 = r6.getReadableDatabase()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L59
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            java.lang.String r7 = s(r7, r8)     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            r8 = 0
            r5[r8] = r7     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            android.database.Cursor r1 = r4.rawQuery(r0, r5)     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            boolean r7 = r1.moveToFirst()     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            if (r7 == 0) goto L35
            java.text.SimpleDateFormat r7 = new java.text.SimpleDateFormat     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            java.lang.String r0 = "yyyy-MM-dd HH:mm:ss"
            java.util.Locale r5 = java.util.Locale.getDefault()     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            r7.<init>(r0, r5)     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            java.lang.String r8 = r1.getString(r8)     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            java.util.Date r7 = r7.parse(r8)     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            long r7 = r7.getTime()     // Catch: java.lang.Exception -> L42 java.lang.Throwable -> L44
            r2 = r7
        L35:
            r1.close()
            boolean r7 = r4.isOpen()
            if (r7 == 0) goto L68
        L3e:
            r4.close()
            goto L68
        L42:
            goto L5a
        L44:
            r7 = move-exception
            goto L48
        L46:
            r7 = move-exception
            r4 = r1
        L48:
            if (r1 == 0) goto L4d
            r1.close()
        L4d:
            if (r4 == 0) goto L58
            boolean r8 = r4.isOpen()
            if (r8 == 0) goto L58
            r4.close()
        L58:
            throw r7
        L59:
            r4 = r1
        L5a:
            if (r1 == 0) goto L5f
            r1.close()
        L5f:
            if (r4 == 0) goto L68
            boolean r7 = r4.isOpen()
            if (r7 == 0) goto L68
            goto L3e
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.a.A(java.lang.String, java.lang.String):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r2.isOpen() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0063, code lost:
        if (r2.isOpen() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> b() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r6.getReadableDatabase()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L57
            java.lang.String r3 = "select tid from tb_tid"
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
        L10:
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            if (r3 == 0) goto L36
            r3 = 0
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            if (r4 != 0) goto L10
            java.lang.ref.WeakReference<android.content.Context> r4 = r6.f6923a     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            android.content.Context r4 = (android.content.Context) r4     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            java.lang.String r4 = com.alipay.sdk.util.b.h(r4)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            r5 = 2
            java.lang.String r3 = n.b.a(r5, r3, r4)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            r0.add(r3)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L42
            goto L10
        L36:
            r1.close()
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L68
            goto L65
        L40:
            goto L58
        L42:
            r0 = move-exception
            goto L46
        L44:
            r0 = move-exception
            r2 = r1
        L46:
            if (r1 == 0) goto L4b
            r1.close()
        L4b:
            if (r2 == 0) goto L56
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L56
            r2.close()
        L56:
            throw r0
        L57:
            r2 = r1
        L58:
            if (r1 == 0) goto L5d
            r1.close()
        L5d:
            if (r2 == 0) goto L68
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L68
        L65:
            r2.close()
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.a.b():java.util.List");
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i4 = 0;
            do {
                strArr[i4] = rawQuery.getString(0);
                i4++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i4);
        }
        rawQuery.close();
        for (int i10 = 0; i10 < count; i10++) {
            if (!TextUtils.isEmpty(strArr[i10])) {
                h(sQLiteDatabase, strArr[i10]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.delete("tb_tid", "name=?", new String[]{str});
        } catch (Exception unused) {
        }
    }

    private static boolean p(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int i4;
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[]{s(str, str2)});
            i4 = cursor.moveToFirst() ? cursor.getInt(0) : 0;
            cursor.close();
        } catch (Exception unused) {
            if (cursor != null) {
                cursor.close();
            }
            i4 = 0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return i4 > 0;
    }

    private void r(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        String a10 = n.b.a(1, str3, com.alipay.sdk.util.b.h(this.f6923a.get()));
        String s9 = s(str, str2);
        sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{s9, a10, str4});
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i4 = 0;
            do {
                strArr[i4] = rawQuery.getString(0);
                i4++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i4);
        }
        rawQuery.close();
        for (int i10 = 0; i10 < count; i10++) {
            if (!TextUtils.isEmpty(strArr[i10])) {
                h(sQLiteDatabase, strArr[i10]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String s(String str, String str2) {
        return str + str2;
    }

    private void y(String str, String str2) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            i(sQLiteDatabase, str, str2, "", "");
            h(sQLiteDatabase, s(str, str2));
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                return;
            }
            sQLiteDatabase.close();
        } catch (Exception unused) {
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                return;
            }
            sQLiteDatabase.close();
        } catch (Throwable th) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String a(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "select tid from tb_tid where name=?"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L48
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r5 = s(r5, r6)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            android.database.Cursor r5 = r2.rawQuery(r0, r3)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            if (r0 == 0) goto L1f
            java.lang.String r1 = r5.getString(r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
        L1f:
            r5.close()
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
        L28:
            r2.close()
            goto L58
        L2c:
            r6 = move-exception
            r1 = r5
            goto L37
        L2f:
            goto L4a
        L31:
            r6 = move-exception
            goto L37
        L33:
            r5 = r1
            goto L4a
        L35:
            r6 = move-exception
            r2 = r1
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            if (r2 == 0) goto L47
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L47
            r2.close()
        L47:
            throw r6
        L48:
            r5 = r1
            r2 = r5
        L4a:
            if (r5 == 0) goto L4f
            r5.close()
        L4f:
            if (r2 == 0) goto L58
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
            goto L28
        L58:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L6f
            java.lang.ref.WeakReference<android.content.Context> r5 = r4.f6923a
            java.lang.Object r5 = r5.get()
            android.content.Context r5 = (android.content.Context) r5
            java.lang.String r5 = com.alipay.sdk.util.b.h(r5)
            r6 = 2
            java.lang.String r1 = n.b.a(r6, r1, r5)
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.a.a(java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[]{n.b.a(1, str3, com.alipay.sdk.util.b.h(this.f6923a.get())), str4, s(str, str2)});
    }

    public final void k(String str, String str2, String str3, String str4) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (p(writableDatabase, str, str2)) {
                    i(writableDatabase, str, str2, str3, str4);
                } else {
                    String a10 = n.b.a(1, str3, com.alipay.sdk.util.b.h(this.f6923a.get()));
                    String s9 = s(str, str2);
                    writableDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{s9, a10, str4});
                    Cursor rawQuery = writableDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
                    if (rawQuery.getCount() <= 14) {
                        rawQuery.close();
                    } else {
                        int count = rawQuery.getCount() - 14;
                        String[] strArr = new String[count];
                        if (rawQuery.moveToFirst()) {
                            int i4 = 0;
                            do {
                                strArr[i4] = rawQuery.getString(0);
                                i4++;
                                if (!rawQuery.moveToNext()) {
                                    break;
                                }
                            } while (count > i4);
                        }
                        rawQuery.close();
                        for (int i10 = 0; i10 < count; i10++) {
                            if (!TextUtils.isEmpty(strArr[i10])) {
                                h(writableDatabase, strArr[i10]);
                            }
                        }
                    }
                }
                if (writableDatabase == null || !writableDatabase.isOpen()) {
                    return;
                }
                writableDatabase.close();
            } catch (Exception unused) {
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                    return;
                }
                sQLiteDatabase.close();
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i10) {
        sQLiteDatabase.execSQL("drop table if exists tb_tid");
        onCreate(sQLiteDatabase);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
        if (r2.isOpen() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String q(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "select key_tid from tb_tid where name=?"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L48
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r5 = s(r5, r6)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            android.database.Cursor r5 = r2.rawQuery(r0, r3)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
            if (r0 == 0) goto L1f
            java.lang.String r1 = r5.getString(r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2f
        L1f:
            r5.close()
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
        L28:
            r2.close()
            goto L58
        L2c:
            r6 = move-exception
            r1 = r5
            goto L37
        L2f:
            goto L4a
        L31:
            r6 = move-exception
            goto L37
        L33:
            r5 = r1
            goto L4a
        L35:
            r6 = move-exception
            r2 = r1
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            if (r2 == 0) goto L47
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L47
            r2.close()
        L47:
            throw r6
        L48:
            r5 = r1
            r2 = r5
        L4a:
            if (r5 == 0) goto L4f
            r5.close()
        L4f:
            if (r2 == 0) goto L58
            boolean r5 = r2.isOpen()
            if (r5 == 0) goto L58
            goto L28
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.a.q(java.lang.String, java.lang.String):java.lang.String");
    }
}
