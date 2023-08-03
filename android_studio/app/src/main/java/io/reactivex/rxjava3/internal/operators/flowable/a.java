package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.Objects;

/* compiled from: AbstractFlowableWithUpstream.java */
/* loaded from: classes4.dex */
abstract class a<T, R> extends io.reactivex.rxjava3.core.m<R> implements io.reactivex.rxjava3.internal.fuseable.j<T> {

    /* renamed from: b  reason: collision with root package name */
    protected final io.reactivex.rxjava3.core.m<T> f76811b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.rxjava3.core.m<T> source) {
        Objects.requireNonNull(source, "source is null");
        this.f76811b = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.j
    public final org.reactivestreams.c<T> source() {
        return this.f76811b;
    }
}
