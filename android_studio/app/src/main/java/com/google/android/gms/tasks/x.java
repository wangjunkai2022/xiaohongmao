package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class x<TResult, TContinuationResult> implements k0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31161a;

    /* renamed from: b  reason: collision with root package name */
    private final c<TResult, TContinuationResult> f31162b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<TContinuationResult> f31163c;

    public x(@NonNull Executor executor, @NonNull c<TResult, TContinuationResult> cVar, @NonNull q0<TContinuationResult> q0Var) {
        this.f31161a = executor;
        this.f31162b = cVar;
        this.f31163c = q0Var;
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        this.f31161a.execute(new w(this, kVar));
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        throw new UnsupportedOperationException();
    }
}
