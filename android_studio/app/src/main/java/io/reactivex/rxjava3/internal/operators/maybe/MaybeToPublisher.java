package io.reactivex.rxjava3.internal.operators.maybe;

/* loaded from: classes4.dex */
public enum MaybeToPublisher implements q7.o<io.reactivex.rxjava3.core.b0<Object>, org.reactivestreams.c<Object>> {
    INSTANCE;

    public static <T> q7.o<io.reactivex.rxjava3.core.b0<T>, org.reactivestreams.c<T>> instance() {
        return INSTANCE;
    }

    @Override // q7.o
    public org.reactivestreams.c<Object> apply(io.reactivex.rxjava3.core.b0<Object> t9) {
        return new o1(t9);
    }
}
