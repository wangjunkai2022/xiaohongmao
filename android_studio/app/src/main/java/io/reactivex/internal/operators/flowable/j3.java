package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import java.util.concurrent.Callable;

/* compiled from: FlowableScalarXMap.java */
/* loaded from: classes3.dex */
public final class j3 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableScalarXMap.java */
    /* loaded from: classes3.dex */
    public static final class a<T, R> extends io.reactivex.j<R> {

        /* renamed from: b  reason: collision with root package name */
        final T f72118b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f72119c;

        a(T t9, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
            this.f72118b = t9;
            this.f72119c = oVar;
        }

        @Override // io.reactivex.j
        public void k6(org.reactivestreams.d<? super R> dVar) {
            try {
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72119c.apply((T) this.f72118b), "The mapper returned a null Publisher");
                if (cVar instanceof Callable) {
                    try {
                        Object call = ((Callable) cVar).call();
                        if (call == null) {
                            EmptySubscription.complete(dVar);
                            return;
                        } else {
                            dVar.onSubscribe(new ScalarSubscription(dVar, call));
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptySubscription.error(th, dVar);
                        return;
                    }
                }
                cVar.i(dVar);
            } catch (Throwable th2) {
                EmptySubscription.error(th2, dVar);
            }
        }
    }

    private j3() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.j<U> a(T t9, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar) {
        return io.reactivex.plugins.a.P(new a(t9, oVar));
    }

    public static <T, R> boolean b(org.reactivestreams.c<T> cVar, org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        if (cVar instanceof Callable) {
            try {
                Object obj = (Object) ((Callable) cVar).call();
                if (obj == 0) {
                    EmptySubscription.complete(dVar);
                    return true;
                }
                try {
                    org.reactivestreams.c cVar2 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(oVar.apply(obj), "The mapper returned a null Publisher");
                    if (cVar2 instanceof Callable) {
                        try {
                            Object call = ((Callable) cVar2).call();
                            if (call == null) {
                                EmptySubscription.complete(dVar);
                                return true;
                            }
                            dVar.onSubscribe(new ScalarSubscription(dVar, call));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptySubscription.error(th, dVar);
                            return true;
                        }
                    } else {
                        cVar2.i(dVar);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptySubscription.error(th2, dVar);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptySubscription.error(th3, dVar);
                return true;
            }
        }
        return false;
    }
}
