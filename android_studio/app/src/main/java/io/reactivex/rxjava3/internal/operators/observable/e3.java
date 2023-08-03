package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSequenceEqualSingle.java */
/* loaded from: classes4.dex */
public final class e3<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.f<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79383a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79384b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super T, ? super T> f79385c;

    /* renamed from: d  reason: collision with root package name */
    final int f79386d;

    /* compiled from: ObservableSequenceEqualSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79387j = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f79388a;

        /* renamed from: b  reason: collision with root package name */
        final q7.d<? super T, ? super T> f79389b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f79390c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f79391d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f79392e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f79393f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79394g;

        /* renamed from: h  reason: collision with root package name */
        T f79395h;

        /* renamed from: i  reason: collision with root package name */
        T f79396i;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, int bufferSize, io.reactivex.rxjava3.core.l0<? extends T> first, io.reactivex.rxjava3.core.l0<? extends T> second, q7.d<? super T, ? super T> comparer) {
            this.f79388a = actual;
            this.f79391d = first;
            this.f79392e = second;
            this.f79389b = comparer;
            this.f79393f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, bufferSize), new b<>(this, 1, bufferSize)};
            this.f79390c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.rxjava3.internal.queue.b<T> q12, io.reactivex.rxjava3.internal.queue.b<T> q22) {
            this.f79394g = true;
            q12.clear();
            q22.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f79393f;
            b<T> bVar = bVarArr[0];
            io.reactivex.rxjava3.internal.queue.b<T> bVar2 = bVar.f79398b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.rxjava3.internal.queue.b<T> bVar4 = bVar3.f79398b;
            int i4 = 1;
            while (!this.f79394g) {
                boolean z9 = bVar.f79400d;
                if (z9 && (th2 = bVar.f79401e) != null) {
                    a(bVar2, bVar4);
                    this.f79388a.onError(th2);
                    return;
                }
                boolean z10 = bVar3.f79400d;
                if (z10 && (th = bVar3.f79401e) != null) {
                    a(bVar2, bVar4);
                    this.f79388a.onError(th);
                    return;
                }
                if (this.f79395h == null) {
                    this.f79395h = bVar2.poll();
                }
                boolean z11 = this.f79395h == null;
                if (this.f79396i == null) {
                    this.f79396i = bVar4.poll();
                }
                T t9 = this.f79396i;
                boolean z12 = t9 == null;
                if (z9 && z10 && z11 && z12) {
                    this.f79388a.onSuccess(Boolean.TRUE);
                    return;
                } else if (z9 && z10 && z11 != z12) {
                    a(bVar2, bVar4);
                    this.f79388a.onSuccess(Boolean.FALSE);
                    return;
                } else {
                    if (!z11 && !z12) {
                        try {
                            if (!this.f79389b.a((T) this.f79395h, t9)) {
                                a(bVar2, bVar4);
                                this.f79388a.onSuccess(Boolean.FALSE);
                                return;
                            }
                            this.f79395h = null;
                            this.f79396i = null;
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            a(bVar2, bVar4);
                            this.f79388a.onError(th3);
                            return;
                        }
                    }
                    if (z11 || z12) {
                        i4 = addAndGet(-i4);
                        if (i4 == 0) {
                            return;
                        }
                    }
                }
            }
            bVar2.clear();
            bVar4.clear();
        }

        boolean c(io.reactivex.rxjava3.disposables.f d4, int index) {
            return this.f79390c.setResource(index, d4);
        }

        void d() {
            b<T>[] bVarArr = this.f79393f;
            this.f79391d.a(bVarArr[0]);
            this.f79392e.a(bVarArr[1]);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79394g) {
                return;
            }
            this.f79394g = true;
            this.f79390c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f79393f;
                bVarArr[0].f79398b.clear();
                bVarArr[1].f79398b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79394g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSequenceEqualSingle.java */
    /* loaded from: classes4.dex */
    public static final class b<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f79397a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79398b;

        /* renamed from: c  reason: collision with root package name */
        final int f79399c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f79400d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f79401e;

        b(a<T> parent, int index, int bufferSize) {
            this.f79397a = parent;
            this.f79399c = index;
            this.f79398b = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79400d = true;
            this.f79397a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79401e = t9;
            this.f79400d = true;
            this.f79397a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79398b.offer(t9);
            this.f79397a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79397a.c(d4, this.f79399c);
        }
    }

    public e3(io.reactivex.rxjava3.core.l0<? extends T> first, io.reactivex.rxjava3.core.l0<? extends T> second, q7.d<? super T, ? super T> comparer, int bufferSize) {
        this.f79383a = first;
        this.f79384b = second;
        this.f79385c = comparer;
        this.f79386d = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        a aVar = new a(observer, this.f79386d, this.f79383a, this.f79384b, this.f79385c);
        observer.onSubscribe(aVar);
        aVar.d();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<Boolean> a() {
        return io.reactivex.rxjava3.plugins.a.R(new d3(this.f79383a, this.f79384b, this.f79385c, this.f79386d));
    }
}
