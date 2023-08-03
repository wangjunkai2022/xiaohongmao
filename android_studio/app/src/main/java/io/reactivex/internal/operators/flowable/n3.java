package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.m3;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableSequenceEqualSingle.java */
/* loaded from: classes3.dex */
public final class n3<T> extends io.reactivex.i0<Boolean> implements o7.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72383a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72384b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super T, ? super T> f72385c;

    /* renamed from: d  reason: collision with root package name */
    final int f72386d;

    /* compiled from: FlowableSequenceEqualSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c, m3.b {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72387h = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f72388a;

        /* renamed from: b  reason: collision with root package name */
        final n7.d<? super T, ? super T> f72389b;

        /* renamed from: c  reason: collision with root package name */
        final m3.c<T> f72390c;

        /* renamed from: d  reason: collision with root package name */
        final m3.c<T> f72391d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f72392e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        T f72393f;

        /* renamed from: g  reason: collision with root package name */
        T f72394g;

        a(io.reactivex.l0<? super Boolean> l0Var, int i4, n7.d<? super T, ? super T> dVar) {
            this.f72388a = l0Var;
            this.f72389b = dVar;
            this.f72390c = new m3.c<>(this, i4);
            this.f72391d = new m3.c<>(this, i4);
        }

        @Override // io.reactivex.internal.operators.flowable.m3.b
        public void a(Throwable th) {
            if (this.f72392e.addThrowable(th)) {
                b();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.m3.b
        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                o7.o<T> oVar = this.f72390c.f72288e;
                o7.o<T> oVar2 = this.f72391d.f72288e;
                if (oVar != null && oVar2 != null) {
                    while (!isDisposed()) {
                        if (this.f72392e.get() != null) {
                            c();
                            this.f72388a.onError(this.f72392e.terminate());
                            return;
                        }
                        boolean z9 = this.f72390c.f72289f;
                        T t9 = this.f72393f;
                        if (t9 == null) {
                            try {
                                t9 = oVar.poll();
                                this.f72393f = t9;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                c();
                                this.f72392e.addThrowable(th);
                                this.f72388a.onError(this.f72392e.terminate());
                                return;
                            }
                        }
                        boolean z10 = t9 == null;
                        boolean z11 = this.f72391d.f72289f;
                        T t10 = this.f72394g;
                        if (t10 == null) {
                            try {
                                t10 = oVar2.poll();
                                this.f72394g = t10;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                c();
                                this.f72392e.addThrowable(th2);
                                this.f72388a.onError(this.f72392e.terminate());
                                return;
                            }
                        }
                        boolean z12 = t10 == null;
                        if (z9 && z11 && z10 && z12) {
                            this.f72388a.onSuccess(Boolean.TRUE);
                            return;
                        } else if (z9 && z11 && z10 != z12) {
                            c();
                            this.f72388a.onSuccess(Boolean.FALSE);
                            return;
                        } else if (!z10 && !z12) {
                            try {
                                if (!this.f72389b.a(t9, t10)) {
                                    c();
                                    this.f72388a.onSuccess(Boolean.FALSE);
                                    return;
                                }
                                this.f72393f = null;
                                this.f72394g = null;
                                this.f72390c.c();
                                this.f72391d.c();
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                c();
                                this.f72392e.addThrowable(th3);
                                this.f72388a.onError(this.f72392e.terminate());
                                return;
                            }
                        }
                    }
                    this.f72390c.b();
                    this.f72391d.b();
                    return;
                } else if (isDisposed()) {
                    this.f72390c.b();
                    this.f72391d.b();
                    return;
                } else if (this.f72392e.get() != null) {
                    c();
                    this.f72388a.onError(this.f72392e.terminate());
                    return;
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        void c() {
            this.f72390c.a();
            this.f72390c.b();
            this.f72391d.a();
            this.f72391d.b();
        }

        void d(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
            cVar.i(this.f72390c);
            cVar2.i(this.f72391d);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72390c.a();
            this.f72391d.a();
            if (getAndIncrement() == 0) {
                this.f72390c.b();
                this.f72391d.b();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72390c.get() == SubscriptionHelper.CANCELLED;
        }
    }

    public n3(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, n7.d<? super T, ? super T> dVar, int i4) {
        this.f72383a = cVar;
        this.f72384b = cVar2;
        this.f72385c = dVar;
        this.f72386d = i4;
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super Boolean> l0Var) {
        a aVar = new a(l0Var, this.f72386d, this.f72385c);
        l0Var.onSubscribe(aVar);
        aVar.d(this.f72383a, this.f72384b);
    }

    @Override // o7.b
    public io.reactivex.j<Boolean> c() {
        return io.reactivex.plugins.a.P(new m3(this.f72383a, this.f72384b, this.f72385c, this.f72386d));
    }
}
