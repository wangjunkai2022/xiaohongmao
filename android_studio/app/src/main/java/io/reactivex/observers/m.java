package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: TestObserver.java */
/* loaded from: classes4.dex */
public class m<T> extends BaseTestConsumer<T, m<T>> implements g0<T>, io.reactivex.disposables.c, t<T>, l0<T>, io.reactivex.d {

    /* renamed from: k  reason: collision with root package name */
    private final g0<? super T> f75969k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.c> f75970l;

    /* renamed from: m  reason: collision with root package name */
    private o7.j<T> f75971m;

    /* compiled from: TestObserver.java */
    /* loaded from: classes4.dex */
    enum a implements g0<Object> {
        INSTANCE;

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
        }
    }

    public m() {
        this(a.INSTANCE);
    }

    public static <T> m<T> i0() {
        return new m<>();
    }

    public static <T> m<T> j0(g0<? super T> g0Var) {
        return new m<>(g0Var);
    }

    static String k0(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return "Unknown(" + i4 + ")";
                }
                return "ASYNC";
            }
            return "SYNC";
        }
        return "NONE";
    }

    final m<T> c0() {
        if (this.f75971m != null) {
            return this;
        }
        throw new AssertionError("Upstream is not fuseable.");
    }

    public final void cancel() {
        dispose();
    }

    final m<T> d0(int i4) {
        int i10 = this.f75942h;
        if (i10 != i4) {
            if (this.f75971m != null) {
                throw new AssertionError("Fusion mode different. Expected: " + k0(i4) + ", actual: " + k0(i10));
            }
            throw T("Upstream is not fuseable");
        }
        return this;
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this.f75970l);
    }

    final m<T> e0() {
        if (this.f75971m == null) {
            return this;
        }
        throw new AssertionError("Upstream is fuseable.");
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: f0 */
    public final m<T> q() {
        if (this.f75970l.get() == null) {
            if (this.f75937c.isEmpty()) {
                return this;
            }
            throw T("Not subscribed but errors found");
        }
        throw T("Subscribed!");
    }

    public final m<T> g0(n7.g<? super m<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // io.reactivex.observers.BaseTestConsumer
    /* renamed from: h0 */
    public final m<T> t() {
        if (this.f75970l.get() != null) {
            return this;
        }
        throw T("Not subscribed!");
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f75970l.get());
    }

    public final boolean l0() {
        return this.f75970l.get() != null;
    }

    public final boolean m0() {
        return isDisposed();
    }

    final m<T> n0(int i4) {
        this.f75941g = i4;
        return this;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f75970l.get() == null) {
                this.f75937c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f75939e = Thread.currentThread();
            this.f75938d++;
            this.f75969k.onComplete();
        } finally {
            this.f75935a.countDown();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f75970l.get() == null) {
                this.f75937c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f75939e = Thread.currentThread();
            if (th == null) {
                this.f75937c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f75937c.add(th);
            }
            this.f75969k.onError(th);
        } finally {
            this.f75935a.countDown();
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (!this.f75940f) {
            this.f75940f = true;
            if (this.f75970l.get() == null) {
                this.f75937c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f75939e = Thread.currentThread();
        if (this.f75942h != 2) {
            this.f75936b.add(t9);
            if (t9 == null) {
                this.f75937c.add(new NullPointerException("onNext received a null value"));
            }
            this.f75969k.onNext(t9);
            return;
        }
        while (true) {
            try {
                T poll = this.f75971m.poll();
                if (poll == null) {
                    return;
                }
                this.f75936b.add(poll);
            } catch (Throwable th) {
                this.f75937c.add(th);
                this.f75971m.dispose();
                return;
            }
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        this.f75939e = Thread.currentThread();
        if (cVar == null) {
            this.f75937c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f75970l.compareAndSet(null, cVar)) {
            cVar.dispose();
            if (this.f75970l.get() != DisposableHelper.DISPOSED) {
                this.f75937c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + cVar));
            }
        } else {
            int i4 = this.f75941g;
            if (i4 != 0 && (cVar instanceof o7.j)) {
                o7.j<T> jVar = (o7.j) cVar;
                this.f75971m = jVar;
                int requestFusion = jVar.requestFusion(i4);
                this.f75942h = requestFusion;
                if (requestFusion == 1) {
                    this.f75940f = true;
                    this.f75939e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f75971m.poll();
                            if (poll != null) {
                                this.f75936b.add(poll);
                            } else {
                                this.f75938d++;
                                this.f75970l.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th) {
                            this.f75937c.add(th);
                            return;
                        }
                    }
                }
            }
            this.f75969k.onSubscribe(cVar);
        }
    }

    @Override // io.reactivex.t
    public void onSuccess(T t9) {
        onNext(t9);
        onComplete();
    }

    public m(g0<? super T> g0Var) {
        this.f75970l = new AtomicReference<>();
        this.f75969k = g0Var;
    }
}
