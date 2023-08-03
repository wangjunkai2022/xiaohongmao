package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class j implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f20628a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20629b;

    private j(long j4, com.google.android.datatransport.runtime.o oVar) {
        this.f20628a = j4;
        this.f20629b = oVar;
    }

    public static c0.b a(long j4, com.google.android.datatransport.runtime.o oVar) {
        return new j(j4, oVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.l0(this.f20628a, this.f20629b, (SQLiteDatabase) obj);
    }
}
