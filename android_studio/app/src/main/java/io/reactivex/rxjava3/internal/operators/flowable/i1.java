package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableFromArray.java */
/* loaded from: classes4.dex */
public final class i1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final T[] f77325b;

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77326g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f77327f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, T[] array) {
            super(array);
            this.f77327f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.i1.c
        void a() {
            T[] tArr = this.f77331b;
            int length = tArr.length;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77327f;
            for (int i4 = this.f77332c; i4 != length; i4++) {
                if (this.f77333d) {
                    return;
                }
                T t9 = tArr[i4];
                if (t9 == null) {
                    cVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                cVar.h(t9);
            }
            if (this.f77333d) {
                return;
            }
            cVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.i1.c
        void b(long r9) {
            T[] tArr = this.f77331b;
            int length = tArr.length;
            int i4 = this.f77332c;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77327f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == r9 || i4 == length) {
                        if (i4 == length) {
                            if (this.f77333d) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j4 == r9) {
                            this.f77332c = i4;
                            r9 = addAndGet(-j4);
                        }
                    } else if (this.f77333d) {
                        return;
                    } else {
                        T t9 = tArr[i4];
                        if (t9 == null) {
                            cVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                            return;
                        }
                        if (cVar.h(t9)) {
                            j4++;
                        }
                        i4++;
                    }
                }
            } while (r9 != 0);
        }
    }

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77328g = 2587302975077663557L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77329f;

        b(org.reactivestreams.d<? super T> actual, T[] array) {
            super(array);
            this.f77329f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.i1.c
        void a() {
            T[] tArr = this.f77331b;
            int length = tArr.length;
            org.reactivestreams.d<? super T> dVar = this.f77329f;
            for (int i4 = this.f77332c; i4 != length; i4++) {
                if (this.f77333d) {
                    return;
                }
                T t9 = tArr[i4];
                if (t9 == null) {
                    dVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                dVar.onNext(t9);
            }
            if (this.f77333d) {
                return;
            }
            dVar.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.i1.c
        void b(long r9) {
            T[] tArr = this.f77331b;
            int length = tArr.length;
            int i4 = this.f77332c;
            org.reactivestreams.d<? super T> dVar = this.f77329f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == r9 || i4 == length) {
                        if (i4 == length) {
                            if (this.f77333d) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                        r9 = get();
                        if (j4 == r9) {
                            this.f77332c = i4;
                            r9 = addAndGet(-j4);
                        }
                    } else if (this.f77333d) {
                        return;
                    } else {
                        T t9 = tArr[i4];
                        if (t9 == null) {
                            dVar.onError(new NullPointerException("The element at index " + i4 + " is null"));
                            return;
                        }
                        dVar.onNext(t9);
                        j4++;
                        i4++;
                    }
                }
            } while (r9 != 0);
        }
    }

    /* compiled from: FlowableFromArray.java */
    /* loaded from: classes4.dex */
    static abstract class c<T> extends BasicQueueSubscription<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77330e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        final T[] f77331b;

        /* renamed from: c  reason: collision with root package name */
        int f77332c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f77333d;

        c(T[] array) {
            this.f77331b = array;
        }

        abstract void a();

        abstract void b(long r9);

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f77333d = true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final void clear() {
            this.f77332c = this.f77331b.length;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final boolean isEmpty() {
            return this.f77332c == this.f77331b.length;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public final T poll() {
            int i4 = this.f77332c;
            T[] tArr = this.f77331b;
            if (i4 == tArr.length) {
                return null;
            }
            this.f77332c = i4 + 1;
            T t9 = tArr[i4];
            Objects.requireNonNull(t9, "array element is null");
            return t9;
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9) && io.reactivex.rxjava3.internal.util.b.a(this, n9) == 0) {
                if (n9 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(n9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public final int requestFusion(int mode) {
            return mode & 1;
        }
    }

    public i1(T[] array) {
        this.f77325b = array;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            s9.onSubscribe(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77325b));
        } else {
            s9.onSubscribe(new b(s9, this.f77325b));
        }
    }
}
