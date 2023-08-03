package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableRefCount.java */
/* loaded from: classes3.dex */
public final class o2<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.observables.a<T> f74540a;

    /* renamed from: b  reason: collision with root package name */
    final int f74541b;

    /* renamed from: c  reason: collision with root package name */
    final long f74542c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f74543d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f74544e;

    /* renamed from: f  reason: collision with root package name */
    a f74545f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableRefCount.java */
    /* loaded from: classes3.dex */
    public static final class a extends AtomicReference<io.reactivex.disposables.c> implements Runnable, n7.g<io.reactivex.disposables.c> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74546f = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final o2<?> f74547a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74548b;

        /* renamed from: c  reason: collision with root package name */
        long f74549c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74550d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74551e;

        a(o2<?> o2Var) {
            this.f74547a = o2Var;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.c cVar) throws Exception {
            DisposableHelper.replace(this, cVar);
            synchronized (this.f74547a) {
                if (this.f74551e) {
                    ((io.reactivex.internal.disposables.c) this.f74547a.f74540a).c(cVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74547a.g(this);
        }
    }

    /* compiled from: ObservableRefCount.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74552e = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74553a;

        /* renamed from: b  reason: collision with root package name */
        final o2<T> f74554b;

        /* renamed from: c  reason: collision with root package name */
        final a f74555c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74556d;

        b(io.reactivex.g0<? super T> g0Var, o2<T> o2Var, a aVar) {
            this.f74553a = g0Var;
            this.f74554b = o2Var;
            this.f74555c = aVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74556d.dispose();
            if (compareAndSet(false, true)) {
                this.f74554b.b(this.f74555c);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74556d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f74554b.f(this.f74555c);
                this.f74553a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f74554b.f(this.f74555c);
                this.f74553a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74553a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74556d, cVar)) {
                this.f74556d = cVar;
                this.f74553a.onSubscribe(this);
            }
        }
    }

    public o2(io.reactivex.observables.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    void b(a aVar) {
        synchronized (this) {
            a aVar2 = this.f74545f;
            if (aVar2 != null && aVar2 == aVar) {
                long j4 = aVar.f74549c - 1;
                aVar.f74549c = j4;
                if (j4 == 0 && aVar.f74550d) {
                    if (this.f74542c == 0) {
                        g(aVar);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    aVar.f74548b = sequentialDisposable;
                    sequentialDisposable.replace(this.f74544e.g(aVar, this.f74542c, this.f74543d));
                }
            }
        }
    }

    void d(a aVar) {
        io.reactivex.disposables.c cVar = aVar.f74548b;
        if (cVar != null) {
            cVar.dispose();
            aVar.f74548b = null;
        }
    }

    void e(a aVar) {
        io.reactivex.observables.a<T> aVar2 = this.f74540a;
        if (aVar2 instanceof io.reactivex.disposables.c) {
            ((io.reactivex.disposables.c) aVar2).dispose();
        } else if (aVar2 instanceof io.reactivex.internal.disposables.c) {
            ((io.reactivex.internal.disposables.c) aVar2).c(aVar.get());
        }
    }

    void f(a aVar) {
        synchronized (this) {
            if (this.f74540a instanceof h2) {
                a aVar2 = this.f74545f;
                if (aVar2 != null && aVar2 == aVar) {
                    this.f74545f = null;
                    d(aVar);
                }
                long j4 = aVar.f74549c - 1;
                aVar.f74549c = j4;
                if (j4 == 0) {
                    e(aVar);
                }
            } else {
                a aVar3 = this.f74545f;
                if (aVar3 != null && aVar3 == aVar) {
                    d(aVar);
                    long j10 = aVar.f74549c - 1;
                    aVar.f74549c = j10;
                    if (j10 == 0) {
                        this.f74545f = null;
                        e(aVar);
                    }
                }
            }
        }
    }

    void g(a aVar) {
        synchronized (this) {
            if (aVar.f74549c == 0 && aVar == this.f74545f) {
                this.f74545f = null;
                io.reactivex.disposables.c cVar = aVar.get();
                DisposableHelper.dispose(aVar);
                io.reactivex.observables.a<T> aVar2 = this.f74540a;
                if (aVar2 instanceof io.reactivex.disposables.c) {
                    ((io.reactivex.disposables.c) aVar2).dispose();
                } else if (aVar2 instanceof io.reactivex.internal.disposables.c) {
                    if (cVar == null) {
                        aVar.f74551e = true;
                    } else {
                        ((io.reactivex.internal.disposables.c) aVar2).c(cVar);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar;
        boolean z9;
        io.reactivex.disposables.c cVar;
        synchronized (this) {
            aVar = this.f74545f;
            if (aVar == null) {
                aVar = new a(this);
                this.f74545f = aVar;
            }
            long j4 = aVar.f74549c;
            if (j4 == 0 && (cVar = aVar.f74548b) != null) {
                cVar.dispose();
            }
            long j10 = j4 + 1;
            aVar.f74549c = j10;
            z9 = true;
            if (aVar.f74550d || j10 != this.f74541b) {
                z9 = false;
            } else {
                aVar.f74550d = true;
            }
        }
        this.f74540a.subscribe(new b(g0Var, this, aVar));
        if (z9) {
            this.f74540a.g(aVar);
        }
    }

    public o2(io.reactivex.observables.a<T> aVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f74540a = aVar;
        this.f74541b = i4;
        this.f74542c = j4;
        this.f74543d = timeUnit;
        this.f74544e = h0Var;
    }
}
