package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.internal.operators.mixed.j;

/* compiled from: FlowableSwitchMapMaybePublisher.java */
/* loaded from: classes4.dex */
public final class k<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78952b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f78953c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78954d;

    public k(org.reactivestreams.c<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
        this.f78952b = source;
        this.f78953c = mapper;
        this.f78954d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78952b.i(new j.a(s9, this.f78953c, this.f78954d));
    }
}
