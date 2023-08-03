package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class n implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private static final n f20637a = new n();

    private n() {
    }

    public static c0.b a() {
        return f20637a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.D((SQLiteDatabase) obj);
    }
}
