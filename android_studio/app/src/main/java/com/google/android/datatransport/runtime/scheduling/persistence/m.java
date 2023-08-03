package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class m implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f20636a;

    private m(long j4) {
        this.f20636a = j4;
    }

    public static c0.b a(long j4) {
        return new m(j4);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        Integer valueOf;
        valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete("events", "timestamp_ms < ?", new String[]{String.valueOf(this.f20636a)}));
        return valueOf;
    }
}
