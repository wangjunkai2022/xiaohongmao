package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import n7.q;

/* compiled from: ParallelPeek.java */
/* loaded from: classes3.dex */
public final class l<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75244a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f75245b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super T> f75246c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super Throwable> f75247d;

    /* renamed from: e  reason: collision with root package name */
    final n7.a f75248e;

    /* renamed from: f  reason: collision with root package name */
    final n7.a f75249f;

    /* renamed from: g  reason: collision with root package name */
    final n7.g<? super org.reactivestreams.e> f75250g;

    /* renamed from: h  reason: collision with root package name */
    final q f75251h;

    /* renamed from: i  reason: collision with root package name */
    final n7.a f75252i;

    /* compiled from: ParallelPeek.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75253a;

        /* renamed from: b  reason: collision with root package name */
        final l<T> f75254b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f75255c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75256d;

        a(org.reactivestreams.d<? super T> dVar, l<T> lVar) {
            this.f75253a = dVar;
            this.f75254b = lVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            try {
                this.f75254b.f75252i.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f75255c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75256d) {
                return;
            }
            this.f75256d = true;
            try {
                this.f75254b.f75248e.run();
                this.f75253a.onComplete();
                try {
                    this.f75254b.f75249f.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75253a.onError(th2);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75256d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75256d = true;
            try {
                this.f75254b.f75247d.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f75253a.onError(th);
            try {
                this.f75254b.f75249f.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75256d) {
                return;
            }
            try {
                this.f75254b.f75245b.accept(t9);
                this.f75253a.onNext(t9);
                try {
                    this.f75254b.f75246c.accept(t9);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75255c, eVar)) {
                this.f75255c = eVar;
                try {
                    this.f75254b.f75250g.accept(eVar);
                    this.f75253a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    eVar.cancel();
                    this.f75253a.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            try {
                this.f75254b.f75251h.a(j4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f75255c.request(j4);
        }
    }

    public l(io.reactivex.parallel.a<T> aVar, n7.g<? super T> gVar, n7.g<? super T> gVar2, n7.g<? super Throwable> gVar3, n7.a aVar2, n7.a aVar3, n7.g<? super org.reactivestreams.e> gVar4, q qVar, n7.a aVar4) {
        this.f75244a = aVar;
        this.f75245b = (n7.g) io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        this.f75246c = (n7.g) io.reactivex.internal.functions.b.g(gVar2, "onAfterNext is null");
        this.f75247d = (n7.g) io.reactivex.internal.functions.b.g(gVar3, "onError is null");
        this.f75248e = (n7.a) io.reactivex.internal.functions.b.g(aVar2, "onComplete is null");
        this.f75249f = (n7.a) io.reactivex.internal.functions.b.g(aVar3, "onAfterTerminated is null");
        this.f75250g = (n7.g) io.reactivex.internal.functions.b.g(gVar4, "onSubscribe is null");
        this.f75251h = (q) io.reactivex.internal.functions.b.g(qVar, "onRequest is null");
        this.f75252i = (n7.a) io.reactivex.internal.functions.b.g(aVar4, "onCancel is null");
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75244a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr2[i4] = new a(dVarArr[i4], this);
            }
            this.f75244a.Q(dVarArr2);
        }
    }
}
