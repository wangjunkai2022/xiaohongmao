package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AsyncProcessor.java */
/* loaded from: classes4.dex */
public final class a<T> extends c<T> {

    /* renamed from: e  reason: collision with root package name */
    static final C0696a[] f81411e = new C0696a[0];

    /* renamed from: f  reason: collision with root package name */
    static final C0696a[] f81412f = new C0696a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<C0696a<T>[]> f81413b = new AtomicReference<>(f81411e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f81414c;

    /* renamed from: d  reason: collision with root package name */
    T f81415d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncProcessor.java */
    /* renamed from: io.reactivex.rxjava3.processors.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0696a<T> extends DeferredScalarSubscription<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f81416n = 5629876084736248016L;

        /* renamed from: m  reason: collision with root package name */
        final a<T> f81417m;

        C0696a(org.reactivestreams.d<? super T> actual, a<T> parent) {
            super(actual);
            this.f81417m = parent;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            if (super.tryCancel()) {
                this.f81417m.p9(this);
            }
        }

        void onComplete() {
            if (isCancelled()) {
                return;
            }
            this.f81291b.onComplete();
        }

        void onError(Throwable t9) {
            if (isCancelled()) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81291b.onError(t9);
            }
        }
    }

    a() {
    }

    @p7.c
    @p7.e
    public static <T> a<T> m9() {
        return new a<>();
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super T> s9) {
        C0696a<T> c0696a = new C0696a<>(s9, this);
        s9.onSubscribe(c0696a);
        if (l9(c0696a)) {
            if (c0696a.isCancelled()) {
                p9(c0696a);
                return;
            }
            return;
        }
        Throwable th = this.f81414c;
        if (th != null) {
            s9.onError(th);
            return;
        }
        T t9 = this.f81415d;
        if (t9 != null) {
            c0696a.complete(t9);
        } else {
            c0696a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    @p7.f
    public Throwable g9() {
        if (this.f81413b.get() == f81412f) {
            return this.f81414c;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        return this.f81413b.get() == f81412f && this.f81414c == null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81413b.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        return this.f81413b.get() == f81412f && this.f81414c != null;
    }

    boolean l9(C0696a<T> ps) {
        C0696a<T>[] c0696aArr;
        C0696a<T>[] c0696aArr2;
        do {
            c0696aArr = this.f81413b.get();
            if (c0696aArr == f81412f) {
                return false;
            }
            int length = c0696aArr.length;
            c0696aArr2 = new C0696a[length + 1];
            System.arraycopy(c0696aArr, 0, c0696aArr2, 0, length);
            c0696aArr2[length] = ps;
        } while (!this.f81413b.compareAndSet(c0696aArr, c0696aArr2));
        return true;
    }

    @p7.c
    @p7.f
    public T n9() {
        if (this.f81413b.get() == f81412f) {
            return this.f81415d;
        }
        return null;
    }

    @p7.c
    public boolean o9() {
        return this.f81413b.get() == f81412f && this.f81415d != null;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        C0696a<T>[] c0696aArr = this.f81413b.get();
        C0696a<T>[] c0696aArr2 = f81412f;
        if (c0696aArr == c0696aArr2) {
            return;
        }
        T t9 = this.f81415d;
        C0696a<T>[] andSet = this.f81413b.getAndSet(c0696aArr2);
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
    public void onError(@p7.e Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        C0696a<T>[] c0696aArr = this.f81413b.get();
        C0696a<T>[] c0696aArr2 = f81412f;
        if (c0696aArr == c0696aArr2) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81415d = null;
        this.f81414c = t9;
        for (C0696a<T> c0696a : this.f81413b.getAndSet(c0696aArr2)) {
            c0696a.onError(t9);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81413b.get() == f81412f) {
            return;
        }
        this.f81415d = t9;
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (this.f81413b.get() == f81412f) {
            s9.cancel();
        } else {
            s9.request(Long.MAX_VALUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void p9(C0696a<T> ps) {
        C0696a<T>[] c0696aArr;
        C0696a[] c0696aArr2;
        do {
            c0696aArr = this.f81413b.get();
            int length = c0696aArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (c0696aArr[i10] == ps) {
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
                c0696aArr2 = f81411e;
            } else {
                C0696a[] c0696aArr3 = new C0696a[length - 1];
                System.arraycopy(c0696aArr, 0, c0696aArr3, 0, i4);
                System.arraycopy(c0696aArr, i4 + 1, c0696aArr3, i4, (length - i4) - 1);
                c0696aArr2 = c0696aArr3;
            }
        } while (!this.f81413b.compareAndSet(c0696aArr, c0696aArr2));
    }
}
