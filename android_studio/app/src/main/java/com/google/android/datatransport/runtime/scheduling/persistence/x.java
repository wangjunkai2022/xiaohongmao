package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class x implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f20649a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20650b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.i f20651c;

    private x(c0 c0Var, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f20649a = c0Var;
        this.f20650b = oVar;
        this.f20651c = iVar;
    }

    public static c0.b a(c0 c0Var, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        return new x(c0Var, oVar, iVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.d0(this.f20649a, this.f20650b, this.f20651c, (SQLiteDatabase) obj);
    }
}
