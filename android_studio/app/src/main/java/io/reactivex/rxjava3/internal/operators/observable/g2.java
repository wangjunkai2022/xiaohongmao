package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableObserveOn.java */
/* loaded from: classes4.dex */
public final class g2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79447b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79448c;

    /* renamed from: d  reason: collision with root package name */
    final int f79449d;

    /* compiled from: ObservableObserveOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.rxjava3.core.n0<T>, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f79450m = 6576896619930983584L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79451b;

        /* renamed from: c  reason: collision with root package name */
        final o0.c f79452c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f79453d;

        /* renamed from: e  reason: collision with root package name */
        final int f79454e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f79455f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79456g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f79457h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79458i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f79459j;

        /* renamed from: k  reason: collision with root package name */
        int f79460k;

        /* renamed from: l  reason: collision with root package name */
        boolean f79461l;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, o0.c worker, boolean delayError, int bufferSize) {
            this.f79451b = actual;
            this.f79452c = worker;
            this.f79453d = delayError;
            this.f79454e = bufferSize;
        }

        boolean a(boolean d4, boolean empty, io.reactivex.rxjava3.core.n0<? super T> a10) {
            if (this.f79459j) {
                this.f79455f.clear();
                return true;
            } else if (d4) {
                Throwable th = this.f79457h;
                if (this.f79453d) {
                    if (empty) {
                        this.f79459j = true;
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        this.f79452c.dispose();
                        return true;
                    }
                    return false;
                } else if (th != null) {
                    this.f79459j = true;
                    this.f79455f.clear();
                    a10.onError(th);
                    this.f79452c.dispose();
                    return true;
                } else if (empty) {
                    this.f79459j = true;
                    a10.onComplete();
                    this.f79452c.dispose();
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
            while (!this.f79459j) {
                boolean z9 = this.f79458i;
                Throwable th = this.f79457h;
                if (!this.f79453d && z9 && th != null) {
                    this.f79459j = true;
                    this.f79451b.onError(this.f79457h);
                    this.f79452c.dispose();
                    return;
                }
                this.f79451b.onNext(null);
                if (z9) {
                    this.f79459j = true;
                    Throwable th2 = this.f79457h;
                    if (th2 != null) {
                        this.f79451b.onError(th2);
                    } else {
                        this.f79451b.onComplete();
                    }
                    this.f79452c.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79455f.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79459j) {
                return;
            }
            this.f79459j = true;
            this.f79456g.dispose();
            this.f79452c.dispose();
            if (this.f79461l || getAndIncrement() != 0) {
                return;
            }
            this.f79455f.clear();
        }

        void h() {
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f79455f;
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79451b;
            int i4 = 1;
            while (!a(this.f79458i, qVar.isEmpty(), n0Var)) {
                while (true) {
                    boolean z9 = this.f79458i;
                    try {
                        Object obj = (T) qVar.poll();
                        boolean z10 = obj == null;
                        if (a(z9, z10, n0Var)) {
                            return;
                        }
                        if (z10) {
                            i4 = addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        } else {
                            n0Var.onNext(obj);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79459j = true;
                        this.f79456g.dispose();
                        qVar.clear();
                        n0Var.onError(th);
                        this.f79452c.dispose();
                        return;
                    }
                }
            }
        }

        void i() {
            if (getAndIncrement() == 0) {
                this.f79452c.b(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79459j;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f79455f.isEmpty();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79458i) {
                return;
            }
            this.f79458i = true;
            i();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79458i) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79457h = t9;
            this.f79458i = true;
            i();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79458i) {
                return;
            }
            if (this.f79460k != 2) {
                this.f79455f.offer(t9);
            }
            i();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79456g, d4)) {
                this.f79456g = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f79460k = requestFusion;
                        this.f79455f = lVar;
                        this.f79458i = true;
                        this.f79451b.onSubscribe(this);
                        i();
                        return;
                    } else if (requestFusion == 2) {
                        this.f79460k = requestFusion;
                        this.f79455f = lVar;
                        this.f79451b.onSubscribe(this);
                        return;
                    }
                }
                this.f79455f = new io.reactivex.rxjava3.internal.queue.b(this.f79454e);
                this.f79451b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            return this.f79455f.poll();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f79461l = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79461l) {
                b();
            } else {
                h();
            }
        }
    }

    public g2(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError, int bufferSize) {
        super(source);
        this.f79447b = scheduler;
        this.f79448c = delayError;
        this.f79449d = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        io.reactivex.rxjava3.core.o0 o0Var = this.f79447b;
        if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.o) {
            this.f79141a.a(observer);
            return;
        }
        this.f79141a.a(new a(observer, o0Var.d(), this.f79448c, this.f79449d));
    }
}
