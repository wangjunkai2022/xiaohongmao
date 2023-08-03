package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class c0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31105a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d0 f31106b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(d0 d0Var, k kVar) {
        this.f31106b = d0Var;
        this.f31105a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        e eVar;
        e eVar2;
        obj = this.f31106b.f31108b;
        synchronized (obj) {
            d0 d0Var = this.f31106b;
            eVar = d0Var.f31109c;
            if (eVar != null) {
                eVar2 = d0Var.f31109c;
                eVar2.a(this.f31105a);
            }
        }
    }
}
