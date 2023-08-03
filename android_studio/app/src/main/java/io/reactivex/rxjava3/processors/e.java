package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PublishProcessor.java */
/* loaded from: classes4.dex */
public final class e<T> extends c<T> {

    /* renamed from: d  reason: collision with root package name */
    static final a[] f81454d = new a[0];

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81455e = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81456b = new AtomicReference<>(f81455e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f81457c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublishProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81458c = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f81459a;

        /* renamed from: b  reason: collision with root package name */
        final e<T> f81460b;

        a(org.reactivestreams.d<? super T> actual, e<T> parent) {
            this.f81459a = actual;
            this.f81460b = parent;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        boolean b() {
            return get() == 0;
        }

        public void c() {
            if (get() != Long.MIN_VALUE) {
                this.f81459a.onComplete();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f81460b.o9(this);
            }
        }

        public void d(Throwable t9) {
            if (get() != Long.MIN_VALUE) {
                this.f81459a.onError(t9);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            }
        }

        public void e(T t9) {
            long j4 = get();
            if (j4 == Long.MIN_VALUE) {
                return;
            }
            if (j4 != 0) {
                this.f81459a.onNext(t9);
                io.reactivex.rxjava3.internal.util.b.f(this, 1L);
                return;
            }
            cancel();
            this.f81459a.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.b(this, n9);
            }
        }
    }

    e() {
    }

    @p7.c
    @p7.e
    public static <T> e<T> m9() {
        return new e<>();
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super T> t9) {
        a<T> aVar = new a<>(t9, this);
        t9.onSubscribe(aVar);
        if (l9(aVar)) {
            if (aVar.a()) {
                o9(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81457c;
        if (th != null) {
            t9.onError(th);
        } else {
            t9.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    @p7.f
    public Throwable g9() {
        if (this.f81456b.get() == f81454d) {
            return this.f81457c;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        return this.f81456b.get() == f81454d && this.f81457c == null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81456b.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        return this.f81456b.get() == f81454d && this.f81457c != null;
    }

    boolean l9(a<T> ps) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81456b.get();
            if (aVarArr == f81454d) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = ps;
        } while (!this.f81456b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.c
    public boolean n9(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "offer called with a null value.");
        a<T>[] aVarArr = this.f81456b.get();
        for (a<T> aVar : aVarArr) {
            if (aVar.b()) {
                return false;
            }
        }
        for (a<T> aVar2 : aVarArr) {
            aVar2.e(t9);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void o9(a<T> ps) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81456b.get();
            if (aVarArr == f81454d || aVarArr == f81455e) {
                return;
            }
            int length = aVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == ps) {
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
                aVarArr2 = f81455e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81456b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        a<T>[] aVarArr = this.f81456b.get();
        a<T>[] aVarArr2 = f81454d;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f81456b.getAndSet(aVarArr2)) {
            aVar.c();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(@p7.e Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        a<T>[] aVarArr = this.f81456b.get();
        a<T>[] aVarArr2 = f81454d;
        if (aVarArr == aVarArr2) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81457c = t9;
        for (a<T> aVar : this.f81456b.getAndSet(aVarArr2)) {
            aVar.d(t9);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        for (a<T> aVar : this.f81456b.get()) {
            aVar.e(t9);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (this.f81456b.get() == f81454d) {
            s9.cancel();
        } else {
            s9.request(Long.MAX_VALUE);
        }
    }
}
