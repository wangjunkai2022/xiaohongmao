package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class b0 implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f20580a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20581b;

    private b0(c0 c0Var, com.google.android.datatransport.runtime.o oVar) {
        this.f20580a = c0Var;
        this.f20581b = oVar;
    }

    public static c0.b a(c0 c0Var, com.google.android.datatransport.runtime.o oVar) {
        return new b0(c0Var, oVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.K(this.f20580a, this.f20581b, (SQLiteDatabase) obj);
    }
}
