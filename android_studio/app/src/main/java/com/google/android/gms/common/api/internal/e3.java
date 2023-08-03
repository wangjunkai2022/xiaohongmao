package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class e3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.common.api.q f28684a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h3 f28685b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3(h3 h3Var, com.google.android.gms.common.api.q qVar) {
        this.f28685b = h3Var;
        this.f28684a = qVar;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        WeakReference weakReference;
        f3 f3Var;
        f3 f3Var2;
        WeakReference weakReference2;
        com.google.android.gms.common.api.i iVar;
        com.google.android.gms.common.api.t tVar;
        f3 f3Var3;
        f3 f3Var4;
        WeakReference weakReference3;
        try {
            try {
                ThreadLocal<Boolean> threadLocal = BasePendingResult.f28598p;
                threadLocal.set(Boolean.TRUE);
                tVar = this.f28685b.f28709a;
                com.google.android.gms.common.api.l c10 = ((com.google.android.gms.common.api.t) com.google.android.gms.common.internal.u.k(tVar)).c(this.f28684a);
                h3 h3Var = this.f28685b;
                f3Var3 = h3Var.f28716h;
                f3Var4 = h3Var.f28716h;
                f3Var3.sendMessage(f3Var4.obtainMessage(0, c10));
                threadLocal.set(Boolean.FALSE);
                h3 h3Var2 = this.f28685b;
                h3.q(this.f28684a);
                weakReference3 = this.f28685b.f28715g;
                iVar = (com.google.android.gms.common.api.i) weakReference3.get();
                if (iVar == null) {
                    return;
                }
            } catch (RuntimeException e4) {
                h3 h3Var3 = this.f28685b;
                f3Var = h3Var3.f28716h;
                f3Var2 = h3Var3.f28716h;
                f3Var.sendMessage(f3Var2.obtainMessage(1, e4));
                BasePendingResult.f28598p.set(Boolean.FALSE);
                h3 h3Var4 = this.f28685b;
                h3.q(this.f28684a);
                weakReference2 = this.f28685b.f28715g;
                iVar = (com.google.android.gms.common.api.i) weakReference2.get();
                if (iVar == null) {
                    return;
                }
            }
            iVar.I(this.f28685b);
        } catch (Throwable th) {
            BasePendingResult.f28598p.set(Boolean.FALSE);
            h3 h3Var5 = this.f28685b;
            h3.q(this.f28684a);
            weakReference = this.f28685b.f28715g;
            com.google.android.gms.common.api.i iVar2 = (com.google.android.gms.common.api.i) weakReference.get();
            if (iVar2 != null) {
                iVar2.I(this.f28685b);
            }
            throw th;
        }
    }
}
