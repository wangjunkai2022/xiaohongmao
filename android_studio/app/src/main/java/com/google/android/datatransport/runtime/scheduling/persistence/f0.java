package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.i0;

/* compiled from: SchemaManager.java */
/* loaded from: classes2.dex */
final /* synthetic */ class f0 implements i0.a {

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f20604a = new f0();

    private f0() {
    }

    public static i0.a b() {
        return f20604a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i0.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        i0.d(sQLiteDatabase);
    }
}
