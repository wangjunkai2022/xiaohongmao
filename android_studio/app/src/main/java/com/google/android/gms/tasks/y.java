package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31164a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z f31165b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(z zVar, k kVar) {
        this.f31165b = zVar;
        this.f31164a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q0 q0Var;
        q0 q0Var2;
        q0 q0Var3;
        c cVar;
        try {
            cVar = this.f31165b.f31167b;
            k kVar = (k) cVar.a(this.f31164a);
            if (kVar == null) {
                this.f31165b.a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = m.f31130b;
            kVar.l(executor, this.f31165b);
            kVar.i(executor, this.f31165b);
            kVar.c(executor, this.f31165b);
        } catch (RuntimeExecutionException e4) {
            if (e4.getCause() instanceof Exception) {
                q0Var3 = this.f31165b.f31168c;
                q0Var3.y((Exception) e4.getCause());
                return;
            }
            q0Var2 = this.f31165b.f31168c;
            q0Var2.y(e4);
        } catch (Exception e10) {
            q0Var = this.f31165b.f31168c;
            q0Var.y(e10);
        }
    }
}
