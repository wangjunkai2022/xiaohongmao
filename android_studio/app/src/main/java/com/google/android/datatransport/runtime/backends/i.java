package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* compiled from: CreationContextFactory.java */
/* loaded from: classes2.dex */
class i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20385a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20386b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20387c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public i(Context context, @com.google.android.datatransport.runtime.time.h com.google.android.datatransport.runtime.time.a aVar, @com.google.android.datatransport.runtime.time.b com.google.android.datatransport.runtime.time.a aVar2) {
        this.f20385a = context;
        this.f20386b = aVar;
        this.f20387c = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h a(String str) {
        return h.b(this.f20385a, this.f20386b, this.f20387c, str);
    }
}
