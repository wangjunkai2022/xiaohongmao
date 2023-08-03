package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapMaybe.java */
/* loaded from: classes3.dex */
public final class m<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73698a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends w<? extends R>> f73699b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f73700c;

    /* renamed from: d  reason: collision with root package name */
    final int f73701d;

    /* compiled from: ObservableConcatMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: l  reason: collision with root package name */
        private static final long f73702l = -9140123220065488293L;

        /* renamed from: m  reason: collision with root package name */
        static final int f73703m = 0;

        /* renamed from: n  reason: collision with root package name */
        static final int f73704n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final int f73705o = 2;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73706a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends w<? extends R>> f73707b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f73708c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0580a<R> f73709d = new C0580a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final o7.n<T> f73710e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f73711f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f73712g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73713h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73714i;

        /* renamed from: j  reason: collision with root package name */
        R f73715j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f73716k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.mixed.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0580a<R> extends AtomicReference<io.reactivex.disposables.c> implements t<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73717b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73718a;

            C0580a(a<?, R> aVar) {
                this.f73718a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73718a.b();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73718a.c(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                this.f73718a.d(r9);
            }
        }

        a(g0<? super R> g0Var, n7.o<? super T, ? extends w<? extends R>> oVar, int i4, ErrorMode errorMode) {
            this.f73706a = g0Var;
            this.f73707b = oVar;
            this.f73711f = errorMode;
            this.f73710e = new io.reactivex.internal.queue.b(i4);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f73706a;
            ErrorMode errorMode = this.f73711f;
            o7.n<T> nVar = this.f73710e;
            AtomicThrowable atomicThrowable = this.f73708c;
            int i4 = 1;
            while (true) {
                if (this.f73714i) {
                    nVar.clear();
                    this.f73715j = null;
                } else {
                    int i10 = this.f73716k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z9 = this.f73713h;
                            T poll = nVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate == null) {
                                    g0Var.onComplete();
                                    return;
                                } else {
                                    g0Var.onError(terminate);
                                    return;
                                }
                            } else if (!z10) {
                                try {
                                    w wVar = (w) io.reactivex.internal.functions.b.g(this.f73707b.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f73716k = 1;
                                    wVar.b(this.f73709d);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f73712g.dispose();
                                    nVar.clear();
                                    atomicThrowable.addThrowable(th);
                                    g0Var.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f73715j = null;
                            g0Var.onNext((R) this.f73715j);
                            this.f73716k = 0;
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f73715j = null;
            g0Var.onError(atomicThrowable.terminate());
        }

        void b() {
            this.f73716k = 0;
            a();
        }

        void c(Throwable th) {
            if (this.f73708c.addThrowable(th)) {
                if (this.f73711f != ErrorMode.END) {
                    this.f73712g.dispose();
                }
                this.f73716k = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d(R r9) {
            this.f73715j = r9;
            this.f73716k = 2;
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73714i = true;
            this.f73712g.dispose();
            this.f73709d.a();
            if (getAndIncrement() == 0) {
                this.f73710e.clear();
                this.f73715j = null;
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73714i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73713h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73708c.addThrowable(th)) {
                if (this.f73711f == ErrorMode.IMMEDIATE) {
                    this.f73709d.a();
                }
                this.f73713h = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73710e.offer(t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73712g, cVar)) {
                this.f73712g = cVar;
                this.f73706a.onSubscribe(this);
            }
        }
    }

    public m(z<T> zVar, n7.o<? super T, ? extends w<? extends R>> oVar, ErrorMode errorMode, int i4) {
        this.f73698a = zVar;
        this.f73699b = oVar;
        this.f73700c = errorMode;
        this.f73701d = i4;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        if (r.b(this.f73698a, this.f73699b, g0Var)) {
            return;
        }
        this.f73698a.subscribe(new a(g0Var, this.f73699b, this.f73701d, this.f73700c));
    }
}
