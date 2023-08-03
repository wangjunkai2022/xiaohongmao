package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.internal.jdk8.m;
import java.util.stream.Stream;

/* compiled from: SingleFlattenStreamAsFlowable.java */
/* loaded from: classes4.dex */
public final class e0<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final p0<T> f76300b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76301c;

    public e0(p0<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        this.f76300b = source;
        this.f76301c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super R> s9) {
        this.f76300b.d(new m.a(s9, this.f76301c));
    }
}
