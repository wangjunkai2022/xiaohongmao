package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PublishProcessor.java */
/* loaded from: classes4.dex */
public final class e<T> extends c<T> {

    /* renamed from: d  reason: collision with root package name */
    static final a[] f76045d = new a[0];

    /* renamed from: e  reason: collision with root package name */
    static final a[] f76046e = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f76047b = new AtomicReference<>(f76046e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f76048c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublishProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: c  reason: collision with root package name */
        private static final long f76049c = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76050a;

        /* renamed from: b  reason: collision with root package name */
        final e<T> f76051b;

        a(org.reactivestreams.d<? super T> dVar, e<T> eVar) {
            this.f76050a = dVar;
            this.f76051b = eVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        boolean b() {
            return get() == 0;
        }

        public void c() {
            if (get() != Long.MIN_VALUE) {
                this.f76050a.onComplete();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f76051b.U8(this);
            }
        }

        public void d(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f76050a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        public void e(T t9) {
            long j4 = get();
            if (j4 == Long.MIN_VALUE) {
                return;
            }
            if (j4 != 0) {
                this.f76050a.onNext(t9);
                io.reactivex.internal.util.b.f(this, 1L);
                return;
            }
            cancel();
            this.f76050a.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
            }
        }
    }

    e() {
    }

    @m7.e
    @m7.c
    public static <T> e<T> S8() {
        return new e<>();
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        if (this.f76047b.get() == f76045d) {
            return this.f76048c;
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return this.f76047b.get() == f76045d && this.f76048c == null;
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76047b.get().length != 0;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return this.f76047b.get() == f76045d && this.f76048c != null;
    }

    boolean R8(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f76047b.get();
            if (aVarArr == f76045d) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f76047b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    public boolean T8(T t9) {
        if (t9 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        a<T>[] aVarArr = this.f76047b.get();
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
    void U8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f76047b.get();
            if (aVarArr == f76045d || aVarArr == f76046e) {
                return;
            }
            int length = aVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == aVar) {
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
                aVarArr2 = f76046e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f76047b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a<T> aVar = new a<>(dVar, this);
        dVar.onSubscribe(aVar);
        if (R8(aVar)) {
            if (aVar.a()) {
                U8(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f76048c;
        if (th != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        a<T>[] aVarArr = this.f76047b.get();
        a<T>[] aVarArr2 = f76045d;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f76047b.getAndSet(aVarArr2)) {
            aVar.c();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.f76047b.get();
        a<T>[] aVarArr2 = f76045d;
        if (aVarArr == aVarArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f76048c = th;
        for (a<T> aVar : this.f76047b.getAndSet(aVarArr2)) {
            aVar.d(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.f76047b.get()) {
            aVar.e(t9);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (this.f76047b.get() == f76045d) {
            eVar.cancel();
        } else {
            eVar.request(Long.MAX_VALUE);
        }
    }
}
