package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import o2.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class k implements a.InterfaceC0791a {

    /* renamed from: a  reason: collision with root package name */
    private final l f20538a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20539b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20540c;

    private k(l lVar, com.google.android.datatransport.runtime.o oVar, int i4) {
        this.f20538a = lVar;
        this.f20539b = oVar;
        this.f20540c = i4;
    }

    public static a.InterfaceC0791a a(l lVar, com.google.android.datatransport.runtime.o oVar, int i4) {
        return new k(lVar, oVar, i4);
    }

    @Override // o2.a.InterfaceC0791a
    public Object execute() {
        return this.f20538a.f20545d.a(this.f20539b, this.f20540c + 1);
    }
}
