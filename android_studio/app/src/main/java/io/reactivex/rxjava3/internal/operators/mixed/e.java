package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.internal.operators.mixed.d;
import io.reactivex.rxjava3.internal.util.ErrorMode;

/* compiled from: FlowableConcatMapMaybePublisher.java */
/* loaded from: classes4.dex */
public final class e<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78885b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f78886c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f78887d;

    /* renamed from: e  reason: collision with root package name */
    final int f78888e;

    public e(org.reactivestreams.c<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f78885b = source;
        this.f78886c = mapper;
        this.f78887d = errorMode;
        this.f78888e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78885b.i(new d.a(s9, this.f78886c, this.f78888e, this.f78887d));
    }
}
