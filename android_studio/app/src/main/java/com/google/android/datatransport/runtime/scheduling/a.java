package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.o;

/* compiled from: DefaultScheduler.java */
/* loaded from: classes2.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f20467a;

    /* renamed from: b  reason: collision with root package name */
    private final o f20468b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.i f20469c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.i f20470d;

    private a(c cVar, o oVar, com.google.android.datatransport.i iVar, com.google.android.datatransport.runtime.i iVar2) {
        this.f20467a = cVar;
        this.f20468b = oVar;
        this.f20469c = iVar;
        this.f20470d = iVar2;
    }

    public static Runnable a(c cVar, o oVar, com.google.android.datatransport.i iVar, com.google.android.datatransport.runtime.i iVar2) {
        return new a(cVar, oVar, iVar, iVar2);
    }

    @Override // java.lang.Runnable
    public void run() {
        c.c(this.f20467a, this.f20468b, this.f20469c, this.f20470d);
    }
}
