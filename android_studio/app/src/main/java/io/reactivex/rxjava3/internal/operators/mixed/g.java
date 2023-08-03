package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.operators.mixed.f;
import io.reactivex.rxjava3.internal.util.ErrorMode;

/* compiled from: FlowableConcatMapSinglePublisher.java */
/* loaded from: classes4.dex */
public final class g<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78914b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f78915c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f78916d;

    /* renamed from: e  reason: collision with root package name */
    final int f78917e;

    public g(org.reactivestreams.c<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f78914b = source;
        this.f78915c = mapper;
        this.f78916d = errorMode;
        this.f78917e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78914b.i(new f.a(s9, this.f78915c, this.f78917e, this.f78916d));
    }
}
