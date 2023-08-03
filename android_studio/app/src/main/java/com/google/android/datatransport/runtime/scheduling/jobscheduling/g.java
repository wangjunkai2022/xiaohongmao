package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final l f20526a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20527b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20528c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f20529d;

    private g(l lVar, com.google.android.datatransport.runtime.o oVar, int i4, Runnable runnable) {
        this.f20526a = lVar;
        this.f20527b = oVar;
        this.f20528c = i4;
        this.f20529d = runnable;
    }

    public static Runnable a(l lVar, com.google.android.datatransport.runtime.o oVar, int i4, Runnable runnable) {
        return new g(lVar, oVar, i4, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        l.e(this.f20526a, this.f20527b, this.f20528c, this.f20529d);
    }
}
