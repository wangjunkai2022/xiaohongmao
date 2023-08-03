package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableDebounceTimed.java */
/* loaded from: classes4.dex */
public final class e0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79351b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79352c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79353d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounceTimed.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements Runnable, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79354e = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f79355a;

        /* renamed from: b  reason: collision with root package name */
        final long f79356b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f79357c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f79358d = new AtomicBoolean();

        a(T value, long idx, b<T> parent) {
            this.f79355a = value;
            this.f79356b = idx;
            this.f79357c = parent;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79358d.compareAndSet(false, true)) {
                this.f79357c.a(this.f79356b, this.f79355a, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounceTimed.java */
    /* loaded from: classes4.dex */
    public static final class b<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79359a;

        /* renamed from: b  reason: collision with root package name */
        final long f79360b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f79361c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f79362d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79363e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79364f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f79365g;

        /* renamed from: h  reason: collision with root package name */
        boolean f79366h;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f79359a = actual;
            this.f79360b = timeout;
            this.f79361c = unit;
            this.f79362d = worker;
        }

        void a(long idx, T t9, a<T> emitter) {
            if (idx == this.f79365g) {
                this.f79359a.onNext(t9);
                emitter.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79363e.dispose();
            this.f79362d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79362d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79366h) {
                return;
            }
            this.f79366h = true;
            io.reactivex.rxjava3.disposables.f fVar = this.f79364f;
            if (fVar != null) {
                fVar.dispose();
            }
            a aVar = (a) fVar;
            if (aVar != null) {
                aVar.run();
            }
            this.f79359a.onComplete();
            this.f79362d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79366h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            io.reactivex.rxjava3.disposables.f fVar = this.f79364f;
            if (fVar != null) {
                fVar.dispose();
            }
            this.f79366h = true;
            this.f79359a.onError(t9);
            this.f79362d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79366h) {
                return;
            }
            long j4 = this.f79365g + 1;
            this.f79365g = j4;
            io.reactivex.rxjava3.disposables.f fVar = this.f79364f;
            if (fVar != null) {
                fVar.dispose();
            }
            a aVar = new a(t9, j4, this);
            this.f79364f = aVar;
            aVar.a(this.f79362d.c(aVar, this.f79360b, this.f79361c));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79363e, d4)) {
                this.f79363e = d4;
                this.f79359a.onSubscribe(this);
            }
        }
    }

    public e0(io.reactivex.rxjava3.core.l0<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f79351b = timeout;
        this.f79352c = unit;
        this.f79353d = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new b(new io.reactivex.rxjava3.observers.m(t9), this.f79351b, this.f79352c, this.f79353d.d()));
    }
}
