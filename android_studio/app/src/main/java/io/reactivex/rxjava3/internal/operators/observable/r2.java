package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableRefCount.java */
/* loaded from: classes4.dex */
public final class r2<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.observables.a<T> f80041a;

    /* renamed from: b  reason: collision with root package name */
    final int f80042b;

    /* renamed from: c  reason: collision with root package name */
    final long f80043c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f80044d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80045e;

    /* renamed from: f  reason: collision with root package name */
    a f80046f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableRefCount.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements Runnable, q7.g<io.reactivex.rxjava3.disposables.f> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80047f = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final r2<?> f80048a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80049b;

        /* renamed from: c  reason: collision with root package name */
        long f80050c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80051d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80052e;

        a(r2<?> parent) {
            this.f80048a = parent;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(io.reactivex.rxjava3.disposables.f t9) {
            DisposableHelper.replace(this, t9);
            synchronized (this.f80048a) {
                if (this.f80052e) {
                    this.f80048a.f80041a.L8();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f80048a.C8(this);
        }
    }

    /* compiled from: ObservableRefCount.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80053e = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80054a;

        /* renamed from: b  reason: collision with root package name */
        final r2<T> f80055b;

        /* renamed from: c  reason: collision with root package name */
        final a f80056c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80057d;

        b(io.reactivex.rxjava3.core.n0<? super T> downstream, r2<T> parent, a connection) {
            this.f80054a = downstream;
            this.f80055b = parent;
            this.f80056c = connection;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80057d.dispose();
            if (compareAndSet(false, true)) {
                this.f80055b.A8(this.f80056c);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80057d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f80055b.B8(this.f80056c);
                this.f80054a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (compareAndSet(false, true)) {
                this.f80055b.B8(this.f80056c);
                this.f80054a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80054a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80057d, d4)) {
                this.f80057d = d4;
                this.f80054a.onSubscribe(this);
            }
        }
    }

    public r2(io.reactivex.rxjava3.observables.a<T> source) {
        this(source, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    void A8(a rc) {
        synchronized (this) {
            a aVar = this.f80046f;
            if (aVar != null && aVar == rc) {
                long j4 = rc.f80050c - 1;
                rc.f80050c = j4;
                if (j4 == 0 && rc.f80051d) {
                    if (this.f80043c == 0) {
                        C8(rc);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    rc.f80049b = sequentialDisposable;
                    sequentialDisposable.replace(this.f80045e.g(rc, this.f80043c, this.f80044d));
                }
            }
        }
    }

    void B8(a rc) {
        synchronized (this) {
            if (this.f80046f == rc) {
                io.reactivex.rxjava3.disposables.f fVar = rc.f80049b;
                if (fVar != null) {
                    fVar.dispose();
                    rc.f80049b = null;
                }
                long j4 = rc.f80050c - 1;
                rc.f80050c = j4;
                if (j4 == 0) {
                    this.f80046f = null;
                    this.f80041a.L8();
                }
            }
        }
    }

    void C8(a rc) {
        synchronized (this) {
            if (rc.f80050c == 0 && rc == this.f80046f) {
                this.f80046f = null;
                io.reactivex.rxjava3.disposables.f fVar = rc.get();
                DisposableHelper.dispose(rc);
                if (fVar == null) {
                    rc.f80052e = true;
                } else {
                    this.f80041a.L8();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar;
        boolean z9;
        io.reactivex.rxjava3.disposables.f fVar;
        synchronized (this) {
            aVar = this.f80046f;
            if (aVar == null) {
                aVar = new a(this);
                this.f80046f = aVar;
            }
            long j4 = aVar.f80050c;
            if (j4 == 0 && (fVar = aVar.f80049b) != null) {
                fVar.dispose();
            }
            long j10 = j4 + 1;
            aVar.f80050c = j10;
            z9 = true;
            if (aVar.f80051d || j10 != this.f80042b) {
                z9 = false;
            } else {
                aVar.f80051d = true;
            }
        }
        this.f80041a.a(new b(observer, this, aVar));
        if (z9) {
            this.f80041a.E8(aVar);
        }
    }

    public r2(io.reactivex.rxjava3.observables.a<T> source, int n9, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80041a = source;
        this.f80042b = n9;
        this.f80043c = timeout;
        this.f80044d = unit;
        this.f80045e = scheduler;
    }
}
