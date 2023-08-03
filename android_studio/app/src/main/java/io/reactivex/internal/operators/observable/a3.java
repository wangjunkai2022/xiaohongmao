package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSequenceEqual.java */
/* loaded from: classes3.dex */
public final class a3<T> extends io.reactivex.z<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f73860a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f73861b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super T, ? super T> f73862c;

    /* renamed from: d  reason: collision with root package name */
    final int f73863d;

    /* compiled from: ObservableSequenceEqual.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f73864j = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Boolean> f73865a;

        /* renamed from: b  reason: collision with root package name */
        final n7.d<? super T, ? super T> f73866b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f73867c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f73868d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f73869e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f73870f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73871g;

        /* renamed from: h  reason: collision with root package name */
        T f73872h;

        /* renamed from: i  reason: collision with root package name */
        T f73873i;

        a(io.reactivex.g0<? super Boolean> g0Var, int i4, io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar) {
            this.f73865a = g0Var;
            this.f73868d = e0Var;
            this.f73869e = e0Var2;
            this.f73866b = dVar;
            this.f73870f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i4), new b<>(this, 1, i4)};
            this.f73867c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.b<T> bVar, io.reactivex.internal.queue.b<T> bVar2) {
            this.f73871g = true;
            bVar.clear();
            bVar2.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f73870f;
            b<T> bVar = bVarArr[0];
            io.reactivex.internal.queue.b<T> bVar2 = bVar.f73875b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.internal.queue.b<T> bVar4 = bVar3.f73875b;
            int i4 = 1;
            while (!this.f73871g) {
                boolean z9 = bVar.f73877d;
                if (z9 && (th2 = bVar.f73878e) != null) {
                    a(bVar2, bVar4);
                    this.f73865a.onError(th2);
                    return;
                }
                boolean z10 = bVar3.f73877d;
                if (z10 && (th = bVar3.f73878e) != null) {
                    a(bVar2, bVar4);
                    this.f73865a.onError(th);
                    return;
                }
                if (this.f73872h == null) {
                    this.f73872h = bVar2.poll();
                }
                boolean z11 = this.f73872h == null;
                if (this.f73873i == null) {
                    this.f73873i = bVar4.poll();
                }
                T t9 = this.f73873i;
                boolean z12 = t9 == null;
                if (z9 && z10 && z11 && z12) {
                    this.f73865a.onNext(Boolean.TRUE);
                    this.f73865a.onComplete();
                    return;
                } else if (z9 && z10 && z11 != z12) {
                    a(bVar2, bVar4);
                    this.f73865a.onNext(Boolean.FALSE);
                    this.f73865a.onComplete();
                    return;
                } else {
                    if (!z11 && !z12) {
                        try {
                            if (!this.f73866b.a((T) this.f73872h, t9)) {
                                a(bVar2, bVar4);
                                this.f73865a.onNext(Boolean.FALSE);
                                this.f73865a.onComplete();
                                return;
                            }
                            this.f73872h = null;
                            this.f73873i = null;
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            a(bVar2, bVar4);
                            this.f73865a.onError(th3);
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

        boolean c(io.reactivex.disposables.c cVar, int i4) {
            return this.f73867c.setResource(i4, cVar);
        }

        void d() {
            b<T>[] bVarArr = this.f73870f;
            this.f73868d.subscribe(bVarArr[0]);
            this.f73869e.subscribe(bVarArr[1]);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f73871g) {
                return;
            }
            this.f73871g = true;
            this.f73867c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f73870f;
                bVarArr[0].f73875b.clear();
                bVarArr[1].f73875b.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73871g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSequenceEqual.java */
    /* loaded from: classes3.dex */
    public static final class b<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f73874a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f73875b;

        /* renamed from: c  reason: collision with root package name */
        final int f73876c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f73877d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f73878e;

        b(a<T> aVar, int i4, int i10) {
            this.f73874a = aVar;
            this.f73876c = i4;
            this.f73875b = new io.reactivex.internal.queue.b<>(i10);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73877d = true;
            this.f73874a.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73878e = th;
            this.f73877d = true;
            this.f73874a.b();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73875b.offer(t9);
            this.f73874a.b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73874a.c(cVar, this.f73876c);
        }
    }

    public a3(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar, int i4) {
        this.f73860a = e0Var;
        this.f73861b = e0Var2;
        this.f73862c = dVar;
        this.f73863d = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super Boolean> g0Var) {
        a aVar = new a(g0Var, this.f73863d, this.f73860a, this.f73861b, this.f73862c);
        g0Var.onSubscribe(aVar);
        aVar.d();
    }
}
