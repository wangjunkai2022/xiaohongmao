package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSequenceEqualSingle.java */
/* loaded from: classes3.dex */
public final class b3<T> extends io.reactivex.i0<Boolean> implements o7.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f73900a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f73901b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super T, ? super T> f73902c;

    /* renamed from: d  reason: collision with root package name */
    final int f73903d;

    /* compiled from: ObservableSequenceEqualSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f73904j = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f73905a;

        /* renamed from: b  reason: collision with root package name */
        final n7.d<? super T, ? super T> f73906b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayCompositeDisposable f73907c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f73908d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f73909e;

        /* renamed from: f  reason: collision with root package name */
        final b<T>[] f73910f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73911g;

        /* renamed from: h  reason: collision with root package name */
        T f73912h;

        /* renamed from: i  reason: collision with root package name */
        T f73913i;

        a(io.reactivex.l0<? super Boolean> l0Var, int i4, io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar) {
            this.f73905a = l0Var;
            this.f73908d = e0Var;
            this.f73909e = e0Var2;
            this.f73906b = dVar;
            this.f73910f = r3;
            b<T>[] bVarArr = {new b<>(this, 0, i4), new b<>(this, 1, i4)};
            this.f73907c = new ArrayCompositeDisposable(2);
        }

        void a(io.reactivex.internal.queue.b<T> bVar, io.reactivex.internal.queue.b<T> bVar2) {
            this.f73911g = true;
            bVar.clear();
            bVar2.clear();
        }

        void b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T>[] bVarArr = this.f73910f;
            b<T> bVar = bVarArr[0];
            io.reactivex.internal.queue.b<T> bVar2 = bVar.f73915b;
            b<T> bVar3 = bVarArr[1];
            io.reactivex.internal.queue.b<T> bVar4 = bVar3.f73915b;
            int i4 = 1;
            while (!this.f73911g) {
                boolean z9 = bVar.f73917d;
                if (z9 && (th2 = bVar.f73918e) != null) {
                    a(bVar2, bVar4);
                    this.f73905a.onError(th2);
                    return;
                }
                boolean z10 = bVar3.f73917d;
                if (z10 && (th = bVar3.f73918e) != null) {
                    a(bVar2, bVar4);
                    this.f73905a.onError(th);
                    return;
                }
                if (this.f73912h == null) {
                    this.f73912h = bVar2.poll();
                }
                boolean z11 = this.f73912h == null;
                if (this.f73913i == null) {
                    this.f73913i = bVar4.poll();
                }
                T t9 = this.f73913i;
                boolean z12 = t9 == null;
                if (z9 && z10 && z11 && z12) {
                    this.f73905a.onSuccess(Boolean.TRUE);
                    return;
                } else if (z9 && z10 && z11 != z12) {
                    a(bVar2, bVar4);
                    this.f73905a.onSuccess(Boolean.FALSE);
                    return;
                } else {
                    if (!z11 && !z12) {
                        try {
                            if (!this.f73906b.a((T) this.f73912h, t9)) {
                                a(bVar2, bVar4);
                                this.f73905a.onSuccess(Boolean.FALSE);
                                return;
                            }
                            this.f73912h = null;
                            this.f73913i = null;
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            a(bVar2, bVar4);
                            this.f73905a.onError(th3);
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
            return this.f73907c.setResource(i4, cVar);
        }

        void d() {
            b<T>[] bVarArr = this.f73910f;
            this.f73908d.subscribe(bVarArr[0]);
            this.f73909e.subscribe(bVarArr[1]);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f73911g) {
                return;
            }
            this.f73911g = true;
            this.f73907c.dispose();
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f73910f;
                bVarArr[0].f73915b.clear();
                bVarArr[1].f73915b.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73911g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSequenceEqualSingle.java */
    /* loaded from: classes3.dex */
    public static final class b<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f73914a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f73915b;

        /* renamed from: c  reason: collision with root package name */
        final int f73916c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f73917d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f73918e;

        b(a<T> aVar, int i4, int i10) {
            this.f73914a = aVar;
            this.f73916c = i4;
            this.f73915b = new io.reactivex.internal.queue.b<>(i10);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73917d = true;
            this.f73914a.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73918e = th;
            this.f73917d = true;
            this.f73914a.b();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73915b.offer(t9);
            this.f73914a.b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73914a.c(cVar, this.f73916c);
        }
    }

    public b3(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar, int i4) {
        this.f73900a = e0Var;
        this.f73901b = e0Var2;
        this.f73902c = dVar;
        this.f73903d = i4;
    }

    @Override // o7.d
    public io.reactivex.z<Boolean> a() {
        return io.reactivex.plugins.a.R(new a3(this.f73900a, this.f73901b, this.f73902c, this.f73903d));
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super Boolean> l0Var) {
        a aVar = new a(l0Var, this.f73903d, this.f73900a, this.f73901b, this.f73902c);
        l0Var.onSubscribe(aVar);
        aVar.d();
    }
}
