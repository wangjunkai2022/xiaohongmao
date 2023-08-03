package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class f0<TResult> implements k0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31112a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f31113b = new Object();
    @r7.h
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private f f31114c;

    public f0(@NonNull Executor executor, @NonNull f fVar) {
        this.f31112a = executor;
        this.f31114c = fVar;
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        if (kVar.v() || kVar.t()) {
            return;
        }
        synchronized (this.f31113b) {
            if (this.f31114c == null) {
                return;
            }
            this.f31112a.execute(new e0(this, kVar));
        }
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        synchronized (this.f31113b) {
            this.f31114c = null;
        }
    }
}
