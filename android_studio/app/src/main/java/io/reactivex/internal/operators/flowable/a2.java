package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.concurrent.Callable;

/* compiled from: FlowableMapNotification.java */
/* loaded from: classes3.dex */
public final class a2<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends R> f71559c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends R> f71560d;

    /* renamed from: e  reason: collision with root package name */
    final Callable<? extends R> f71561e;

    /* compiled from: FlowableMapNotification.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends SinglePostCompleteSubscriber<T, R> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f71562k = 2757120512858778108L;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f71563h;

        /* renamed from: i  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends R> f71564i;

        /* renamed from: j  reason: collision with root package name */
        final Callable<? extends R> f71565j;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends R> oVar, n7.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
            super(dVar);
            this.f71563h = oVar;
            this.f71564i = oVar2;
            this.f71565j = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onComplete() {
            try {
                a(io.reactivex.internal.functions.b.g(this.f71565j.call(), "The onComplete publisher returned is null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75800a.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            try {
                a(io.reactivex.internal.functions.b.g(this.f71564i.apply(th), "The onError publisher returned is null"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75800a.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                Object g4 = io.reactivex.internal.functions.b.g(this.f71563h.apply(t9), "The onNext publisher returned is null");
                this.f75803d++;
                this.f75800a.onNext(g4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75800a.onError(th);
            }
        }
    }

    public a2(io.reactivex.j<T> jVar, n7.o<? super T, ? extends R> oVar, n7.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
        super(jVar);
        this.f71559c = oVar;
        this.f71560d = oVar2;
        this.f71561e = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f71538b.j6(new a(dVar, this.f71559c, this.f71560d, this.f71561e));
    }
}
