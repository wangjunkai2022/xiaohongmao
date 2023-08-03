package io.reactivex.internal.operators.flowable;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class FlowableInternalHelper {

    /* loaded from: classes3.dex */
    public enum RequestMax implements n7.g<org.reactivestreams.e> {
        INSTANCE;

        @Override // n7.g
        public void accept(org.reactivestreams.e eVar) throws Exception {
            eVar.request(Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class a<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f71512a;

        /* renamed from: b  reason: collision with root package name */
        private final int f71513b;

        a(io.reactivex.j<T> jVar, int i4) {
            this.f71512a = jVar;
            this.f71513b = i4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.flowables.a<T> call() {
            return this.f71512a.g5(this.f71513b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f71514a;

        /* renamed from: b  reason: collision with root package name */
        private final int f71515b;

        /* renamed from: c  reason: collision with root package name */
        private final long f71516c;

        /* renamed from: d  reason: collision with root package name */
        private final TimeUnit f71517d;

        /* renamed from: e  reason: collision with root package name */
        private final io.reactivex.h0 f71518e;

        b(io.reactivex.j<T> jVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f71514a = jVar;
            this.f71515b = i4;
            this.f71516c = j4;
            this.f71517d = timeUnit;
            this.f71518e = h0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.flowables.a<T> call() {
            return this.f71514a.i5(this.f71515b, this.f71516c, this.f71517d, this.f71518e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class c<T, U> implements n7.o<T, org.reactivestreams.c<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super T, ? extends Iterable<? extends U>> f71519a;

        c(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f71519a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c<U> apply(T t9) throws Exception {
            return new j1((Iterable) io.reactivex.internal.functions.b.g(this.f71519a.apply(t9), "The mapper returned a null Iterable"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class d<U, R, T> implements n7.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.c<? super T, ? super U, ? extends R> f71520a;

        /* renamed from: b  reason: collision with root package name */
        private final T f71521b;

        d(n7.c<? super T, ? super U, ? extends R> cVar, T t9) {
            this.f71520a = cVar;
            this.f71521b = t9;
        }

        @Override // n7.o
        public R apply(U u9) throws Exception {
            return this.f71520a.apply((T) this.f71521b, u9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class e<T, R, U> implements n7.o<T, org.reactivestreams.c<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.c<? super T, ? super U, ? extends R> f71522a;

        /* renamed from: b  reason: collision with root package name */
        private final n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f71523b;

        e(n7.c<? super T, ? super U, ? extends R> cVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar) {
            this.f71522a = cVar;
            this.f71523b = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c<R> apply(T t9) throws Exception {
            return new b2((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71523b.apply(t9), "The mapper returned a null Publisher"), new d(this.f71522a, t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class f<T, U> implements n7.o<T, org.reactivestreams.c<T>> {

        /* renamed from: a  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<U>> f71524a;

        f(n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
            this.f71524a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c<T> apply(T t9) throws Exception {
            return new e4((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71524a.apply(t9), "The itemDelay returned a null Publisher"), 1L).K3(io.reactivex.internal.functions.a.n(t9)).A1(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class g<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f71525a;

        g(io.reactivex.j<T> jVar) {
            this.f71525a = jVar;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.flowables.a<T> call() {
            return this.f71525a.f5();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class h<T, R> implements n7.o<io.reactivex.j<T>, org.reactivestreams.c<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super io.reactivex.j<T>, ? extends org.reactivestreams.c<R>> f71526a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.h0 f71527b;

        h(n7.o<? super io.reactivex.j<T>, ? extends org.reactivestreams.c<R>> oVar, io.reactivex.h0 h0Var) {
            this.f71526a = oVar;
            this.f71527b = h0Var;
        }

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c<R> apply(io.reactivex.j<T> jVar) throws Exception {
            return io.reactivex.j.Y2((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71526a.apply(jVar), "The selector returned a null Publisher")).l4(this.f71527b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class i<T, S> implements n7.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final n7.b<S, io.reactivex.i<T>> f71528a;

        i(n7.b<S, io.reactivex.i<T>> bVar) {
            this.f71528a = bVar;
        }

        @Override // n7.c
        /* renamed from: a */
        public S apply(S s9, io.reactivex.i<T> iVar) throws Exception {
            this.f71528a.accept(s9, iVar);
            return s9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class j<T, S> implements n7.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final n7.g<io.reactivex.i<T>> f71529a;

        j(n7.g<io.reactivex.i<T>> gVar) {
            this.f71529a = gVar;
        }

        @Override // n7.c
        /* renamed from: a */
        public S apply(S s9, io.reactivex.i<T> iVar) throws Exception {
            this.f71529a.accept(iVar);
            return s9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class k<T> implements n7.a {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f71530a;

        k(org.reactivestreams.d<T> dVar) {
            this.f71530a = dVar;
        }

        @Override // n7.a
        public void run() throws Exception {
            this.f71530a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class l<T> implements n7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f71531a;

        l(org.reactivestreams.d<T> dVar) {
            this.f71531a = dVar;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f71531a.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class m<T> implements n7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<T> f71532a;

        m(org.reactivestreams.d<T> dVar) {
            this.f71532a = dVar;
        }

        @Override // n7.g
        public void accept(T t9) throws Exception {
            this.f71532a.onNext(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class n<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f71533a;

        /* renamed from: b  reason: collision with root package name */
        private final long f71534b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f71535c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f71536d;

        n(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f71533a = jVar;
            this.f71534b = j4;
            this.f71535c = timeUnit;
            this.f71536d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public io.reactivex.flowables.a<T> call() {
            return this.f71533a.l5(this.f71534b, this.f71535c, this.f71536d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class o<T, R> implements n7.o<List<org.reactivestreams.c<? extends T>>, org.reactivestreams.c<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super Object[], ? extends R> f71537a;

        o(n7.o<? super Object[], ? extends R> oVar) {
            this.f71537a = oVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public org.reactivestreams.c<? extends R> apply(List<org.reactivestreams.c<? extends T>> list) {
            return io.reactivex.j.H8(list, this.f71537a, false, io.reactivex.j.Y());
        }
    }

    private FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> n7.o<T, org.reactivestreams.c<U>> a(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> n7.o<T, org.reactivestreams.c<R>> b(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> n7.o<T, org.reactivestreams.c<T>> c(n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
        return new f(oVar);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> d(io.reactivex.j<T> jVar) {
        return new g(jVar);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> e(io.reactivex.j<T> jVar, int i4) {
        return new a(jVar, i4);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> f(io.reactivex.j<T> jVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new b(jVar, i4, j4, timeUnit, h0Var);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> g(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new n(jVar, j4, timeUnit, h0Var);
    }

    public static <T, R> n7.o<io.reactivex.j<T>, org.reactivestreams.c<R>> h(n7.o<? super io.reactivex.j<T>, ? extends org.reactivestreams.c<R>> oVar, io.reactivex.h0 h0Var) {
        return new h(oVar, h0Var);
    }

    public static <T, S> n7.c<S, io.reactivex.i<T>, S> i(n7.b<S, io.reactivex.i<T>> bVar) {
        return new i(bVar);
    }

    public static <T, S> n7.c<S, io.reactivex.i<T>, S> j(n7.g<io.reactivex.i<T>> gVar) {
        return new j(gVar);
    }

    public static <T> n7.a k(org.reactivestreams.d<T> dVar) {
        return new k(dVar);
    }

    public static <T> n7.g<Throwable> l(org.reactivestreams.d<T> dVar) {
        return new l(dVar);
    }

    public static <T> n7.g<T> m(org.reactivestreams.d<T> dVar) {
        return new m(dVar);
    }

    public static <T, R> n7.o<List<org.reactivestreams.c<? extends T>>, org.reactivestreams.c<? extends R>> n(n7.o<? super Object[], ? extends R> oVar) {
        return new o(oVar);
    }
}
