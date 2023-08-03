package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDebounceTimed.java */
/* loaded from: classes3.dex */
public final class h0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f71963c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f71964d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f71965e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounceTimed.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements Runnable, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71966e = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f71967a;

        /* renamed from: b  reason: collision with root package name */
        final long f71968b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f71969c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f71970d = new AtomicBoolean();

        a(T t9, long j4, b<T> bVar) {
            this.f71967a = t9;
            this.f71968b = j4;
            this.f71969c = bVar;
        }

        void a() {
            if (this.f71970d.compareAndSet(false, true)) {
                this.f71969c.a(this.f71968b, this.f71967a, this);
            }
        }

        public void b(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounceTimed.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f71971i = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71972a;

        /* renamed from: b  reason: collision with root package name */
        final long f71973b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f71974c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f71975d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f71976e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f71977f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f71978g;

        /* renamed from: h  reason: collision with root package name */
        boolean f71979h;

        b(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f71972a = dVar;
            this.f71973b = j4;
            this.f71974c = timeUnit;
            this.f71975d = cVar;
        }

        void a(long j4, T t9, a<T> aVar) {
            if (j4 == this.f71978g) {
                if (get() != 0) {
                    this.f71972a.onNext(t9);
                    io.reactivex.internal.util.b.e(this, 1L);
                    aVar.dispose();
                    return;
                }
                cancel();
                this.f71972a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71976e.cancel();
            this.f71975d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71979h) {
                return;
            }
            this.f71979h = true;
            io.reactivex.disposables.c cVar = this.f71977f;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = (a) cVar;
            if (aVar != null) {
                aVar.a();
            }
            this.f71972a.onComplete();
            this.f71975d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71979h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71979h = true;
            io.reactivex.disposables.c cVar = this.f71977f;
            if (cVar != null) {
                cVar.dispose();
            }
            this.f71972a.onError(th);
            this.f71975d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71979h) {
                return;
            }
            long j4 = this.f71978g + 1;
            this.f71978g = j4;
            io.reactivex.disposables.c cVar = this.f71977f;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = new a(t9, j4, this);
            this.f71977f = aVar;
            aVar.b(this.f71975d.c(aVar, this.f71973b, this.f71974c));
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71976e, eVar)) {
                this.f71976e = eVar;
                this.f71972a.onSubscribe(this);
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

    public h0(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f71963c = j4;
        this.f71964d = timeUnit;
        this.f71965e = h0Var;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new b(new io.reactivex.subscribers.e(dVar), this.f71963c, this.f71964d, this.f71965e.d()));
    }
}
