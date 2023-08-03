package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import o2.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class h implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final l f20530a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20531b;

    private h(l lVar, com.google.android.datatransport.runtime.o oVar) {
        this.f20530a = lVar;
        this.f20531b = oVar;
    }

    public static a.InterfaceC0791a a(l lVar, com.google.android.datatransport.runtime.o oVar) {
        return new h(lVar, oVar);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        Iterable U;
        U = this.f20530a.f20544c.U(this.f20531b);
        return U;
    }
}
