package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.d;
import com.google.common.util.concurrent.n0;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.y0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Futures.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class j0 extends m0 {

    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Future f35240a;

        a(Future future) {
            this.f35240a = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35240a.cancel(false);
        }
    }

    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    static class b implements Future<O> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Future f35241a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f35242b;

        b(Future future, com.google.common.base.q qVar) {
            this.f35241a = future;
            this.f35242b = qVar;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, O] */
        private O a(I i4) throws ExecutionException {
            try {
                return this.f35242b.apply(i4);
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z9) {
            return this.f35241a.cancel(z9);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, O] */
        @Override // java.util.concurrent.Future
        public O get() throws InterruptedException, ExecutionException {
            return a(this.f35241a.get());
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f35241a.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f35241a.isDone();
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, O] */
        @Override // java.util.concurrent.Future
        public O get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return a(this.f35241a.get(j4, timeUnit));
        }
    }

    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f35243a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmutableList f35244b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f35245c;

        c(g gVar, ImmutableList immutableList, int i4) {
            this.f35243a = gVar;
            this.f35244b = immutableList;
            this.f35245c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35243a.f(this.f35244b, this.f35245c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    public static final class d<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Future<V> f35246a;

        /* renamed from: b  reason: collision with root package name */
        final i0<? super V> f35247b;

        d(Future<V> future, i0<? super V> i0Var) {
            this.f35246a = future;
            this.f35247b = i0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f35247b.onSuccess(j0.h(this.f35246a));
            } catch (Error e4) {
                e = e4;
                this.f35247b.a(e);
            } catch (RuntimeException e10) {
                e = e10;
                this.f35247b.a(e);
            } catch (ExecutionException e11) {
                this.f35247b.a(e11.getCause());
            }
        }

        public String toString() {
            return com.google.common.base.v.c(this).p(this.f35247b).toString();
        }
    }

    /* compiled from: Futures.java */
    @h3.b
    @h3.a
    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    public static final class e<V> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f35248a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<q0<? extends V>> f35249b;

        /* compiled from: Futures.java */
        /* loaded from: classes2.dex */
        class a implements Callable<Void> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f35250a;

            a(Runnable runnable) {
                this.f35250a = runnable;
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public Void call() throws Exception {
                this.f35250a.run();
                return null;
            }
        }

        /* synthetic */ e(boolean z9, ImmutableList immutableList, a aVar) {
            this(z9, immutableList);
        }

        @CanIgnoreReturnValue
        public <C> q0<C> a(Callable<C> callable, Executor executor) {
            return new s(this.f35249b, this.f35248a, executor, callable);
        }

        public <C> q0<C> b(m<C> mVar, Executor executor) {
            return new s(this.f35249b, this.f35248a, executor, mVar);
        }

        public q0<?> c(Runnable runnable, Executor executor) {
            return a(new a(runnable), executor);
        }

        private e(boolean z9, ImmutableList<q0<? extends V>> immutableList) {
            this.f35248a = z9;
            this.f35249b = immutableList;
        }
    }

    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    private static final class f<T> extends com.google.common.util.concurrent.d<T> {

        /* renamed from: i  reason: collision with root package name */
        private g<T> f35252i;

        /* synthetic */ f(g gVar, a aVar) {
            this(gVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.d
        public String J() {
            g<T> gVar = this.f35252i;
            if (gVar != null) {
                return "inputCount=[" + ((g) gVar).f35256d.length + "], remaining=[" + ((g) gVar).f35255c.get() + "]";
            }
            return null;
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        public boolean cancel(boolean z9) {
            g<T> gVar = this.f35252i;
            if (super.cancel(z9)) {
                gVar.g(z9);
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.d
        public void s() {
            this.f35252i = null;
        }

        private f(g<T> gVar) {
            this.f35252i = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    public static final class g<T> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f35253a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f35254b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f35255c;

        /* renamed from: d  reason: collision with root package name */
        private final q0<? extends T>[] f35256d;

        /* renamed from: e  reason: collision with root package name */
        private volatile int f35257e;

        /* synthetic */ g(q0[] q0VarArr, a aVar) {
            this(q0VarArr);
        }

        private void e() {
            q0<? extends T>[] q0VarArr;
            if (this.f35255c.decrementAndGet() == 0 && this.f35253a) {
                for (q0<? extends T> q0Var : this.f35256d) {
                    if (q0Var != null) {
                        q0Var.cancel(this.f35254b);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(ImmutableList<com.google.common.util.concurrent.d<T>> immutableList, int i4) {
            q0<? extends T>[] q0VarArr = this.f35256d;
            q0<? extends T> q0Var = q0VarArr[i4];
            q0VarArr[i4] = null;
            for (int i10 = this.f35257e; i10 < immutableList.size(); i10++) {
                if (immutableList.get(i10).O(q0Var)) {
                    e();
                    this.f35257e = i10 + 1;
                    return;
                }
            }
            this.f35257e = immutableList.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(boolean z9) {
            this.f35253a = true;
            if (!z9) {
                this.f35254b = false;
            }
            e();
        }

        private g(q0<? extends T>[] q0VarArr) {
            this.f35253a = false;
            this.f35254b = true;
            this.f35257e = 0;
            this.f35256d = q0VarArr;
            this.f35255c = new AtomicInteger(q0VarArr.length);
        }
    }

    /* compiled from: Futures.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class h<V, X extends Exception> extends com.google.common.util.concurrent.b<V, X> {

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.base.q<? super Exception, X> f35258b;

        h(q0<V> q0Var, com.google.common.base.q<? super Exception, X> qVar) {
            super(q0Var);
            this.f35258b = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // com.google.common.util.concurrent.b
        protected X O(Exception exc) {
            return this.f35258b.apply(exc);
        }
    }

    /* compiled from: Futures.java */
    /* loaded from: classes2.dex */
    private static final class i<V> extends d.j<V> implements Runnable {

        /* renamed from: i  reason: collision with root package name */
        private q0<V> f35259i;

        i(q0<V> q0Var) {
            this.f35259i = q0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.d
        public String J() {
            q0<V> q0Var = this.f35259i;
            if (q0Var != null) {
                return "delegate=[" + q0Var + "]";
            }
            return null;
        }

        @Override // java.lang.Runnable
        public void run() {
            q0<V> q0Var = this.f35259i;
            if (q0Var != null) {
                O(q0Var);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.d
        public void s() {
            this.f35259i = null;
        }
    }

    private j0() {
    }

    @h3.a
    public static <V> e<V> A(Iterable<? extends q0<? extends V>> iterable) {
        return new e<>(true, ImmutableList.copyOf(iterable), null);
    }

    @SafeVarargs
    @h3.a
    public static <V> e<V> B(q0<? extends V>... q0VarArr) {
        return new e<>(true, ImmutableList.copyOf(q0VarArr), null);
    }

    @h3.c
    @h3.a
    public static <V> q0<V> C(q0<V> q0Var, long j4, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return q0Var.isDone() ? q0Var : k1.b0(q0Var, j4, timeUnit, scheduledExecutorService);
    }

    private static void D(Throwable th) {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        throw new UncheckedExecutionException(th);
    }

    public static <V> void a(q0<V> q0Var, i0<? super V> i0Var, Executor executor) {
        com.google.common.base.a0.E(i0Var);
        q0Var.addListener(new d(q0Var, i0Var), executor);
    }

    @h3.a
    public static <V> q0<List<V>> b(Iterable<? extends q0<? extends V>> iterable) {
        return new r.b(ImmutableList.copyOf(iterable), true);
    }

    @SafeVarargs
    @h3.a
    public static <V> q0<List<V>> c(q0<? extends V>... q0VarArr) {
        return new r.b(ImmutableList.copyOf(q0VarArr), true);
    }

    @y0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @h3.a
    public static <V, X extends Throwable> q0<V> d(q0<? extends V> q0Var, Class<X> cls, com.google.common.base.q<? super X, ? extends V> qVar, Executor executor) {
        return com.google.common.util.concurrent.a.Y(q0Var, cls, qVar, executor);
    }

    @y0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @h3.a
    public static <V, X extends Throwable> q0<V> e(q0<? extends V> q0Var, Class<X> cls, n<? super X, ? extends V> nVar, Executor executor) {
        return com.google.common.util.concurrent.a.Z(q0Var, cls, nVar, executor);
    }

    @h3.c
    @h3.a
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V f(Future<V> future, Class<X> cls) throws Exception {
        return (V) k0.e(future, cls);
    }

    @h3.c
    @h3.a
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V g(Future<V> future, Class<X> cls, long j4, TimeUnit timeUnit) throws Exception {
        return (V) k0.f(future, cls, j4, timeUnit);
    }

    @CanIgnoreReturnValue
    public static <V> V h(Future<V> future) throws ExecutionException {
        com.google.common.base.a0.x0(future.isDone(), "Future was expected to be done: %s", future);
        return (V) n1.d(future);
    }

    @CanIgnoreReturnValue
    public static <V> V i(Future<V> future) {
        com.google.common.base.a0.E(future);
        try {
            return (V) n1.d(future);
        } catch (ExecutionException e4) {
            D(e4.getCause());
            throw new AssertionError();
        }
    }

    public static <V> q0<V> j() {
        return new n0.a();
    }

    @h3.c
    @h3.a
    @Deprecated
    public static <V, X extends Exception> q<V, X> k(@NullableDecl V v9) {
        return new n0.d(v9);
    }

    @h3.c
    @h3.a
    @Deprecated
    public static <V, X extends Exception> q<V, X> l(X x9) {
        com.google.common.base.a0.E(x9);
        return new n0.b(x9);
    }

    public static <V> q0<V> m(Throwable th) {
        com.google.common.base.a0.E(th);
        return new n0.c(th);
    }

    public static <V> q0<V> n(@NullableDecl V v9) {
        if (v9 == null) {
            return n0.e.f35297c;
        }
        return new n0.e(v9);
    }

    @h3.a
    public static <T> ImmutableList<q0<T>> o(Iterable<? extends q0<? extends T>> iterable) {
        Collection copyOf;
        if (iterable instanceof Collection) {
            copyOf = (Collection) iterable;
        } else {
            copyOf = ImmutableList.copyOf(iterable);
        }
        q0[] q0VarArr = (q0[]) copyOf.toArray(new q0[copyOf.size()]);
        g gVar = new g(q0VarArr, null);
        ImmutableList.a builder = ImmutableList.builder();
        for (int i4 = 0; i4 < q0VarArr.length; i4++) {
            builder.g(new f(gVar, null));
        }
        ImmutableList<q0<T>> e4 = builder.e();
        for (int i10 = 0; i10 < q0VarArr.length; i10++) {
            q0VarArr[i10].addListener(new c(gVar, e4, i10), x0.c());
        }
        return e4;
    }

    @h3.c
    @h3.a
    public static <I, O> Future<O> p(Future<I> future, com.google.common.base.q<? super I, ? extends O> qVar) {
        com.google.common.base.a0.E(future);
        com.google.common.base.a0.E(qVar);
        return new b(future, qVar);
    }

    @h3.c
    @h3.a
    @Deprecated
    public static <V, X extends Exception> q<V, X> q(q0<V> q0Var, com.google.common.base.q<? super Exception, X> qVar) {
        return new h((q0) com.google.common.base.a0.E(q0Var), qVar);
    }

    @h3.a
    public static <V> q0<V> r(q0<V> q0Var) {
        if (q0Var.isDone()) {
            return q0Var;
        }
        i iVar = new i(q0Var);
        q0Var.addListener(iVar, x0.c());
        return iVar;
    }

    @h3.c
    @h3.a
    public static <O> q0<O> s(m<O> mVar, long j4, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        l1 Y = l1.Y(mVar);
        Y.addListener(new a(scheduledExecutorService.schedule(Y, j4, timeUnit)), x0.c());
        return Y;
    }

    @h3.a
    public static <O> q0<O> t(m<O> mVar, Executor executor) {
        l1 Y = l1.Y(mVar);
        executor.execute(Y);
        return Y;
    }

    @h3.a
    public static <V> q0<List<V>> u(Iterable<? extends q0<? extends V>> iterable) {
        return new r.b(ImmutableList.copyOf(iterable), false);
    }

    @SafeVarargs
    @h3.a
    public static <V> q0<List<V>> v(q0<? extends V>... q0VarArr) {
        return new r.b(ImmutableList.copyOf(q0VarArr), false);
    }

    @h3.a
    public static <I, O> q0<O> w(q0<I> q0Var, com.google.common.base.q<? super I, ? extends O> qVar, Executor executor) {
        return j.Y(q0Var, qVar, executor);
    }

    @h3.a
    public static <I, O> q0<O> x(q0<I> q0Var, n<? super I, ? extends O> nVar, Executor executor) {
        return j.Z(q0Var, nVar, executor);
    }

    @h3.a
    public static <V> e<V> y(Iterable<? extends q0<? extends V>> iterable) {
        return new e<>(false, ImmutableList.copyOf(iterable), null);
    }

    @SafeVarargs
    @h3.a
    public static <V> e<V> z(q0<? extends V>... q0VarArr) {
        return new e<>(false, ImmutableList.copyOf(q0VarArr), null);
    }
}
