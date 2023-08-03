package io.reactivex.internal.operators.observable;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableInternalHelper.java */
/* loaded from: classes3.dex */
public final class n1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class a<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f74482a;

        /* renamed from: b  reason: collision with root package name */
        private final int f74483b;

        a(io.reactivex.z<T> zVar, int i4) {
            this.f74482a = zVar;
            this.f74483b = i4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.observables.a<T> call() {
            return this.f74482a.replay(this.f74483b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class b<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f74484a;

        /* renamed from: b  reason: collision with root package name */
        private final int f74485b;

        /* renamed from: c  reason: collision with root package name */
        private final long f74486c;

        /* renamed from: d  reason: collision with root package name */
        private final TimeUnit f74487d;

        /* renamed from: e  reason: collision with root package name */
        private final io.reactivex.h0 f74488e;

        b(io.reactivex.z<T> zVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74484a = zVar;
            this.f74485b = i4;
            this.f74486c = j4;
            this.f74487d = timeUnit;
            this.f74488e = h0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.observables.a<T> call() {
            return this.f74484a.replay(this.f74485b, this.f74486c, this.f74487d, this.f74488e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class c<T, U> implements n7.o<T, io.reactivex.e0<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super T, ? extends Iterable<? extends U>> f74489a;

        c(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f74489a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.e0<U> apply(T t9) throws Exception {
            return new f1((Iterable) io.reactivex.internal.functions.b.g(this.f74489a.apply(t9), "The mapper returned a null Iterable"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class d<U, R, T> implements n7.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.c<? super T, ? super U, ? extends R> f74490a;

        /* renamed from: b  reason: collision with root package name */
        private final T f74491b;

        d(n7.c<? super T, ? super U, ? extends R> cVar, T t9) {
            this.f74490a = cVar;
            this.f74491b = t9;
        }

        @Override // n7.o
        public R apply(U u9) throws Exception {
            return this.f74490a.apply((T) this.f74491b, u9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class e<T, R, U> implements n7.o<T, io.reactivex.e0<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.c<? super T, ? super U, ? extends R> f74492a;

        /* renamed from: b  reason: collision with root package name */
        private final n7.o<? super T, ? extends io.reactivex.e0<? extends U>> f74493b;

        e(n7.c<? super T, ? super U, ? extends R> cVar, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar) {
            this.f74492a = cVar;
            this.f74493b = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.e0<R> apply(T t9) throws Exception {
            return new v1((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74493b.apply(t9), "The mapper returned a null ObservableSource"), new d(this.f74492a, t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class f<T, U> implements n7.o<T, io.reactivex.e0<T>> {

        /* renamed from: a  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<U>> f74494a;

        f(n7.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
            this.f74494a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.e0<T> apply(T t9) throws Exception {
            return new n3((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74494a.apply(t9), "The itemDelay returned a null ObservableSource"), 1L).map(io.reactivex.internal.functions.a.n(t9)).defaultIfEmpty(t9);
        }
    }

    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    enum g implements n7.o<Object, Object> {
        INSTANCE;

        @Override // n7.o
        public Object apply(Object obj) throws Exception {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class h<T> implements n7.a {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f74497a;

        h(io.reactivex.g0<T> g0Var) {
            this.f74497a = g0Var;
        }

        @Override // n7.a
        public void run() throws Exception {
            this.f74497a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class i<T> implements n7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f74498a;

        i(io.reactivex.g0<T> g0Var) {
            this.f74498a = g0Var;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f74498a.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class j<T> implements n7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f74499a;

        j(io.reactivex.g0<T> g0Var) {
            this.f74499a = g0Var;
        }

        @Override // n7.g
        public void accept(T t9) throws Exception {
            this.f74499a.onNext(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class k<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f74500a;

        k(io.reactivex.z<T> zVar) {
            this.f74500a = zVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.observables.a<T> call() {
            return this.f74500a.replay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class l<T, R> implements n7.o<io.reactivex.z<T>, io.reactivex.e0<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> f74501a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.h0 f74502b;

        l(n7.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar, io.reactivex.h0 h0Var) {
            this.f74501a = oVar;
            this.f74502b = h0Var;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.e0<R> apply(io.reactivex.z<T> zVar) throws Exception {
            return io.reactivex.z.wrap((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74501a.apply(zVar), "The selector returned a null ObservableSource")).observeOn(this.f74502b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class m<T, S> implements n7.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final n7.b<S, io.reactivex.i<T>> f74503a;

        m(n7.b<S, io.reactivex.i<T>> bVar) {
            this.f74503a = bVar;
        }

        @Override // n7.c
        /* renamed from: a */
        public S apply(S s9, io.reactivex.i<T> iVar) throws Exception {
            this.f74503a.accept(s9, iVar);
            return s9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class n<T, S> implements n7.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final n7.g<io.reactivex.i<T>> f74504a;

        n(n7.g<io.reactivex.i<T>> gVar) {
            this.f74504a = gVar;
        }

        @Override // n7.c
        /* renamed from: a */
        public S apply(S s9, io.reactivex.i<T> iVar) throws Exception {
            this.f74504a.accept(iVar);
            return s9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class o<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f74505a;

        /* renamed from: b  reason: collision with root package name */
        private final long f74506b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f74507c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f74508d;

        o(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74505a = zVar;
            this.f74506b = j4;
            this.f74507c = timeUnit;
            this.f74508d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.observables.a<T> call() {
            return this.f74505a.replay(this.f74506b, this.f74507c, this.f74508d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableInternalHelper.java */
    /* loaded from: classes3.dex */
    public static final class p<T, R> implements n7.o<List<io.reactivex.e0<? extends T>>, io.reactivex.e0<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super Object[], ? extends R> f74509a;

        p(n7.o<? super Object[], ? extends R> oVar) {
            this.f74509a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.e0<? extends R> apply(List<io.reactivex.e0<? extends T>> list) {
            return io.reactivex.z.zipIterable(list, this.f74509a, false, io.reactivex.z.bufferSize());
        }
    }

    private n1() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> n7.o<T, io.reactivex.e0<U>> a(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> n7.o<T, io.reactivex.e0<R>> b(n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> n7.o<T, io.reactivex.e0<T>> c(n7.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
        return new f(oVar);
    }

    public static <T> n7.a d(io.reactivex.g0<T> g0Var) {
        return new h(g0Var);
    }

    public static <T> n7.g<Throwable> e(io.reactivex.g0<T> g0Var) {
        return new i(g0Var);
    }

    public static <T> n7.g<T> f(io.reactivex.g0<T> g0Var) {
        return new j(g0Var);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> g(io.reactivex.z<T> zVar) {
        return new k(zVar);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> h(io.reactivex.z<T> zVar, int i4) {
        return new a(zVar, i4);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> i(io.reactivex.z<T> zVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new b(zVar, i4, j4, timeUnit, h0Var);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> j(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new o(zVar, j4, timeUnit, h0Var);
    }

    public static <T, R> n7.o<io.reactivex.z<T>, io.reactivex.e0<R>> k(n7.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar, io.reactivex.h0 h0Var) {
        return new l(oVar, h0Var);
    }

    public static <T, S> n7.c<S, io.reactivex.i<T>, S> l(n7.b<S, io.reactivex.i<T>> bVar) {
        return new m(bVar);
    }

    public static <T, S> n7.c<S, io.reactivex.i<T>, S> m(n7.g<io.reactivex.i<T>> gVar) {
        return new n(gVar);
    }

    public static <T, R> n7.o<List<io.reactivex.e0<? extends T>>, io.reactivex.e0<? extends R>> n(n7.o<? super Object[], ? extends R> oVar) {
        return new p(oVar);
    }
}
