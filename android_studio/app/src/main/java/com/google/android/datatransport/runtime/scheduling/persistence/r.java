package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class r implements c0.d {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteDatabase f20643a;

    private r(SQLiteDatabase sQLiteDatabase) {
        this.f20643a = sQLiteDatabase;
    }

    public static c0.d b(SQLiteDatabase sQLiteDatabase) {
        return new r(sQLiteDatabase);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.d
    public Object a() {
        return this.f20643a.beginTransaction();
    }
}
