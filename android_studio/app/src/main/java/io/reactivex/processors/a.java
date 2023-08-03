package io.reactivex.processors;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AsyncProcessor.java */
/* loaded from: classes4.dex */
public final class a<T> extends c<T> {

    /* renamed from: e  reason: collision with root package name */
    static final C0615a[] f76001e = new C0615a[0];

    /* renamed from: f  reason: collision with root package name */
    static final C0615a[] f76002f = new C0615a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<C0615a<T>[]> f76003b = new AtomicReference<>(f76001e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f76004c;

    /* renamed from: d  reason: collision with root package name */
    T f76005d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncProcessor.java */
    /* renamed from: io.reactivex.processors.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0615a<T> extends DeferredScalarSubscription<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f76006n = 5629876084736248016L;

        /* renamed from: m  reason: collision with root package name */
        final a<T> f76007m;

        C0615a(org.reactivestreams.d<? super T> dVar, a<T> aVar) {
            super(dVar);
            this.f76007m = aVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            if (super.tryCancel()) {
                this.f76007m.X8(this);
            }
        }

        void onComplete() {
            if (isCancelled()) {
                return;
            }
            this.f75876b.onComplete();
        }

        void onError(Throwable th) {
            if (isCancelled()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f75876b.onError(th);
            }
        }
    }

    a() {
    }

    @m7.e
    @m7.c
    public static <T> a<T> S8() {
        return new a<>();
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        if (this.f76003b.get() == f76002f) {
            return this.f76004c;
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return this.f76003b.get() == f76002f && this.f76004c == null;
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76003b.get().length != 0;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return this.f76003b.get() == f76002f && this.f76004c != null;
    }

    boolean R8(C0615a<T> c0615a) {
        C0615a<T>[] c0615aArr;
        C0615a<T>[] c0615aArr2;
        do {
            c0615aArr = this.f76003b.get();
            if (c0615aArr == f76002f) {
                return false;
            }
            int length = c0615aArr.length;
            c0615aArr2 = new C0615a[length + 1];
            System.arraycopy(c0615aArr, 0, c0615aArr2, 0, length);
            c0615aArr2[length] = c0615a;
        } while (!this.f76003b.compareAndSet(c0615aArr, c0615aArr2));
        return true;
    }

    @m7.f
    public T T8() {
        if (this.f76003b.get() == f76002f) {
            return this.f76005d;
        }
        return null;
    }

    @Deprecated
    public Object[] U8() {
        T T8 = T8();
        return T8 != null ? new Object[]{T8} : new Object[0];
    }

    @Deprecated
    public T[] V8(T[] tArr) {
        T T8 = T8();
        if (T8 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = T8;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean W8() {
        return this.f76003b.get() == f76002f && this.f76005d != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void X8(C0615a<T> c0615a) {
        C0615a<T>[] c0615aArr;
        C0615a[] c0615aArr2;
        do {
            c0615aArr = this.f76003b.get();
            int length = c0615aArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (c0615aArr[i10] == c0615a) {
                    i4 = i10;
                    break;
                } else {
                    i10++;
                }
            }
            if (i4 < 0) {
                return;
            }
            if (length == 1) {
                c0615aArr2 = f76001e;
            } else {
                C0615a[] c0615aArr3 = new C0615a[length - 1];
                System.arraycopy(c0615aArr, 0, c0615aArr3, 0, i4);
                System.arraycopy(c0615aArr, i4 + 1, c0615aArr3, i4, (length - i4) - 1);
                c0615aArr2 = c0615aArr3;
            }
        } while (!this.f76003b.compareAndSet(c0615aArr, c0615aArr2));
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        C0615a<T> c0615a = new C0615a<>(dVar, this);
        dVar.onSubscribe(c0615a);
        if (R8(c0615a)) {
            if (c0615a.isCancelled()) {
                X8(c0615a);
                return;
            }
            return;
        }
        Throwable th = this.f76004c;
        if (th != null) {
            dVar.onError(th);
            return;
        }
        T t9 = this.f76005d;
        if (t9 != null) {
            c0615a.complete(t9);
        } else {
            c0615a.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        C0615a<T>[] c0615aArr = this.f76003b.get();
        C0615a<T>[] c0615aArr2 = f76002f;
        if (c0615aArr == c0615aArr2) {
            return;
        }
        T t9 = this.f76005d;
        C0615a<T>[] andSet = this.f76003b.getAndSet(c0615aArr2);
        int i4 = 0;
        if (t9 == null) {
            int length = andSet.length;
            while (i4 < length) {
                andSet[i4].onComplete();
                i4++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i4 < length2) {
            andSet[i4].complete(t9);
            i4++;
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0615a<T>[] c0615aArr = this.f76003b.get();
        C0615a<T>[] c0615aArr2 = f76002f;
        if (c0615aArr == c0615aArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f76005d = null;
        this.f76004c = th;
        for (C0615a<T> c0615a : this.f76003b.getAndSet(c0615aArr2)) {
            c0615a.onError(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76003b.get() == f76002f) {
            return;
        }
        this.f76005d = t9;
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (this.f76003b.get() == f76002f) {
            eVar.cancel();
        } else {
            eVar.request(Long.MAX_VALUE);
        }
    }
}
