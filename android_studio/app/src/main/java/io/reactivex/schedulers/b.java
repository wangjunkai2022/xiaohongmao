package io.reactivex.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.schedulers.l;
import io.reactivex.internal.schedulers.n;
import io.reactivex.internal.schedulers.o;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: Schedulers.java */
/* loaded from: classes4.dex */
public final class b {
    @m7.e

    /* renamed from: a  reason: collision with root package name */
    static final h0 f81664a = io.reactivex.plugins.a.J(new h());
    @m7.e

    /* renamed from: b  reason: collision with root package name */
    static final h0 f81665b = io.reactivex.plugins.a.G(new CallableC0702b());
    @m7.e

    /* renamed from: c  reason: collision with root package name */
    static final h0 f81666c = io.reactivex.plugins.a.H(new c());
    @m7.e

    /* renamed from: d  reason: collision with root package name */
    static final h0 f81667d = o.l();
    @m7.e

    /* renamed from: e  reason: collision with root package name */
    static final h0 f81668e = io.reactivex.plugins.a.I(new f());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f81669a = new io.reactivex.internal.schedulers.b();

        a() {
        }
    }

    /* compiled from: Schedulers.java */
    /* renamed from: io.reactivex.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class CallableC0702b implements Callable<h0> {
        CallableC0702b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h0 call() throws Exception {
            return a.f81669a;
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class c implements Callable<h0> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h0 call() throws Exception {
            return d.f81670a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f81670a = new io.reactivex.internal.schedulers.g();

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f81671a = new io.reactivex.internal.schedulers.h();

        e() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class f implements Callable<h0> {
        f() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h0 call() throws Exception {
            return e.f81671a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f81672a = new n();

        g() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class h implements Callable<h0> {
        h() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public h0 call() throws Exception {
            return g.f81672a;
        }
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    @m7.e
    public static h0 a() {
        return io.reactivex.plugins.a.X(f81665b);
    }

    @m7.e
    public static h0 b(@m7.e Executor executor) {
        return new io.reactivex.internal.schedulers.d(executor, false);
    }

    @m7.e
    @m7.d
    public static h0 c(@m7.e Executor executor, boolean z9) {
        return new io.reactivex.internal.schedulers.d(executor, z9);
    }

    @m7.e
    public static h0 d() {
        return io.reactivex.plugins.a.Z(f81666c);
    }

    @m7.e
    public static h0 e() {
        return io.reactivex.plugins.a.a0(f81668e);
    }

    public static void f() {
        a().i();
        d().i();
        e().i();
        g().i();
        i().i();
        l.d();
    }

    @m7.e
    public static h0 g() {
        return io.reactivex.plugins.a.c0(f81664a);
    }

    public static void h() {
        a().j();
        d().j();
        e().j();
        g().j();
        i().j();
        l.e();
    }

    @m7.e
    public static h0 i() {
        return f81667d;
    }
}
