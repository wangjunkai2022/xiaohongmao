package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDebounce.java */
/* loaded from: classes3.dex */
public final class g0<T, U> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<U>> f71922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounce.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71923g = 6725975399620862591L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71924a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<U>> f71925b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f71926c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f71927d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f71928e;

        /* renamed from: f  reason: collision with root package name */
        boolean f71929f;

        /* compiled from: FlowableDebounce.java */
        /* renamed from: io.reactivex.internal.operators.flowable.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0556a<T, U> extends io.reactivex.subscribers.b<U> {

            /* renamed from: b  reason: collision with root package name */
            final a<T, U> f71930b;

            /* renamed from: c  reason: collision with root package name */
            final long f71931c;

            /* renamed from: d  reason: collision with root package name */
            final T f71932d;

            /* renamed from: e  reason: collision with root package name */
            boolean f71933e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f71934f = new AtomicBoolean();

            C0556a(a<T, U> aVar, long j4, T t9) {
                this.f71930b = aVar;
                this.f71931c = j4;
                this.f71932d = t9;
            }

            void d() {
                if (this.f71934f.compareAndSet(false, true)) {
                    this.f71930b.a(this.f71931c, this.f71932d);
                }
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                if (this.f71933e) {
                    return;
                }
                this.f71933e = true;
                d();
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                if (this.f71933e) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
                this.f71933e = true;
                this.f71930b.onError(th);
            }

            @Override // org.reactivestreams.d
            public void onNext(U u9) {
                if (this.f71933e) {
                    return;
                }
                this.f71933e = true;
                a();
                d();
            }
        }

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
            this.f71924a = dVar;
            this.f71925b = oVar;
        }

        void a(long j4, T t9) {
            if (j4 == this.f71928e) {
                if (get() != 0) {
                    this.f71924a.onNext(t9);
                    io.reactivex.internal.util.b.e(this, 1L);
                    return;
                }
                cancel();
                this.f71924a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71926c.cancel();
            DisposableHelper.dispose(this.f71927d);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71929f) {
                return;
            }
            this.f71929f = true;
            io.reactivex.disposables.c cVar = this.f71927d.get();
            if (DisposableHelper.isDisposed(cVar)) {
                return;
            }
            C0556a c0556a = (C0556a) cVar;
            if (c0556a != null) {
                c0556a.d();
            }
            DisposableHelper.dispose(this.f71927d);
            this.f71924a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f71927d);
            this.f71924a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71929f) {
                return;
            }
            long j4 = this.f71928e + 1;
            this.f71928e = j4;
            io.reactivex.disposables.c cVar = this.f71927d.get();
            if (cVar != null) {
                cVar.dispose();
            }
            try {
                org.reactivestreams.c cVar2 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71925b.apply(t9), "The publisher supplied is null");
                C0556a c0556a = new C0556a(this, j4, t9);
                if (this.f71927d.compareAndSet(cVar, c0556a)) {
                    cVar2.i(c0556a);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f71924a.onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71926c, eVar)) {
                this.f71926c = eVar;
                this.f71924a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public g0(io.reactivex.j<T> jVar, n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
        super(jVar);
        this.f71922c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(new io.reactivex.subscribers.e(dVar), this.f71922c));
    }
}
