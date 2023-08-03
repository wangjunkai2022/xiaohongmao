package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class i0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f31120a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j0 f31121b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(j0 j0Var, k kVar) {
        this.f31121b = j0Var;
        this.f31120a = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar;
        try {
            jVar = this.f31121b.f31123b;
            k a10 = jVar.a(this.f31120a.r());
            if (a10 == null) {
                this.f31121b.a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = m.f31130b;
            a10.l(executor, this.f31121b);
            a10.i(executor, this.f31121b);
            a10.c(executor, this.f31121b);
        } catch (RuntimeExecutionException e4) {
            if (e4.getCause() instanceof Exception) {
                this.f31121b.a((Exception) e4.getCause());
            } else {
                this.f31121b.a(e4);
            }
        } catch (CancellationException unused) {
            this.f31121b.b();
        } catch (Exception e10) {
            this.f31121b.a(e10);
        }
    }
}
