package io.sentry;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import m8.a;

/* compiled from: Sentry.java */
/* loaded from: classes4.dex */
public final class c3 {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f83046c = false;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<n0> f83044a = new ThreadLocal<>();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static volatile n0 f83045b = t1.d0();

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f83047d = false;

    /* compiled from: Sentry.java */
    /* loaded from: classes4.dex */
    public interface a<T extends SentryOptions> {
        void a(@m8.g T t9);
    }

    private c3() {
    }

    public static void A(long j4) {
        B().e(j4);
    }

    @a.c
    @m8.g
    public static n0 B() {
        if (f83047d) {
            return f83045b;
        }
        ThreadLocal<n0> threadLocal = f83044a;
        n0 n0Var = threadLocal.get();
        if (n0Var == null || (n0Var instanceof t1)) {
            n0 clone = f83045b.clone();
            threadLocal.set(clone);
            return clone;
        }
        return n0Var;
    }

    @m8.g
    public static io.sentry.protocol.n C() {
        return B().J();
    }

    @m8.h
    public static v0 D() {
        return B().u();
    }

    public static void E() {
        I(a3.f81881a, false);
    }

    public static <T extends SentryOptions> void F(@m8.g g2<T> g2Var, @m8.g a<T> aVar) throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        G(g2Var, aVar, false);
    }

    public static <T extends SentryOptions> void G(@m8.g g2<T> g2Var, @m8.g a<T> aVar, boolean z9) throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        T b10 = g2Var.b();
        h(aVar, b10);
        K(b10, z9);
    }

    public static void H(@m8.g a<SentryOptions> aVar) {
        I(aVar, false);
    }

    public static void I(@m8.g a<SentryOptions> aVar, boolean z9) {
        SentryOptions sentryOptions = new SentryOptions();
        h(aVar, sentryOptions);
        K(sentryOptions, z9);
    }

    @a.c
    public static void J(@m8.g SentryOptions sentryOptions) {
        K(sentryOptions, false);
    }

    private static synchronized void K(@m8.g SentryOptions sentryOptions, boolean z9) {
        synchronized (c3.class) {
            if (O()) {
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Sentry has been already initialized. Previous configuration will be overwritten.", new Object[0]);
            }
            if (M(sentryOptions)) {
                sentryOptions.getLogger().c(SentryLevel.INFO, "GlobalHubMode: '%s'", String.valueOf(z9));
                f83047d = z9;
                n0 B = B();
                f83045b = new h0(sentryOptions);
                f83044a.set(f83045b);
                B.close();
                for (z0 z0Var : sentryOptions.getIntegrations()) {
                    z0Var.a(i0.d0(), sentryOptions);
                }
            }
        }
    }

    public static void L(@m8.g final String str) {
        H(new a() { // from class: io.sentry.z2
            @Override // io.sentry.c3.a
            public final void a(SentryOptions sentryOptions) {
                sentryOptions.setDsn(str);
            }
        });
    }

    private static boolean M(@m8.g SentryOptions sentryOptions) {
        if (sentryOptions.isEnableExternalConfiguration()) {
            sentryOptions.merge(a0.g(io.sentry.config.i.a(), sentryOptions.getLogger()));
        }
        String dsn = sentryOptions.getDsn();
        if (dsn != null) {
            if (dsn.isEmpty()) {
                x();
                return false;
            }
            new q(dsn);
            o0 logger = sentryOptions.getLogger();
            if (sentryOptions.isDebug() && (logger instanceof u1)) {
                sentryOptions.setLogger(new l5());
                logger = sentryOptions.getLogger();
            }
            SentryLevel sentryLevel = SentryLevel.INFO;
            logger.c(sentryLevel, "Initializing SDK with DSN: '%s'", sentryOptions.getDsn());
            String outboxPath = sentryOptions.getOutboxPath();
            if (outboxPath != null) {
                new File(outboxPath).mkdirs();
            } else {
                logger.c(sentryLevel, "No outbox dir path is defined in options.", new Object[0]);
            }
            String cacheDirPath = sentryOptions.getCacheDirPath();
            if (cacheDirPath != null) {
                new File(cacheDirPath).mkdirs();
                if (sentryOptions.getEnvelopeDiskCache() instanceof io.sentry.transport.s) {
                    sentryOptions.setEnvelopeDiskCache(io.sentry.cache.d.r(sentryOptions));
                }
            }
            String profilingTracesDirPath = sentryOptions.getProfilingTracesDirPath();
            if (sentryOptions.isProfilingEnabled() && profilingTracesDirPath != null) {
                File file = new File(profilingTracesDirPath);
                file.mkdirs();
                final File[] listFiles = file.listFiles();
                sentryOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.b3
                    @Override // java.lang.Runnable
                    public final void run() {
                        c3.R(listFiles);
                    }
                });
            }
            if (sentryOptions.getModulesLoader() instanceof io.sentry.internal.modules.c) {
                sentryOptions.setModulesLoader(new io.sentry.internal.modules.d(sentryOptions.getLogger()));
            }
            if (sentryOptions.getMainThreadChecker() instanceof io.sentry.util.thread.d) {
                sentryOptions.setMainThreadChecker(io.sentry.util.thread.c.e());
            }
            if (sentryOptions.getCollectors().isEmpty()) {
                sentryOptions.addCollector(new b1());
            }
            return true;
        }
        throw new IllegalArgumentException("DSN is required. Use empty string to disable SDK.");
    }

    @m8.h
    public static Boolean N() {
        return B().Q();
    }

    public static boolean O() {
        return B().isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            io.sentry.util.c.a(file);
        }
    }

    public static void S() {
        if (f83047d) {
            return;
        }
        B().z();
    }

    public static void T() {
        if (f83047d) {
            return;
        }
        B().w();
    }

    public static void U(@m8.g String str) {
        B().b(str);
    }

    public static void V(@m8.g String str) {
        B().c(str);
    }

    @a.c
    public static void W(@m8.g n0 n0Var) {
        f83044a.set(n0Var);
    }

    public static void X(@m8.g String str, @m8.g String str2) {
        B().d(str, str2);
    }

    public static void Y(@m8.g List<String> list) {
        B().x(list);
    }

    public static void Z(@m8.h SentryLevel sentryLevel) {
        B().I(sentryLevel);
    }

    public static void a0(@m8.g String str, @m8.g String str2) {
        B().a(str, str2);
    }

    public static void b0(@m8.h String str) {
        B().X(str);
    }

    public static void c0(@m8.h io.sentry.protocol.w wVar) {
        B().f(wVar);
    }

    public static void d(@m8.g f fVar) {
        B().g(fVar);
    }

    public static void d0() {
        B().b0();
    }

    public static void e(@m8.g f fVar, @m8.h b0 b0Var) {
        B().s(fVar, b0Var);
    }

    @m8.g
    public static w0 e0(@m8.g p5 p5Var) {
        return B().L(p5Var);
    }

    public static void f(@m8.g String str) {
        B().C(str);
    }

    @m8.g
    public static w0 f0(@m8.g p5 p5Var, @m8.g j jVar) {
        return B().T(p5Var, jVar);
    }

    public static void g(@m8.g String str, @m8.g String str2) {
        B().Z(str, str2);
    }

    @m8.g
    public static w0 g0(@m8.g p5 p5Var, @m8.h j jVar, boolean z9) {
        return B().v(p5Var, jVar, z9);
    }

    private static <T extends SentryOptions> void h(a<T> aVar, T t9) {
        try {
            aVar.a(t9);
        } catch (Throwable th) {
            t9.getLogger().b(SentryLevel.ERROR, "Error in the 'OptionsConfiguration.configure' callback.", th);
        }
    }

    @a.c
    @m8.g
    public static w0 h0(@m8.g p5 p5Var, @m8.g r5 r5Var) {
        return B().N(p5Var, r5Var);
    }

    public static void i(@m8.g s0 s0Var) {
        B().P(s0Var);
    }

    @m8.g
    public static w0 i0(@m8.g p5 p5Var, boolean z9) {
        return B().R(p5Var, z9);
    }

    @m8.g
    public static io.sentry.protocol.n j(@m8.g h4 h4Var) {
        return B().k(h4Var);
    }

    @m8.g
    public static w0 j0(@m8.g String str, @m8.g String str2) {
        return B().M(str, str2);
    }

    @m8.g
    public static io.sentry.protocol.n k(@m8.g h4 h4Var, @m8.h b0 b0Var) {
        return B().j(h4Var, b0Var);
    }

    @m8.g
    public static w0 k0(@m8.g String str, @m8.g String str2, @m8.g j jVar) {
        return B().G(str, str2, jVar);
    }

    @m8.g
    public static io.sentry.protocol.n l(@m8.g h4 h4Var, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return B().S(h4Var, b0Var, s2Var);
    }

    @m8.g
    public static w0 l0(@m8.g String str, @m8.g String str2, @m8.g j jVar, boolean z9) {
        return B().Y(str, str2, jVar, z9);
    }

    @m8.g
    public static io.sentry.protocol.n m(@m8.g h4 h4Var, @m8.g s2 s2Var) {
        return B().K(h4Var, s2Var);
    }

    @m8.g
    public static w0 m0(@m8.g String str, @m8.g String str2, @m8.h String str3) {
        return n0(str, str2, str3, false);
    }

    @m8.g
    public static io.sentry.protocol.n n(@m8.g Throwable th) {
        return B().m(th);
    }

    @m8.g
    public static w0 n0(@m8.g String str, @m8.g String str2, @m8.h String str3, boolean z9) {
        w0 c02 = B().c0(str, str2, z9);
        c02.k(str3);
        return c02;
    }

    @m8.g
    public static io.sentry.protocol.n o(@m8.g Throwable th, @m8.h b0 b0Var) {
        return B().n(th, b0Var);
    }

    @m8.g
    public static w0 o0(@m8.g String str, @m8.g String str2, boolean z9) {
        return B().c0(str, str2, z9);
    }

    @m8.g
    public static io.sentry.protocol.n p(@m8.g Throwable th, @m8.h b0 b0Var, @m8.g s2 s2Var) {
        return B().q(th, b0Var, s2Var);
    }

    @m8.h
    public static v4 p0() {
        return B().E();
    }

    @m8.g
    public static io.sentry.protocol.n q(@m8.g Throwable th, @m8.g s2 s2Var) {
        return B().O(th, s2Var);
    }

    public static void q0(@m8.g s2 s2Var) {
        B().V(s2Var);
    }

    @m8.g
    public static io.sentry.protocol.n r(@m8.g String str) {
        return B().F(str);
    }

    @m8.g
    public static io.sentry.protocol.n s(@m8.g String str, @m8.g s2 s2Var) {
        return B().D(str, s2Var);
    }

    @m8.g
    public static io.sentry.protocol.n t(@m8.g String str, @m8.g SentryLevel sentryLevel) {
        return B().h(str, sentryLevel);
    }

    @m8.g
    public static io.sentry.protocol.n u(@m8.g String str, @m8.g SentryLevel sentryLevel, @m8.g s2 s2Var) {
        return B().W(str, sentryLevel, s2Var);
    }

    public static void v(@m8.g w5 w5Var) {
        B().p(w5Var);
    }

    public static void w() {
        B().B();
    }

    public static synchronized void x() {
        synchronized (c3.class) {
            n0 B = B();
            f83045b = t1.d0();
            f83044a.remove();
            B.close();
        }
    }

    public static void y(@m8.g s2 s2Var) {
        B().t(s2Var);
    }

    public static void z() {
        B().H();
    }
}
