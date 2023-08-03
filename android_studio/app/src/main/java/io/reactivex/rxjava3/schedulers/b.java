package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.schedulers.l;
import io.reactivex.rxjava3.internal.schedulers.n;
import io.reactivex.rxjava3.internal.schedulers.o;
import java.util.concurrent.Executor;
import q7.s;

/* compiled from: Schedulers.java */
/* loaded from: classes4.dex */
public final class b {
    @p7.e

    /* renamed from: a  reason: collision with root package name */
    static final o0 f81515a = io.reactivex.rxjava3.plugins.a.J(new h());
    @p7.e

    /* renamed from: b  reason: collision with root package name */
    static final o0 f81516b = io.reactivex.rxjava3.plugins.a.G(new C0698b());
    @p7.e

    /* renamed from: c  reason: collision with root package name */
    static final o0 f81517c = io.reactivex.rxjava3.plugins.a.H(new c());
    @p7.e

    /* renamed from: d  reason: collision with root package name */
    static final o0 f81518d = o.l();
    @p7.e

    /* renamed from: e  reason: collision with root package name */
    static final o0 f81519e = io.reactivex.rxjava3.plugins.a.I(new f());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final o0 f81520a = new io.reactivex.rxjava3.internal.schedulers.b();

        a() {
        }
    }

    /* compiled from: Schedulers.java */
    /* renamed from: io.reactivex.rxjava3.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0698b implements s<o0> {
        C0698b() {
        }

        @Override // q7.s
        /* renamed from: a */
        public o0 get() {
            return a.f81520a;
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class c implements s<o0> {
        c() {
        }

        @Override // q7.s
        /* renamed from: a */
        public o0 get() {
            return d.f81521a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final o0 f81521a = new io.reactivex.rxjava3.internal.schedulers.g();

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final o0 f81522a = new io.reactivex.rxjava3.internal.schedulers.h();

        e() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class f implements s<o0> {
        f() {
        }

        @Override // q7.s
        /* renamed from: a */
        public o0 get() {
            return e.f81522a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final o0 f81523a = new n();

        g() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes4.dex */
    static final class h implements s<o0> {
        h() {
        }

        @Override // q7.s
        /* renamed from: a */
        public o0 get() {
            return g.f81523a;
        }
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    @p7.e
    public static o0 a() {
        return io.reactivex.rxjava3.plugins.a.X(f81516b);
    }

    @p7.e
    public static o0 b(@p7.e Executor executor) {
        return new io.reactivex.rxjava3.internal.schedulers.d(executor, false, false);
    }

    @p7.e
    public static o0 c(@p7.e Executor executor, boolean interruptibleWorker) {
        return new io.reactivex.rxjava3.internal.schedulers.d(executor, interruptibleWorker, false);
    }

    @p7.e
    public static o0 d(@p7.e Executor executor, boolean interruptibleWorker, boolean fair) {
        return new io.reactivex.rxjava3.internal.schedulers.d(executor, interruptibleWorker, fair);
    }

    @p7.e
    public static o0 e() {
        return io.reactivex.rxjava3.plugins.a.Z(f81517c);
    }

    @p7.e
    public static o0 f() {
        return io.reactivex.rxjava3.plugins.a.a0(f81519e);
    }

    public static void g() {
        a().i();
        e().i();
        f().i();
        h().i();
        j().i();
        l.d();
    }

    @p7.e
    public static o0 h() {
        return io.reactivex.rxjava3.plugins.a.c0(f81515a);
    }

    public static void i() {
        a().j();
        e().j();
        f().j();
        h().j();
        j().j();
        l.e();
    }

    @p7.e
    public static o0 j() {
        return f81518d;
    }
}
