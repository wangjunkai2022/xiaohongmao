package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.i0;

/* compiled from: SchemaManager.java */
/* loaded from: classes2.dex */
final /* synthetic */ class g0 implements i0.a {

    /* renamed from: a  reason: collision with root package name */
    private static final g0 f20606a = new g0();

    private g0() {
    }

    public static i0.a b() {
        return f20606a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i0.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
