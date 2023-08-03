package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.q;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class r<R extends com.google.android.gms.common.api.q> extends com.google.android.gms.common.api.k<R> {

    /* renamed from: a  reason: collision with root package name */
    private final BasePendingResult<R> f28866a;

    public r(@NonNull com.google.android.gms.common.api.l<R> lVar) {
        this.f28866a = (BasePendingResult) lVar;
    }

    @Override // com.google.android.gms.common.api.l
    public final void c(@NonNull l.a aVar) {
        this.f28866a.c(aVar);
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final R d() {
        return this.f28866a.d();
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final R e(long j4, @NonNull TimeUnit timeUnit) {
        return this.f28866a.e(j4, timeUnit);
    }

    @Override // com.google.android.gms.common.api.l
    public final void f() {
        this.f28866a.f();
    }

    @Override // com.google.android.gms.common.api.l
    public final boolean g() {
        return this.f28866a.g();
    }

    @Override // com.google.android.gms.common.api.l
    public final void h(@NonNull com.google.android.gms.common.api.r<? super R> rVar) {
        this.f28866a.h(rVar);
    }

    @Override // com.google.android.gms.common.api.l
    public final void i(@NonNull com.google.android.gms.common.api.r<? super R> rVar, long j4, @NonNull TimeUnit timeUnit) {
        this.f28866a.i(rVar, j4, timeUnit);
    }

    @Override // com.google.android.gms.common.api.l
    @NonNull
    public final <S extends com.google.android.gms.common.api.q> com.google.android.gms.common.api.u<S> j(@NonNull com.google.android.gms.common.api.t<? super R, ? extends S> tVar) {
        return this.f28866a.j(tVar);
    }

    @Override // com.google.android.gms.common.api.k
    @NonNull
    public final R k() {
        if (this.f28866a.m()) {
            return this.f28866a.e(0L, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    @Override // com.google.android.gms.common.api.k
    public final boolean l() {
        return this.f28866a.m();
    }
}
