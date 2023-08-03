package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class t implements c0.d {

    /* renamed from: a  reason: collision with root package name */
    private final i0 f20645a;

    private t(i0 i0Var) {
        this.f20645a = i0Var;
    }

    public static c0.d b(i0 i0Var) {
        return new t(i0Var);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.d
    public Object a() {
        return this.f20645a.getWritableDatabase();
    }
}
