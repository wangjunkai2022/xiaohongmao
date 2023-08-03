package io.reactivex.internal.operators.maybe;

/* loaded from: classes3.dex */
public enum MaybeToPublisher implements n7.o<io.reactivex.w<Object>, org.reactivestreams.c<Object>> {
    INSTANCE;

    public static <T> n7.o<io.reactivex.w<T>, org.reactivestreams.c<T>> instance() {
        return INSTANCE;
    }

    @Override // n7.o
    public org.reactivestreams.c<Object> apply(io.reactivex.w<Object> wVar) throws Exception {
        return new l1(wVar);
    }
}
