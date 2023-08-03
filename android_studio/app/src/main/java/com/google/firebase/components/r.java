package com.google.firebase.components;

import com.google.firebase.components.q;

/* compiled from: ComponentRuntime.java */
/* loaded from: classes2.dex */
final /* synthetic */ class r implements o3.b {

    /* renamed from: a  reason: collision with root package name */
    private final k f35463a;

    private r(k kVar) {
        this.f35463a = kVar;
    }

    public static o3.b a(k kVar) {
        return new r(kVar);
    }

    @Override // o3.b
    public Object get() {
        return q.b.e(this.f35463a);
    }
}
