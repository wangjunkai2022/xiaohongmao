package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class z<TResult, TContinuationResult> implements g<TContinuationResult>, f, d, k0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31166a;

    /* renamed from: b  reason: collision with root package name */
    private final c<TResult, k<TContinuationResult>> f31167b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<TContinuationResult> f31168c;

    public z(@NonNull Executor executor, @NonNull c<TResult, k<TContinuationResult>> cVar, @NonNull q0<TContinuationResult> q0Var) {
        this.f31166a = executor;
        this.f31167b = cVar;
        this.f31168c = q0Var;
    }

    @Override // com.google.android.gms.tasks.f
    public final void a(@NonNull Exception exc) {
        this.f31168c.y(exc);
    }

    @Override // com.google.android.gms.tasks.d
    public final void b() {
        this.f31168c.A();
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        this.f31166a.execute(new y(this, kVar));
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.g
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f31168c.z(tcontinuationresult);
    }
}
