package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.ScalarSubscription;
import java.util.Objects;

/* compiled from: FlowableScalarXMap.java */
/* loaded from: classes4.dex */
public final class m3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableScalarXMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends io.reactivex.rxjava3.core.m<R> {

        /* renamed from: b  reason: collision with root package name */
        final T f77560b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f77561c;

        a(T value, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
            this.f77560b = value;
            this.f77561c = mapper;
        }

        @Override // io.reactivex.rxjava3.core.m
        public void H6(org.reactivestreams.d<? super R> s9) {
            try {
                org.reactivestreams.c<? extends R> apply = this.f77561c.apply((T) this.f77560b);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                org.reactivestreams.c<? extends R> cVar = apply;
                if (cVar instanceof q7.s) {
                    try {
                        Object obj = ((q7.s) cVar).get();
                        if (obj == null) {
                            EmptySubscription.complete(s9);
                            return;
                        } else {
                            s9.onSubscribe(new ScalarSubscription(s9, obj));
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        EmptySubscription.error(th, s9);
                        return;
                    }
                }
                cVar.i(s9);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                EmptySubscription.error(th2, s9);
            }
        }
    }

    private m3() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.rxjava3.core.m<U> a(final T value, final q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper) {
        return io.reactivex.rxjava3.plugins.a.P(new a(value, mapper));
    }

    public static <T, R> boolean b(org.reactivestreams.c<T> source, org.reactivestreams.d<? super R> subscriber, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        if (source instanceof q7.s) {
            try {
                Object obj = (Object) ((q7.s) source).get();
                if (obj == 0) {
                    EmptySubscription.complete(subscriber);
                    return true;
                }
                try {
                    org.reactivestreams.c<? extends R> apply = mapper.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                    org.reactivestreams.c<? extends R> cVar = apply;
                    if (cVar instanceof q7.s) {
                        try {
                            Object obj2 = ((q7.s) cVar).get();
                            if (obj2 == null) {
                                EmptySubscription.complete(subscriber);
                                return true;
                            }
                            subscriber.onSubscribe(new ScalarSubscription(subscriber, obj2));
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            EmptySubscription.error(th, subscriber);
                            return true;
                        }
                    } else {
                        cVar.i(subscriber);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptySubscription.error(th2, subscriber);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptySubscription.error(th3, subscriber);
                return true;
            }
        }
        return false;
    }
}
