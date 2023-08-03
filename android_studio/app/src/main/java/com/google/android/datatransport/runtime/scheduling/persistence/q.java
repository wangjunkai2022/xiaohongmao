package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SQLiteEventStore.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class q implements c0.b {

    /* renamed from: a  reason: collision with root package name */
    private final Map f20642a;

    private q(Map map) {
        this.f20642a = map;
    }

    public static c0.b a(Map map) {
        return new q(map);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c0.b
    public Object apply(Object obj) {
        return c0.b0(this.f20642a, (Cursor) obj);
    }
}
