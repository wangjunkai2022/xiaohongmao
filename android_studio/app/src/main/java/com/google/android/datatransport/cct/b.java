package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.d;

/* compiled from: CctTransportBackend.java */
/* loaded from: classes2.dex */
final /* synthetic */ class b implements n2.a {

    /* renamed from: a  reason: collision with root package name */
    private final d f20204a;

    private b(d dVar) {
        this.f20204a = dVar;
    }

    public static n2.a a(d dVar) {
        return new b(dVar);
    }

    @Override // n2.a
    public Object apply(Object obj) {
        d.b d4;
        d4 = this.f20204a.d((d.a) obj);
        return d4;
    }
}
