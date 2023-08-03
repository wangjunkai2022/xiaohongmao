package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class z implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f20653a;

    private z(String str) {
        this.f20653a = str;
    }

    public static c0.b a(String str) {
        return new z(str);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.h0(this.f20653a, (SQLiteDatabase) obj);
    }
}
