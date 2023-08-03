package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableObserveOn.java */
/* loaded from: classes3.dex */
public final class c2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f73942b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73943c;

    /* renamed from: d  reason: collision with root package name */
    final int f73944d;

    /* compiled from: ObservableObserveOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T>, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f73945m = 6576896619930983584L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73946b;

        /* renamed from: c  reason: collision with root package name */
        final h0.c f73947c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f73948d;

        /* renamed from: e  reason: collision with root package name */
        final int f73949e;

        /* renamed from: f  reason: collision with root package name */
        o7.o<T> f73950f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f73951g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f73952h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73953i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f73954j;

        /* renamed from: k  reason: collision with root package name */
        int f73955k;

        /* renamed from: l  reason: collision with root package name */
        boolean f73956l;

        a(io.reactivex.g0<? super T> g0Var, h0.c cVar, boolean z9, int i4) {
            this.f73946b = g0Var;
            this.f73947c = cVar;
            this.f73948d = z9;
            this.f73949e = i4;
        }

        boolean a(boolean z9, boolean z10, io.reactivex.g0<? super T> g0Var) {
            if (this.f73954j) {
                this.f73950f.clear();
                return true;
            } else if (z9) {
                Throwable th = this.f73952h;
                if (this.f73948d) {
                    if (z10) {
                        this.f73954j = true;
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        this.f73947c.dispose();
                        return true;
                    }
                    return false;
                } else if (th != null) {
                    this.f73954j = true;
                    this.f73950f.clear();
                    g0Var.onError(th);
                    this.f73947c.dispose();
                    return true;
                } else if (z10) {
                    this.f73954j = true;
                    g0Var.onComplete();
                    this.f73947c.dispose();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            int i4 = 1;
            while (!this.f73954j) {
                boolean z9 = this.f73953i;
                Throwable th = this.f73952h;
                if (!this.f73948d && z9 && th != null) {
                    this.f73954j = true;
                    this.f73946b.onError(this.f73952h);
                    this.f73947c.dispose();
                    return;
                }
                this.f73946b.onNext(null);
                if (z9) {
                    this.f73954j = true;
                    Throwable th2 = this.f73952h;
                    if (th2 != null) {
                        this.f73946b.onError(th2);
                    } else {
                        this.f73946b.onComplete();
                    }
                    this.f73947c.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // o7.o
        public void clear() {
            this.f73950f.clear();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f73954j) {
                return;
            }
            this.f73954j = true;
            this.f73951g.dispose();
            this.f73947c.dispose();
            if (this.f73956l || getAndIncrement() != 0) {
                return;
            }
            this.f73950f.clear();
        }

        void h() {
            o7.o<T> oVar = this.f73950f;
            io.reactivex.g0<? super T> g0Var = this.f73946b;
            int i4 = 1;
            while (!a(this.f73953i, oVar.isEmpty(), g0Var)) {
                while (true) {
                    boolean z9 = this.f73953i;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z10 = obj == null;
                        if (a(z9, z10, g0Var)) {
                            return;
                        }
                        if (z10) {
                            i4 = addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        } else {
                            g0Var.onNext(obj);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f73954j = true;
                        this.f73951g.dispose();
                        oVar.clear();
                        g0Var.onError(th);
                        this.f73947c.dispose();
                        return;
                    }
                }
            }
        }

        void i() {
            if (getAndIncrement() == 0) {
                this.f73947c.b(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73954j;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73950f.isEmpty();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f73953i) {
                return;
            }
            this.f73953i = true;
            i();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73953i) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f73952h = th;
            this.f73953i = true;
            i();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f73953i) {
                return;
            }
            if (this.f73955k != 2) {
                this.f73950f.offer(t9);
            }
            i();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73951g, cVar)) {
                this.f73951g = cVar;
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f73955k = requestFusion;
                        this.f73950f = jVar;
                        this.f73953i = true;
                        this.f73946b.onSubscribe(this);
                        i();
                        return;
                    } else if (requestFusion == 2) {
                        this.f73955k = requestFusion;
                        this.f73950f = jVar;
                        this.f73946b.onSubscribe(this);
                        return;
                    }
                }
                this.f73950f = new io.reactivex.internal.queue.b(this.f73949e);
                this.f73946b.onSubscribe(this);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            return this.f73950f.poll();
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f73956l = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f73956l) {
                b();
            } else {
                h();
            }
        }
    }

    public c2(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var, boolean z9, int i4) {
        super(e0Var);
        this.f73942b = h0Var;
        this.f73943c = z9;
        this.f73944d = i4;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.h0 h0Var = this.f73942b;
        if (h0Var instanceof io.reactivex.internal.schedulers.o) {
            this.f73827a.subscribe(g0Var);
            return;
        }
        this.f73827a.subscribe(new a(g0Var, h0Var.d(), this.f73943c, this.f73944d));
    }
}
