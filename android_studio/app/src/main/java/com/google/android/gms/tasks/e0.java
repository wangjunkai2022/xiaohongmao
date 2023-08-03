package com.google.android.gms.tasks;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class e0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31110a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f0 f31111b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(f0 f0Var, k kVar) {
        this.f31111b = f0Var;
        this.f31110a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        f fVar;
        f fVar2;
        obj = this.f31111b.f31113b;
        synchronized (obj) {
            f0 f0Var = this.f31111b;
            fVar = f0Var.f31114c;
            if (fVar != null) {
                fVar2 = f0Var.f31114c;
                fVar2.a((Exception) com.google.android.gms.common.internal.u.k(this.f31110a.q()));
            }
        }
    }
}
