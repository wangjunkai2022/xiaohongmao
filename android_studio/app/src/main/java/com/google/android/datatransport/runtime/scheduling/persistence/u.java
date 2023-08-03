package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class u implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private static final u f20646a = new u();

    private u() {
    }

    public static c0.b a() {
        return f20646a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.L((Cursor) obj);
    }
}
