package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class l implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private static final l f20635a = new l();

    private l() {
    }

    public static c0.b a() {
        return f20635a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.M((SQLiteDatabase) obj);
    }
}
