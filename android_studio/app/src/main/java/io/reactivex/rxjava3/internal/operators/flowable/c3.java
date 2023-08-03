package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableRefCount.java */
/* loaded from: classes4.dex */
public final class c3<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.flowables.a<T> f76949b;

    /* renamed from: c  reason: collision with root package name */
    final int f76950c;

    /* renamed from: d  reason: collision with root package name */
    final long f76951d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f76952e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76953f;

    /* renamed from: g  reason: collision with root package name */
    a f76954g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableRefCount.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements Runnable, q7.g<io.reactivex.rxjava3.disposables.f> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f76955f = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final c3<?> f76956a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76957b;

        /* renamed from: c  reason: collision with root package name */
        long f76958c;

        /* renamed from: d  reason: collision with root package name */
        boolean f76959d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76960e;

        a(c3<?> parent) {
            this.f76956a = parent;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(io.reactivex.rxjava3.disposables.f t9) {
            DisposableHelper.replace(this, t9);
            synchronized (this.f76956a) {
                if (this.f76960e) {
                    this.f76956a.f76949b.r9();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f76956a.i9(this);
        }
    }

    /* compiled from: FlowableRefCount.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f76961e = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76962a;

        /* renamed from: b  reason: collision with root package name */
        final c3<T> f76963b;

        /* renamed from: c  reason: collision with root package name */
        final a f76964c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f76965d;

        b(org.reactivestreams.d<? super T> actual, c3<T> parent, a connection) {
            this.f76962a = actual;
            this.f76963b = parent;
            this.f76964c = connection;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76965d.cancel();
            if (compareAndSet(false, true)) {
                this.f76963b.g9(this.f76964c);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f76963b.h9(this.f76964c);
                this.f76962a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (compareAndSet(false, true)) {
                this.f76963b.h9(this.f76964c);
                this.f76962a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f76962a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76965d, s9)) {
                this.f76965d = s9;
                this.f76962a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f76965d.request(n9);
        }
    }

    public c3(io.reactivex.rxjava3.flowables.a<T> source) {
        this(source, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar;
        boolean z9;
        io.reactivex.rxjava3.disposables.f fVar;
        synchronized (this) {
            aVar = this.f76954g;
            if (aVar == null) {
                aVar = new a(this);
                this.f76954g = aVar;
            }
            long j4 = aVar.f76958c;
            if (j4 == 0 && (fVar = aVar.f76957b) != null) {
                fVar.dispose();
            }
            long j10 = j4 + 1;
            aVar.f76958c = j10;
            z9 = true;
            if (aVar.f76959d || j10 != this.f76950c) {
                z9 = false;
            } else {
                aVar.f76959d = true;
            }
        }
        this.f76949b.G6(new b(s9, this, aVar));
        if (z9) {
            this.f76949b.k9(aVar);
        }
    }

    void g9(a rc) {
        synchronized (this) {
            a aVar = this.f76954g;
            if (aVar != null && aVar == rc) {
                long j4 = rc.f76958c - 1;
                rc.f76958c = j4;
                if (j4 == 0 && rc.f76959d) {
                    if (this.f76951d == 0) {
                        i9(rc);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    rc.f76957b = sequentialDisposable;
                    sequentialDisposable.replace(this.f76953f.g(rc, this.f76951d, this.f76952e));
                }
            }
        }
    }

    void h9(a rc) {
        synchronized (this) {
            if (this.f76954g == rc) {
                io.reactivex.rxjava3.disposables.f fVar = rc.f76957b;
                if (fVar != null) {
                    fVar.dispose();
                    rc.f76957b = null;
                }
                long j4 = rc.f76958c - 1;
                rc.f76958c = j4;
                if (j4 == 0) {
                    this.f76954g = null;
                    this.f76949b.r9();
                }
            }
        }
    }

    void i9(a rc) {
        synchronized (this) {
            if (rc.f76958c == 0 && rc == this.f76954g) {
                this.f76954g = null;
                io.reactivex.rxjava3.disposables.f fVar = rc.get();
                DisposableHelper.dispose(rc);
                if (fVar == null) {
                    rc.f76960e = true;
                } else {
                    this.f76949b.r9();
                }
            }
        }
    }

    public c3(io.reactivex.rxjava3.flowables.a<T> source, int n9, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f76949b = source;
        this.f76950c = n9;
        this.f76951d = timeout;
        this.f76952e = unit;
        this.f76953f = scheduler;
    }
}
