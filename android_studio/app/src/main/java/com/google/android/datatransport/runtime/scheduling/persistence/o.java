package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class o implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final c0 f20638a;

    /* renamed from: b  reason: collision with root package name */
    private final List f20639b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20640c;

    private o(c0 c0Var, List list, com.google.android.datatransport.runtime.o oVar) {
        this.f20638a = c0Var;
        this.f20639b = list;
        this.f20640c = oVar;
    }

    public static c0.b a(c0 c0Var, List list, com.google.android.datatransport.runtime.o oVar) {
        return new o(c0Var, list, oVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.X(this.f20638a, this.f20639b, this.f20640c, (Cursor) obj);
    }
}
