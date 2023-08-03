package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSequenceEqual.java */
/* loaded from: classes4.dex */
public final class d3<T> extends io.reactivex.rxjava3.core.g0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79318a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79319b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super T, ? super T> f79320c;

    /* renamed from: d  reason: collision with root package name */
    final int f79321d;

    /* compiled from: ObservableSequenceEqual.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79322j = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Boolean> f79323a;

        /* renamed from: b  reason: collision with root package name */
        final q7.d<? super T, ? super T> f79324b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f79325c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f79326d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f79327e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f79328f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79329g;

        /* renamed from: h  reason: collision with root package name */
        T f79330h;

        /* renamed from: i  reason: collision with root package name */
        T f79331i;

        a(io.reactivex.rxjava3.core.n0<? super Boolean> actual, int bufferSize, io.reactivex.rxjava3.core.l0<? extends T> first, io.reactivex.rxjava3.core.l0<? extends T> second, q7.d<? super T, ? super T> comparer) {
            this.f79323a = actual;
            this.f79326d = first;
            this.f79327e = second;
            this.f79324b = comparer;
            this.f79328f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, bufferSize), new b<>(this, 1, bufferSize)};
            this.f79325c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.rxjava3.internal.queue.b<T> q12, io.reactivex.rxjava3.internal.queue.b<T> q22) {
            this.f79329g = true;
            q12.clear();
            q22.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f79328f;
            b<T> bVar = bVarArr[0];
            io.reactivex.rxjava3.internal.queue.b<T> bVar2 = bVar.f79333b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.rxjava3.internal.queue.b<T> bVar4 = bVar3.f79333b;
            int i4 = 1;
            while (!this.f79329g) {
                boolean z9 = bVar.f79335d;
                if (z9 && (th2 = bVar.f79336e) != null) {
                    a(bVar2, bVar4);
                    this.f79323a.onError(th2);
                    return;
                }
                boolean z10 = bVar3.f79335d;
                if (z10 && (th = bVar3.f79336e) != null) {
                    a(bVar2, bVar4);
                    this.f79323a.onError(th);
                    return;
                }
                if (this.f79330h == null) {
                    this.f79330h = bVar2.poll();
                }
                boolean z11 = this.f79330h == null;
                if (this.f79331i == null) {
                    this.f79331i = bVar4.poll();
                }
                T t9 = this.f79331i;
                boolean z12 = t9 == null;
                if (z9 && z10 && z11 && z12) {
                    this.f79323a.onNext(Boolean.TRUE);
                    this.f79323a.onComplete();
                    return;
                } else if (z9 && z10 && z11 != z12) {
                    a(bVar2, bVar4);
                    this.f79323a.onNext(Boolean.FALSE);
                    this.f79323a.onComplete();
                    return;
                } else {
                    if (!z11 && !z12) {
                        try {
                            if (!this.f79324b.a((T) this.f79330h, t9)) {
                                a(bVar2, bVar4);
                                this.f79323a.onNext(Boolean.FALSE);
                                this.f79323a.onComplete();
                                return;
                            }
                            this.f79330h = null;
                            this.f79331i = null;
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            a(bVar2, bVar4);
                            this.f79323a.onError(th3);
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
            return this.f79325c.setResource(index, d4);
        }

        void d() {
            b<T>[] bVarArr = this.f79328f;
            this.f79326d.a(bVarArr[0]);
            this.f79327e.a(bVarArr[1]);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79329g) {
                return;
            }
            this.f79329g = true;
            this.f79325c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f79328f;
                bVarArr[0].f79333b.clear();
                bVarArr[1].f79333b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79329g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSequenceEqual.java */
    /* loaded from: classes4.dex */
    public static final class b<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f79332a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79333b;

        /* renamed from: c  reason: collision with root package name */
        final int f79334c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f79335d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f79336e;

        b(a<T> parent, int index, int bufferSize) {
            this.f79332a = parent;
            this.f79334c = index;
            this.f79333b = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79335d = true;
            this.f79332a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79336e = t9;
            this.f79335d = true;
            this.f79332a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79333b.offer(t9);
            this.f79332a.b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79332a.c(d4, this.f79334c);
        }
    }

    public d3(io.reactivex.rxjava3.core.l0<? extends T> first, io.reactivex.rxjava3.core.l0<? extends T> second, q7.d<? super T, ? super T> comparer, int bufferSize) {
        this.f79318a = first;
        this.f79319b = second;
        this.f79320c = comparer;
        this.f79321d = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super Boolean> observer) {
        a aVar = new a(observer, this.f79321d, this.f79318a, this.f79319b, this.f79320c);
        observer.onSubscribe(aVar);
        aVar.d();
    }
}
