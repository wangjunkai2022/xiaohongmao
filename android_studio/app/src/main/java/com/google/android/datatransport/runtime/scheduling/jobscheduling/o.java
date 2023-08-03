package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import o2.a;

/* compiled from: WorkInitializer.java */
/* loaded from: classes2.dex */
final /* synthetic */ class o implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final p f20557a;

    private o(p pVar) {
        this.f20557a = pVar;
    }

    public static a.InterfaceC0791a a(p pVar) {
        return new o(pVar);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        return p.b(this.f20557a);
    }
}
