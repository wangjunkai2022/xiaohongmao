package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WorkInitializer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f20556a;

    private n(p pVar) {
        this.f20556a = pVar;
    }

    public static Runnable a(p pVar) {
        return new n(pVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f20561d.a(o.a(this.f20556a));
    }
}
