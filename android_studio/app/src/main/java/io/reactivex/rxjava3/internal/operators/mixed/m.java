package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.operators.mixed.l;

/* compiled from: FlowableSwitchMapSinglePublisher.java */
/* loaded from: classes4.dex */
public final class m<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78973b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f78974c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78975d;

    public m(org.reactivestreams.c<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
        this.f78973b = source;
        this.f78974c = mapper;
        this.f78975d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78973b.i(new l.a(s9, this.f78974c, this.f78975d));
    }
}
