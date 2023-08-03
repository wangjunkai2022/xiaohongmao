package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.operators.flowable.k1;

/* compiled from: CompletableToFlowable.java */
/* loaded from: classes4.dex */
public final class q0<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76712b;

    public q0(io.reactivex.rxjava3.core.g source) {
        this.f76712b = source;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76712b.d(new k1.a(s9));
    }
}
