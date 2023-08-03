package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class j0<TResult, TContinuationResult> implements g<TContinuationResult>, f, d, k0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31122a;

    /* renamed from: b  reason: collision with root package name */
    private final j<TResult, TContinuationResult> f31123b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<TContinuationResult> f31124c;

    public j0(@NonNull Executor executor, @NonNull j<TResult, TContinuationResult> jVar, @NonNull q0<TContinuationResult> q0Var) {
        this.f31122a = executor;
        this.f31123b = jVar;
        this.f31124c = q0Var;
    }

    @Override // com.google.android.gms.tasks.f
    public final void a(@NonNull Exception exc) {
        this.f31124c.y(exc);
    }

    @Override // com.google.android.gms.tasks.d
    public final void b() {
        this.f31124c.A();
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        this.f31122a.execute(new i0(this, kVar));
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.g
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f31124c.z(tcontinuationresult);
    }
}
