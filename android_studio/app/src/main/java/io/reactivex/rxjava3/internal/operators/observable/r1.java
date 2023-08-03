package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableInternalHelper.java */
/* loaded from: classes4.dex */
public final class r1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements q7.s<io.reactivex.rxjava3.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g0<T> f80013a;

        /* renamed from: b  reason: collision with root package name */
        final int f80014b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f80015c;

        a(io.reactivex.rxjava3.core.g0<T> parent, int bufferSize, boolean eagerTruncate) {
            this.f80013a = parent;
            this.f80014b = bufferSize;
            this.f80015c = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.observables.a<T> get() {
            return this.f80013a.Z4(this.f80014b, this.f80015c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class b<T> implements q7.s<io.reactivex.rxjava3.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g0<T> f80016a;

        /* renamed from: b  reason: collision with root package name */
        final int f80017b;

        /* renamed from: c  reason: collision with root package name */
        final long f80018c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f80019d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80020e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f80021f;

        b(io.reactivex.rxjava3.core.g0<T> parent, int bufferSize, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f80016a = parent;
            this.f80017b = bufferSize;
            this.f80018c = time;
            this.f80019d = unit;
            this.f80020e = scheduler;
            this.f80021f = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.observables.a<T> get() {
            return this.f80016a.Y4(this.f80017b, this.f80018c, this.f80019d, this.f80020e, this.f80021f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class c<T, U> implements q7.o<T, io.reactivex.rxjava3.core.l0<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.o<? super T, ? extends Iterable<? extends U>> f80022a;

        c(q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
            this.f80022a = mapper;
        }

        @Override // q7.o
        /* renamed from: a */
        public io.reactivex.rxjava3.core.l0<U> apply(T t9) throws Throwable {
            Iterable<? extends U> apply = this.f80022a.apply(t9);
            Objects.requireNonNull(apply, "The mapper returned a null Iterable");
            return new h1(apply);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class d<U, R, T> implements q7.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.c<? super T, ? super U, ? extends R> f80023a;

        /* renamed from: b  reason: collision with root package name */
        private final T f80024b;

        d(q7.c<? super T, ? super U, ? extends R> combiner, T t9) {
            this.f80023a = combiner;
            this.f80024b = t9;
        }

        @Override // q7.o
        public R apply(U w9) throws Throwable {
            return this.f80023a.apply((T) this.f80024b, w9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class e<T, R, U> implements q7.o<T, io.reactivex.rxjava3.core.l0<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.c<? super T, ? super U, ? extends R> f80025a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80026b;

        e(q7.c<? super T, ? super U, ? extends R> combiner, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper) {
            this.f80025a = combiner;
            this.f80026b = mapper;
        }

        @Override // q7.o
        /* renamed from: a */
        public io.reactivex.rxjava3.core.l0<R> apply(final T t9) throws Throwable {
            io.reactivex.rxjava3.core.l0<? extends U> apply = this.f80026b.apply(t9);
            Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
            return new z1(apply, new d(this.f80025a, t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class f<T, U> implements q7.o<T, io.reactivex.rxjava3.core.l0<T>> {

        /* renamed from: a  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> f80027a;

        f(q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> itemDelay) {
            this.f80027a = itemDelay;
        }

        @Override // q7.o
        /* renamed from: a */
        public io.reactivex.rxjava3.core.l0<T> apply(final T v9) throws Throwable {
            io.reactivex.rxjava3.core.l0<U> apply = this.f80027a.apply(v9);
            Objects.requireNonNull(apply, "The itemDelay returned a null ObservableSource");
            return new q3(apply, 1L).N3(io.reactivex.rxjava3.internal.functions.a.n(v9)).x1(v9);
        }
    }

    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    enum g implements q7.o<Object, Object> {
        INSTANCE;

        @Override // q7.o
        public Object apply(Object t9) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class h<T> implements q7.a {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<T> f80030a;

        h(io.reactivex.rxjava3.core.n0<T> observer) {
            this.f80030a = observer;
        }

        @Override // q7.a
        public void run() {
            this.f80030a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class i<T> implements q7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<T> f80031a;

        i(io.reactivex.rxjava3.core.n0<T> observer) {
            this.f80031a = observer;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(Throwable v9) {
            this.f80031a.onError(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class j<T> implements q7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<T> f80032a;

        j(io.reactivex.rxjava3.core.n0<T> observer) {
            this.f80032a = observer;
        }

        @Override // q7.g
        public void accept(T v9) {
            this.f80032a.onNext(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class k<T> implements q7.s<io.reactivex.rxjava3.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.g0<T> f80033a;

        k(io.reactivex.rxjava3.core.g0<T> parent) {
            this.f80033a = parent;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.observables.a<T> get() {
            return this.f80033a.U4();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class l<T, S> implements q7.c<S, io.reactivex.rxjava3.core.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final q7.b<S, io.reactivex.rxjava3.core.i<T>> f80034a;

        l(q7.b<S, io.reactivex.rxjava3.core.i<T>> consumer) {
            this.f80034a = consumer;
        }

        @Override // q7.c
        /* renamed from: a */
        public S apply(S t12, io.reactivex.rxjava3.core.i<T> t22) throws Throwable {
            this.f80034a.accept(t12, t22);
            return t12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class m<T, S> implements q7.c<S, io.reactivex.rxjava3.core.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final q7.g<io.reactivex.rxjava3.core.i<T>> f80035a;

        m(q7.g<io.reactivex.rxjava3.core.i<T>> consumer) {
            this.f80035a = consumer;
        }

        @Override // q7.c
        /* renamed from: a */
        public S apply(S t12, io.reactivex.rxjava3.core.i<T> t22) throws Throwable {
            this.f80035a.accept(t22);
            return t12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes4.dex */
    public static final class n<T> implements q7.s<io.reactivex.rxjava3.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g0<T> f80036a;

        /* renamed from: b  reason: collision with root package name */
        final long f80037b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f80038c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80039d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f80040e;

        n(io.reactivex.rxjava3.core.g0<T> parent, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f80036a = parent;
            this.f80037b = time;
            this.f80038c = unit;
            this.f80039d = scheduler;
            this.f80040e = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public io.reactivex.rxjava3.observables.a<T> get() {
            return this.f80036a.c5(this.f80037b, this.f80038c, this.f80039d, this.f80040e);
        }
    }

    private r1() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> q7.o<T, io.reactivex.rxjava3.core.l0<U>> a(final q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        return new c(mapper);
    }

    public static <T, U, R> q7.o<T, io.reactivex.rxjava3.core.l0<R>> b(final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, final q7.c<? super T, ? super U, ? extends R> combiner) {
        return new e(combiner, mapper);
    }

    public static <T, U> q7.o<T, io.reactivex.rxjava3.core.l0<T>> c(final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> itemDelay) {
        return new f(itemDelay);
    }

    public static <T> q7.a d(io.reactivex.rxjava3.core.n0<T> observer) {
        return new h(observer);
    }

    public static <T> q7.g<Throwable> e(io.reactivex.rxjava3.core.n0<T> observer) {
        return new i(observer);
    }

    public static <T> q7.g<T> f(io.reactivex.rxjava3.core.n0<T> observer) {
        return new j(observer);
    }

    public static <T> q7.s<io.reactivex.rxjava3.observables.a<T>> g(final io.reactivex.rxjava3.core.g0<T> parent) {
        return new k(parent);
    }

    public static <T> q7.s<io.reactivex.rxjava3.observables.a<T>> h(final io.reactivex.rxjava3.core.g0<T> parent, final int bufferSize, final long time, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return new b(parent, bufferSize, time, unit, scheduler, eagerTruncate);
    }

    public static <T> q7.s<io.reactivex.rxjava3.observables.a<T>> i(final io.reactivex.rxjava3.core.g0<T> parent, final int bufferSize, boolean eagerTruncate) {
        return new a(parent, bufferSize, eagerTruncate);
    }

    public static <T> q7.s<io.reactivex.rxjava3.observables.a<T>> j(final io.reactivex.rxjava3.core.g0<T> parent, final long time, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return new n(parent, time, unit, scheduler, eagerTruncate);
    }

    public static <T, S> q7.c<S, io.reactivex.rxjava3.core.i<T>, S> k(q7.b<S, io.reactivex.rxjava3.core.i<T>> consumer) {
        return new l(consumer);
    }

    public static <T, S> q7.c<S, io.reactivex.rxjava3.core.i<T>, S> l(q7.g<io.reactivex.rxjava3.core.i<T>> consumer) {
        return new m(consumer);
    }
}
