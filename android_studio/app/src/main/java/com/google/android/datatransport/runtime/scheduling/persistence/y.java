package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class y implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private static final y f20652a = new y();

    private y() {
    }

    public static c0.b a() {
        return f20652a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.J((Cursor) obj);
    }
}
