package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
final /* synthetic */ class a0 implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private static final a0 f20576a = new a0();

    private a0() {
    }

    public static c0.b a() {
        return f20576a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.I((Cursor) obj);
    }
}
