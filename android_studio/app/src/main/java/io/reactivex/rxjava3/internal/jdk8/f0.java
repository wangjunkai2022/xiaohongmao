package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.internal.jdk8.n;
import java.util.stream.Stream;

/* compiled from: SingleFlattenStreamAsObservable.java */
/* loaded from: classes4.dex */
public final class f0<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final p0<T> f76320a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76321b;

    public f0(p0<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        this.f76320a = source;
        this.f76321b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@p7.e n0<? super R> s9) {
        this.f76320a.d(new n.a(s9, this.f76321b));
    }
}
