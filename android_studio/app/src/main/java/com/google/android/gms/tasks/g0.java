package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class g0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31115a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h0 f31116b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(h0 h0Var, k kVar) {
        this.f31116b = h0Var;
        this.f31115a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        g gVar;
        g gVar2;
        obj = this.f31116b.f31118b;
        synchronized (obj) {
            h0 h0Var = this.f31116b;
            gVar = h0Var.f31119c;
            if (gVar != null) {
                gVar2 = h0Var.f31119c;
                gVar2.onSuccess(this.f31115a.r());
            }
        }
    }
}
