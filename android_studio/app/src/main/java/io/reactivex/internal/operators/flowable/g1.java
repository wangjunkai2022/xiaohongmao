package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableFromArray.java */
/* loaded from: classes3.dex */
public final class g1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final T[] f71935b;

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71936g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final o7.a<? super T> f71937f;

        a(o7.a<? super T> aVar, T[] tArr) {
            super(tArr);
            this.f71937f = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.g1.c
        void a() {
            T[] tArr = this.f71941b;
            int length = tArr.length;
            o7.a<? super T> aVar = this.f71937f;
            for (int i4 = this.f71942c; i4 != length; i4++) {
                if (this.f71943d) {
                    return;
                }
                T t9 = tArr[i4];
                if (t9 == null) {
                    aVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                aVar.h(t9);
            }
            if (this.f71943d) {
                return;
            }
            aVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.g1.c
        void b(long j4) {
            T[] tArr = this.f71941b;
            int length = tArr.length;
            int i4 = this.f71942c;
            o7.a<? super T> aVar = this.f71937f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == j4 || i4 == length) {
                        if (i4 == length) {
                            if (this.f71943d) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j10 == j4) {
                            this.f71942c = i4;
                            j4 = addAndGet(-j10);
                        }
                    } else if (this.f71943d) {
                        return;
                    } else {
                        T t9 = tArr[i4];
                        if (t9 == null) {
                            aVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                            return;
                        }
                        if (aVar.h(t9)) {
                            j10++;
                        }
                        i4++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71938g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71939f;

        b(org.reactivestreams.d<? super T> dVar, T[] tArr) {
            super(tArr);
            this.f71939f = dVar;
        }

        @Override // io.reactivex.internal.operators.flowable.g1.c
        void a() {
            T[] tArr = this.f71941b;
            int length = tArr.length;
            org.reactivestreams.d<? super T> dVar = this.f71939f;
            for (int i4 = this.f71942c; i4 != length; i4++) {
                if (this.f71943d) {
                    return;
                }
                T t9 = tArr[i4];
                if (t9 == null) {
                    dVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                dVar.onNext(t9);
            }
            if (this.f71943d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.g1.c
        void b(long j4) {
            T[] tArr = this.f71941b;
            int length = tArr.length;
            int i4 = this.f71942c;
            org.reactivestreams.d<? super T> dVar = this.f71939f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == j4 || i4 == length) {
                        if (i4 == length) {
                            if (this.f71943d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        j4 = get();
                        if (j10 == j4) {
                            this.f71942c = i4;
                            j4 = addAndGet(-j10);
                        }
                    } else if (this.f71943d) {
                        return;
                    } else {
                        T t9 = tArr[i4];
                        if (t9 == null) {
                            dVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                            return;
                        }
                        dVar.onNext(t9);
                        j10++;
                        i4++;
                    }
                }
            } while (j4 != 0);
        }
    }

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes3.dex */
    static abstract class c<T> extends BasicQueueSubscription<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71940e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final T[] f71941b;

        /* renamed from: c  reason: collision with root package name */
        int f71942c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f71943d;

        c(T[] tArr) {
            this.f71941b = tArr;
        }

        abstract void a();

        abstract void b(long j4);

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f71943d = true;
        }

        @Override // o7.o
        public final void clear() {
            this.f71942c = this.f71941b.length;
        }

        @Override // o7.o
        public final boolean isEmpty() {
            return this.f71942c == this.f71941b.length;
        }

        @Override // o7.o
        @m7.f
        public final T poll() {
            int i4 = this.f71942c;
            T[] tArr = this.f71941b;
            if (i4 == tArr.length) {
                return null;
            }
            this.f71942c = i4 + 1;
            return (T) io.reactivex.internal.functions.b.g(tArr[i4], "array element is null");
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                if (j4 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j4);
                }
            }
        }

        @Override // o7.k
        public final int requestFusion(int i4) {
            return i4 & 1;
        }
    }

    public g1(T[] tArr) {
        this.f71935b = tArr;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            dVar.onSubscribe(new a((o7.a) dVar, this.f71935b));
        } else {
            dVar.onSubscribe(new b(dVar, this.f71935b));
        }
    }
}
