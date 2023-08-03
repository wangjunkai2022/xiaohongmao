package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapCompletable.java */
/* loaded from: classes3.dex */
public final class l<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73680a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f73681b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f73682c;

    /* renamed from: d  reason: collision with root package name */
    final int f73683d;

    /* compiled from: ObservableConcatMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: l  reason: collision with root package name */
        private static final long f73684l = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73685a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f73686b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f73687c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73688d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0579a f73689e = new C0579a(this);

        /* renamed from: f  reason: collision with root package name */
        final int f73690f;

        /* renamed from: g  reason: collision with root package name */
        o7.o<T> f73691g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f73692h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73693i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f73694j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f73695k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.mixed.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0579a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73696b = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f73697a;

            C0579a(a<?> aVar) {
                this.f73697a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f73697a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f73697a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }
        }

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, ErrorMode errorMode, int i4) {
            this.f73685a = dVar;
            this.f73686b = oVar;
            this.f73687c = errorMode;
            this.f73690f = i4;
        }

        void a() {
            boolean z9;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicThrowable atomicThrowable = this.f73688d;
            ErrorMode errorMode = this.f73687c;
            while (!this.f73695k) {
                if (!this.f73693i) {
                    if (errorMode == ErrorMode.BOUNDARY && atomicThrowable.get() != null) {
                        this.f73695k = true;
                        this.f73691g.clear();
                        this.f73685a.onError(atomicThrowable.terminate());
                        return;
                    }
                    boolean z10 = this.f73694j;
                    io.reactivex.g gVar = null;
                    try {
                        T poll = this.f73691g.poll();
                        if (poll != null) {
                            gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f73686b.apply(poll), "The mapper returned a null CompletableSource");
                            z9 = false;
                        } else {
                            z9 = true;
                        }
                        if (z10 && z9) {
                            this.f73695k = true;
                            Throwable terminate = atomicThrowable.terminate();
                            if (terminate != null) {
                                this.f73685a.onError(terminate);
                                return;
                            } else {
                                this.f73685a.onComplete();
                                return;
                            }
                        } else if (!z9) {
                            this.f73693i = true;
                            gVar.d(this.f73689e);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f73695k = true;
                        this.f73691g.clear();
                        this.f73692h.dispose();
                        atomicThrowable.addThrowable(th);
                        this.f73685a.onError(atomicThrowable.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f73691g.clear();
        }

        void b() {
            this.f73693i = false;
            a();
        }

        void c(Throwable th) {
            if (this.f73688d.addThrowable(th)) {
                if (this.f73687c == ErrorMode.IMMEDIATE) {
                    this.f73695k = true;
                    this.f73692h.dispose();
                    Throwable terminate = this.f73688d.terminate();
                    if (terminate != io.reactivex.internal.util.g.f75916a) {
                        this.f73685a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f73691g.clear();
                        return;
                    }
                    return;
                }
                this.f73693i = false;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73695k = true;
            this.f73692h.dispose();
            this.f73689e.a();
            if (getAndIncrement() == 0) {
                this.f73691g.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73695k;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73694j = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73688d.addThrowable(th)) {
                if (this.f73687c == ErrorMode.IMMEDIATE) {
                    this.f73695k = true;
                    this.f73689e.a();
                    Throwable terminate = this.f73688d.terminate();
                    if (terminate != io.reactivex.internal.util.g.f75916a) {
                        this.f73685a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f73691g.clear();
                        return;
                    }
                    return;
                }
                this.f73694j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (t9 != null) {
                this.f73691g.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73692h, cVar)) {
                this.f73692h = cVar;
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f73691g = jVar;
                        this.f73694j = true;
                        this.f73685a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f73691g = jVar;
                        this.f73685a.onSubscribe(this);
                        return;
                    }
                }
                this.f73691g = new io.reactivex.internal.queue.b(this.f73690f);
                this.f73685a.onSubscribe(this);
            }
        }
    }

    public l(z<T> zVar, n7.o<? super T, ? extends io.reactivex.g> oVar, ErrorMode errorMode, int i4) {
        this.f73680a = zVar;
        this.f73681b = oVar;
        this.f73682c = errorMode;
        this.f73683d = i4;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        if (r.a(this.f73680a, this.f73681b, dVar)) {
            return;
        }
        this.f73680a.subscribe(new a(dVar, this.f73681b, this.f73682c, this.f73683d));
    }
}
