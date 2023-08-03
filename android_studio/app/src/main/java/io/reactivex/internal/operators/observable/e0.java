package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableDebounceTimed.java */
/* loaded from: classes3.dex */
public final class e0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74014b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74015c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74016d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounceTimed.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements Runnable, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74017e = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f74018a;

        /* renamed from: b  reason: collision with root package name */
        final long f74019b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f74020c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f74021d = new AtomicBoolean();

        a(T t9, long j4, b<T> bVar) {
            this.f74018a = t9;
            this.f74019b = j4;
            this.f74020c = bVar;
        }

        public void a(io.reactivex.disposables.c cVar) {
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
            if (this.f74021d.compareAndSet(false, true)) {
                this.f74020c.a(this.f74019b, this.f74018a, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounceTimed.java */
    /* loaded from: classes3.dex */
    public static final class b<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74022a;

        /* renamed from: b  reason: collision with root package name */
        final long f74023b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74024c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f74025d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74026e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74027f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f74028g;

        /* renamed from: h  reason: collision with root package name */
        boolean f74029h;

        b(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f74022a = g0Var;
            this.f74023b = j4;
            this.f74024c = timeUnit;
            this.f74025d = cVar;
        }

        void a(long j4, T t9, a<T> aVar) {
            if (j4 == this.f74028g) {
                this.f74022a.onNext(t9);
                aVar.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74026e.dispose();
            this.f74025d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74025d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74029h) {
                return;
            }
            this.f74029h = true;
            io.reactivex.disposables.c cVar = this.f74027f;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = (a) cVar;
            if (aVar != null) {
                aVar.run();
            }
            this.f74022a.onComplete();
            this.f74025d.dispose();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74029h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            io.reactivex.disposables.c cVar = this.f74027f;
            if (cVar != null) {
                cVar.dispose();
            }
            this.f74029h = true;
            this.f74022a.onError(th);
            this.f74025d.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74029h) {
                return;
            }
            long j4 = this.f74028g + 1;
            this.f74028g = j4;
            io.reactivex.disposables.c cVar = this.f74027f;
            if (cVar != null) {
                cVar.dispose();
            }
            a aVar = new a(t9, j4, this);
            this.f74027f = aVar;
            aVar.a(this.f74025d.c(aVar, this.f74023b, this.f74024c));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74026e, cVar)) {
                this.f74026e = cVar;
                this.f74022a.onSubscribe(this);
            }
        }
    }

    public e0(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f74014b = j4;
        this.f74015c = timeUnit;
        this.f74016d = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new b(new io.reactivex.observers.l(g0Var), this.f74014b, this.f74015c, this.f74016d.d()));
    }
}
