package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class a0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b0 f31100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(b0 b0Var) {
        this.f31100a = b0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        d dVar;
        d dVar2;
        obj = this.f31100a.f31103b;
        synchronized (obj) {
            b0 b0Var = this.f31100a;
            dVar = b0Var.f31104c;
            if (dVar != null) {
                dVar2 = b0Var.f31104c;
                dVar2.b();
            }
        }
    }
}
