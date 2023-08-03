package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class k implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f20633a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20634b;

    private k(c0 c0Var, com.google.android.datatransport.runtime.o oVar) {
        this.f20633a = c0Var;
        this.f20634b = oVar;
    }

    public static c0.b a(c0 c0Var, com.google.android.datatransport.runtime.o oVar) {
        return new k(c0Var, oVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return this.f20633a.n0((SQLiteDatabase) obj, this.f20634b);
    }
}
