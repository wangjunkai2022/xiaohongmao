package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class t0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ q0 f31148a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Callable f31149b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(q0 q0Var, Callable callable) {
        this.f31148a = q0Var;
        this.f31149b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f31148a.z(this.f31149b.call());
        } catch (Exception e4) {
            this.f31148a.y(e4);
        } catch (Throwable th) {
            this.f31148a.y(new RuntimeException(th));
        }
    }
}
