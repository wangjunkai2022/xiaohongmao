package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public final class FlowableInternalHelper {

    /* loaded from: classes4.dex */
    public enum RequestMax implements q7.g<org.reactivestreams.e> {
        INSTANCE;

        @Override // q7.g
        public void accept(org.reactivestreams.e t9) {
            t9.request(Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class a<T> implements q7.s<io.reactivex.rxjava3.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.m<T> f76785a;

        /* renamed from: b  reason: collision with root package name */
        final int f76786b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f76787c;

        a(io.reactivex.rxjava3.core.m<T> parent, int bufferSize, boolean eagerTruncate) {
            this.f76785a = parent;
            this.f76786b = bufferSize;
            this.f76787c = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.flowables.a<T> get() {
            return this.f76785a.C5(this.f76786b, this.f76787c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b<T> implements q7.s<io.reactivex.rxjava3.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.m<T> f76788a;

        /* renamed from: b  reason: collision with root package name */
        final int f76789b;

        /* renamed from: c  reason: collision with root package name */
        final long f76790c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f76791d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f76792e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f76793f;

        b(io.reactivex.rxjava3.core.m<T> parent, int bufferSize, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f76788a = parent;
            this.f76789b = bufferSize;
            this.f76790c = time;
            this.f76791d = unit;
            this.f76792e = scheduler;
            this.f76793f = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.flowables.a<T> get() {
            return this.f76788a.B5(this.f76789b, this.f76790c, this.f76791d, this.f76792e, this.f76793f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class c<T, U> implements q7.o<T, org.reactivestreams.c<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.o<? super T, ? extends Iterable<? extends U>> f76794a;

        c(q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
            this.f76794a = mapper;
        }

        @Override // q7.o
        /* renamed from: a */
        public org.reactivestreams.c<U> apply(T t9) throws Throwable {
            Iterable<? extends U> apply = this.f76794a.apply(t9);
            Objects.requireNonNull(apply, "The mapper returned a null Iterable");
            return new m1(apply);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class d<U, R, T> implements q7.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.c<? super T, ? super U, ? extends R> f76795a;

        /* renamed from: b  reason: collision with root package name */
        private final T f76796b;

        d(q7.c<? super T, ? super U, ? extends R> combiner, T t9) {
            this.f76795a = combiner;
            this.f76796b = t9;
        }

        @Override // q7.o
        public R apply(U w9) throws Throwable {
            return this.f76795a.apply((T) this.f76796b, w9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class e<T, R, U> implements q7.o<T, org.reactivestreams.c<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.c<? super T, ? super U, ? extends R> f76797a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f76798b;

        e(q7.c<? super T, ? super U, ? extends R> combiner, q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper) {
            this.f76797a = combiner;
            this.f76798b = mapper;
        }

        @Override // q7.o
        /* renamed from: a */
        public org.reactivestreams.c<R> apply(final T t9) throws Throwable {
            org.reactivestreams.c<? extends U> apply = this.f76798b.apply(t9);
            Objects.requireNonNull(apply, "The mapper returned a null Publisher");
            return new f2(apply, new d(this.f76797a, t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class f<T, U> implements q7.o<T, org.reactivestreams.c<T>> {

        /* renamed from: a  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<U>> f76799a;

        f(q7.o<? super T, ? extends org.reactivestreams.c<U>> itemDelay) {
            this.f76799a = itemDelay;
        }

        @Override // q7.o
        /* renamed from: a */
        public org.reactivestreams.c<T> apply(final T v9) throws Throwable {
            org.reactivestreams.c<U> apply = this.f76799a.apply(v9);
            Objects.requireNonNull(apply, "The itemDelay returned a null Publisher");
            return new h4(apply, 1L).Z3(io.reactivex.rxjava3.internal.functions.a.n(v9)).D1(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class g<T> implements q7.s<io.reactivex.rxjava3.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.m<T> f76800a;

        g(io.reactivex.rxjava3.core.m<T> parent) {
            this.f76800a = parent;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.flowables.a<T> get() {
            return this.f76800a.x5();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class h<T, S> implements q7.c<S, io.reactivex.rxjava3.core.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final q7.b<S, io.reactivex.rxjava3.core.i<T>> f76801a;

        h(q7.b<S, io.reactivex.rxjava3.core.i<T>> consumer) {
            this.f76801a = consumer;
        }

        @Override // q7.c
        /* renamed from: a */
        public S apply(S t12, io.reactivex.rxjava3.core.i<T> t22) throws Throwable {
            this.f76801a.accept(t12, t22);
            return t12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class i<T, S> implements q7.c<S, io.reactivex.rxjava3.core.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final q7.g<io.reactivex.rxjava3.core.i<T>> f76802a;

        i(q7.g<io.reactivex.rxjava3.core.i<T>> consumer) {
            this.f76802a = consumer;
        }

        @Override // q7.c
        /* renamed from: a */
        public S apply(S t12, io.reactivex.rxjava3.core.i<T> t22) throws Throwable {
            this.f76802a.accept(t22);
            return t12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class j<T> implements q7.a {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f76803a;

        j(org.reactivestreams.d<T> subscriber) {
            this.f76803a = subscriber;
        }

        @Override // q7.a
        public void run() {
            this.f76803a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class k<T> implements q7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f76804a;

        k(org.reactivestreams.d<T> subscriber) {
            this.f76804a = subscriber;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(Throwable v9) {
            this.f76804a.onError(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class l<T> implements q7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f76805a;

        l(org.reactivestreams.d<T> subscriber) {
            this.f76805a = subscriber;
        }

        @Override // q7.g
        public void accept(T v9) {
            this.f76805a.onNext(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class m<T> implements q7.s<io.reactivex.rxjava3.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.m<T> f76806a;

        /* renamed from: b  reason: collision with root package name */
        private final long f76807b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f76808c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.o0 f76809d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f76810e;

        m(io.reactivex.rxjava3.core.m<T> parent, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f76806a = parent;
            this.f76807b = time;
            this.f76808c = unit;
            this.f76809d = scheduler;
            this.f76810e = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.flowables.a<T> get() {
            return this.f76806a.F5(this.f76807b, this.f76808c, this.f76809d, this.f76810e);
        }
    }

    private FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> q7.o<T, org.reactivestreams.c<U>> a(final q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        return new c(mapper);
    }

    public static <T, U, R> q7.o<T, org.reactivestreams.c<R>> b(final q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, final q7.c<? super T, ? super U, ? extends R> combiner) {
        return new e(combiner, mapper);
    }

    public static <T, U> q7.o<T, org.reactivestreams.c<T>> c(final q7.o<? super T, ? extends org.reactivestreams.c<U>> itemDelay) {
        return new f(itemDelay);
    }

    public static <T> q7.s<io.reactivex.rxjava3.flowables.a<T>> d(final io.reactivex.rxjava3.core.m<T> parent) {
        return new g(parent);
    }

    public static <T> q7.s<io.reactivex.rxjava3.flowables.a<T>> e(final io.reactivex.rxjava3.core.m<T> parent, final int bufferSize, final long time, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return new b(parent, bufferSize, time, unit, scheduler, eagerTruncate);
    }

    public static <T> q7.s<io.reactivex.rxjava3.flowables.a<T>> f(final io.reactivex.rxjava3.core.m<T> parent, final int bufferSize, boolean eagerTruncate) {
        return new a(parent, bufferSize, eagerTruncate);
    }

    public static <T> q7.s<io.reactivex.rxjava3.flowables.a<T>> g(final io.reactivex.rxjava3.core.m<T> parent, final long time, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return new m(parent, time, unit, scheduler, eagerTruncate);
    }

    public static <T, S> q7.c<S, io.reactivex.rxjava3.core.i<T>, S> h(q7.b<S, io.reactivex.rxjava3.core.i<T>> consumer) {
        return new h(consumer);
    }

    public static <T, S> q7.c<S, io.reactivex.rxjava3.core.i<T>, S> i(q7.g<io.reactivex.rxjava3.core.i<T>> consumer) {
        return new i(consumer);
    }

    public static <T> q7.a j(org.reactivestreams.d<T> subscriber) {
        return new j(subscriber);
    }

    public static <T> q7.g<Throwable> k(org.reactivestreams.d<T> subscriber) {
        return new k(subscriber);
    }

    public static <T> q7.g<T> l(org.reactivestreams.d<T> subscriber) {
        return new l(subscriber);
    }
}
