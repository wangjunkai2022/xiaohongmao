package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.j2objc.annotations.ReflectionSupport;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;

/* compiled from: AbstractFuture.java */
@ReflectionSupport(ReflectionSupport.Level.FULL)
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class d<V> extends com.google.common.util.concurrent.internal.a implements q0<V> {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f35060d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f35061e = Logger.getLogger(d.class.getName());

    /* renamed from: f  reason: collision with root package name */
    private static final long f35062f = 1000;

    /* renamed from: g  reason: collision with root package name */
    private static final b f35063g;

    /* renamed from: h  reason: collision with root package name */
    private static final Object f35064h;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f35065a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private volatile e f35066b;
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    private volatile l f35067c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public static abstract class b {
        private b() {
        }

        abstract boolean a(d<?> dVar, e eVar, e eVar2);

        abstract boolean b(d<?> dVar, Object obj, Object obj2);

        abstract boolean c(d<?> dVar, l lVar, l lVar2);

        abstract void d(l lVar, l lVar2);

        abstract void e(l lVar, Thread thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        static final c f35068c;

        /* renamed from: d  reason: collision with root package name */
        static final c f35069d;

        /* renamed from: a  reason: collision with root package name */
        final boolean f35070a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final Throwable f35071b;

        static {
            if (d.f35060d) {
                f35069d = null;
                f35068c = null;
                return;
            }
            f35069d = new c(false, null);
            f35068c = new c(true, null);
        }

        c(boolean z9, @NullableDecl Throwable th) {
            this.f35070a = z9;
            this.f35071b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* renamed from: com.google.common.util.concurrent.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0269d {

        /* renamed from: b  reason: collision with root package name */
        static final C0269d f35072b = new C0269d(new a("Failure occurred while trying to finish a future."));

        /* renamed from: a  reason: collision with root package name */
        final Throwable f35073a;

        /* compiled from: AbstractFuture.java */
        /* renamed from: com.google.common.util.concurrent.d$d$a */
        /* loaded from: classes2.dex */
        static class a extends Throwable {
            a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        C0269d(Throwable th) {
            this.f35073a = (Throwable) com.google.common.base.a0.E(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        static final e f35074d = new e(null, null);

        /* renamed from: a  reason: collision with root package name */
        final Runnable f35075a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f35076b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        e f35077c;

        e(Runnable runnable, Executor executor) {
            this.f35075a = runnable;
            this.f35076b = executor;
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    private static final class f extends b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, Thread> f35078a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, l> f35079b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<d, l> f35080c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<d, e> f35081d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<d, Object> f35082e;

        f(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<d, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<d, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<d, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f35078a = atomicReferenceFieldUpdater;
            this.f35079b = atomicReferenceFieldUpdater2;
            this.f35080c = atomicReferenceFieldUpdater3;
            this.f35081d = atomicReferenceFieldUpdater4;
            this.f35082e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean a(d<?> dVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.a.a(this.f35081d, dVar, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean b(d<?> dVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f35082e, dVar, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean c(d<?> dVar, l lVar, l lVar2) {
            return androidx.concurrent.futures.a.a(this.f35080c, dVar, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        void d(l lVar, l lVar2) {
            this.f35079b.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        void e(l lVar, Thread thread) {
            this.f35078a.lazySet(lVar, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public static final class g<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d<V> f35083a;

        /* renamed from: b  reason: collision with root package name */
        final q0<? extends V> f35084b;

        g(d<V> dVar, q0<? extends V> q0Var) {
            this.f35083a = dVar;
            this.f35084b = q0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((d) this.f35083a).f35065a != this) {
                return;
            }
            if (d.f35063g.b(this.f35083a, this, d.A(this.f35084b))) {
                d.x(this.f35083a);
            }
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    private static final class h extends b {
        private h() {
            super();
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean a(d<?> dVar, e eVar, e eVar2) {
            synchronized (dVar) {
                if (((d) dVar).f35066b == eVar) {
                    ((d) dVar).f35066b = eVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean b(d<?> dVar, Object obj, Object obj2) {
            synchronized (dVar) {
                if (((d) dVar).f35065a == obj) {
                    ((d) dVar).f35065a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean c(d<?> dVar, l lVar, l lVar2) {
            synchronized (dVar) {
                if (((d) dVar).f35067c == lVar) {
                    ((d) dVar).f35067c = lVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.d.b
        void d(l lVar, l lVar2) {
            lVar.f35093b = lVar2;
        }

        @Override // com.google.common.util.concurrent.d.b
        void e(l lVar, Thread thread) {
            lVar.f35092a = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public interface i<V> extends q0<V> {
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    static abstract class j<V> extends d<V> implements i<V> {
        @Override // com.google.common.util.concurrent.d, com.google.common.util.concurrent.q0
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z9) {
            return super.cancel(z9);
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j4, timeUnit);
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    private static final class k extends b {

        /* renamed from: a  reason: collision with root package name */
        static final Unsafe f35085a;

        /* renamed from: b  reason: collision with root package name */
        static final long f35086b;

        /* renamed from: c  reason: collision with root package name */
        static final long f35087c;

        /* renamed from: d  reason: collision with root package name */
        static final long f35088d;

        /* renamed from: e  reason: collision with root package name */
        static final long f35089e;

        /* renamed from: f  reason: collision with root package name */
        static final long f35090f;

        /* compiled from: AbstractFuture.java */
        /* loaded from: classes2.dex */
        static class a implements PrivilegedExceptionAction<Unsafe> {
            a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a */
            public Unsafe run() throws Exception {
                Field[] declaredFields;
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(new a());
                }
                try {
                    f35087c = unsafe.objectFieldOffset(d.class.getDeclaredField("c"));
                    f35086b = unsafe.objectFieldOffset(d.class.getDeclaredField("b"));
                    f35088d = unsafe.objectFieldOffset(d.class.getDeclaredField("a"));
                    f35089e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                    f35090f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                    f35085a = unsafe;
                } catch (Exception e4) {
                    com.google.common.base.k0.w(e4);
                    throw new RuntimeException(e4);
                }
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        }

        private k() {
            super();
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean a(d<?> dVar, e eVar, e eVar2) {
            return com.google.common.util.concurrent.e.a(f35085a, dVar, f35086b, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean b(d<?> dVar, Object obj, Object obj2) {
            return com.google.common.util.concurrent.e.a(f35085a, dVar, f35088d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.d.b
        boolean c(d<?> dVar, l lVar, l lVar2) {
            return com.google.common.util.concurrent.e.a(f35085a, dVar, f35087c, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        void d(l lVar, l lVar2) {
            f35085a.putObject(lVar, f35090f, lVar2);
        }

        @Override // com.google.common.util.concurrent.d.b
        void e(l lVar, Thread thread) {
            f35085a.putObject(lVar, f35089e, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes2.dex */
    public static final class l {

        /* renamed from: c  reason: collision with root package name */
        static final l f35091c = new l(false);
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        volatile Thread f35092a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        volatile l f35093b;

        l(boolean z9) {
        }

        void a(l lVar) {
            d.f35063g.d(this, lVar);
        }

        void b() {
            Thread thread = this.f35092a;
            if (thread != null) {
                this.f35092a = null;
                LockSupport.unpark(thread);
            }
        }

        l() {
            d.f35063g.e(this, Thread.currentThread());
        }
    }

    static {
        b hVar;
        Throwable th = null;
        try {
            hVar = new k();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(d.class, l.class, "c"), AtomicReferenceFieldUpdater.newUpdater(d.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "a"));
            } catch (Throwable th3) {
                hVar = new h();
                th = th3;
            }
        }
        f35063g = hVar;
        if (th != null) {
            Logger logger = f35061e;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th);
        }
        f35064h = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object A(q0<?> q0Var) {
        Throwable a10;
        if (q0Var instanceof i) {
            Object obj = ((d) q0Var).f35065a;
            if (obj instanceof c) {
                c cVar = (c) obj;
                return cVar.f35070a ? cVar.f35071b != null ? new c(false, cVar.f35071b) : c.f35069d : obj;
            }
            return obj;
        } else if ((q0Var instanceof com.google.common.util.concurrent.internal.a) && (a10 = com.google.common.util.concurrent.internal.b.a((com.google.common.util.concurrent.internal.a) q0Var)) != null) {
            return new C0269d(a10);
        } else {
            boolean isCancelled = q0Var.isCancelled();
            if ((!f35060d) & isCancelled) {
                return c.f35069d;
            }
            try {
                Object D = D(q0Var);
                if (!isCancelled) {
                    return D == null ? f35064h : D;
                }
                return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + q0Var));
            } catch (CancellationException e4) {
                if (!isCancelled) {
                    return new C0269d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + q0Var, e4));
                }
                return new c(false, e4);
            } catch (ExecutionException e10) {
                if (isCancelled) {
                    return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + q0Var, e10));
                }
                return new C0269d(e10.getCause());
            } catch (Throwable th) {
                return new C0269d(th);
            }
        }
    }

    private static <V> V D(Future<V> future) throws ExecutionException {
        V v9;
        boolean z9 = false;
        while (true) {
            try {
                v9 = future.get();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
        return v9;
    }

    private void K() {
        l lVar;
        do {
            lVar = this.f35067c;
        } while (!f35063g.c(this, lVar, l.f35091c));
        while (lVar != null) {
            lVar.b();
            lVar = lVar.f35093b;
        }
    }

    private void L(l lVar) {
        lVar.f35092a = null;
        while (true) {
            l lVar2 = this.f35067c;
            if (lVar2 == l.f35091c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f35093b;
                if (lVar2.f35092a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f35093b = lVar4;
                    if (lVar3.f35092a == null) {
                        break;
                    }
                } else if (!f35063g.c(this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    private String P(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    private void r(StringBuilder sb) {
        try {
            Object D = D(this);
            sb.append("SUCCESS, result=[");
            sb.append(P(D));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e4) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e4.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e10) {
            sb.append("FAILURE, cause=[");
            sb.append(e10.getCause());
            sb.append("]");
        }
    }

    private static CancellationException u(@NullableDecl String str, @NullableDecl Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    private e v(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f35066b;
        } while (!f35063g.a(this, eVar2, e.f35074d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f35077c;
            eVar4.f35077c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.util.concurrent.d$b] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.util.concurrent.d<?>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.util.concurrent.d] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.google.common.util.concurrent.d<V>, com.google.common.util.concurrent.d] */
    public static void x(d<?> dVar) {
        e eVar = null;
        while (true) {
            dVar.K();
            dVar.s();
            e v9 = dVar.v(eVar);
            while (v9 != null) {
                eVar = v9.f35077c;
                Runnable runnable = v9.f35075a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    dVar = gVar.f35083a;
                    if (((d) dVar).f35065a == gVar) {
                        if (f35063g.b(dVar, gVar, A(gVar.f35084b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    y(runnable, v9.f35076b);
                }
                v9 = eVar;
            }
            return;
        }
    }

    private static void y(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f35061e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V z(Object obj) throws ExecutionException {
        if (!(obj instanceof c)) {
            if (!(obj instanceof C0269d)) {
                if (obj == f35064h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((C0269d) obj).f35073a);
        }
        throw u("Task was cancelled.", ((c) obj).f35071b);
    }

    protected void G() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(Q());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NullableDecl
    public String J() {
        Object obj = this.f35065a;
        if (obj instanceof g) {
            return "setFuture=[" + P(((g) obj).f35084b) + "]";
        } else if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    public boolean M(@NullableDecl V v9) {
        if (v9 == null) {
            v9 = (V) f35064h;
        }
        if (f35063g.b(this, null, v9)) {
            x(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    public boolean N(Throwable th) {
        if (f35063g.b(this, null, new C0269d((Throwable) com.google.common.base.a0.E(th)))) {
            x(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    @h3.a
    public boolean O(q0<? extends V> q0Var) {
        C0269d c0269d;
        com.google.common.base.a0.E(q0Var);
        Object obj = this.f35065a;
        if (obj == null) {
            if (q0Var.isDone()) {
                if (f35063g.b(this, null, A(q0Var))) {
                    x(this);
                    return true;
                }
                return false;
            }
            g gVar = new g(this, q0Var);
            if (f35063g.b(this, null, gVar)) {
                try {
                    q0Var.addListener(gVar, t.INSTANCE);
                } catch (Throwable th) {
                    try {
                        c0269d = new C0269d(th);
                    } catch (Throwable unused) {
                        c0269d = C0269d.f35072b;
                    }
                    f35063g.b(this, gVar, c0269d);
                }
                return true;
            }
            obj = this.f35065a;
        }
        if (obj instanceof c) {
            q0Var.cancel(((c) obj).f35070a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean Q() {
        Object obj = this.f35065a;
        return (obj instanceof c) && ((c) obj).f35070a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.internal.a
    @NullableDecl
    public final Throwable a() {
        if (this instanceof i) {
            Object obj = this.f35065a;
            if (obj instanceof C0269d) {
                return ((C0269d) obj).f35073a;
            }
            return null;
        }
        return null;
    }

    @Override // com.google.common.util.concurrent.q0
    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        com.google.common.base.a0.F(runnable, "Runnable was null.");
        com.google.common.base.a0.F(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f35066b) != e.f35074d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f35077c = eVar;
                if (f35063g.a(this, eVar, eVar2)) {
                    return;
                }
                eVar = this.f35066b;
            } while (eVar != e.f35074d);
            y(runnable, executor);
        }
        y(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public boolean cancel(boolean z9) {
        Object obj = this.f35065a;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = f35060d ? new c(z9, new CancellationException("Future.cancel() was called.")) : z9 ? c.f35068c : c.f35069d;
        boolean z10 = false;
        d<V> dVar = this;
        while (true) {
            if (f35063g.b(dVar, obj, cVar)) {
                if (z9) {
                    dVar.G();
                }
                x(dVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                q0<? extends V> q0Var = ((g) obj).f35084b;
                if (q0Var instanceof i) {
                    dVar = (d) q0Var;
                    obj = dVar.f35065a;
                    if (!(obj == null) && !(obj instanceof g)) {
                        return true;
                    }
                    z10 = true;
                } else {
                    q0Var.cancel(z9);
                    return true;
                }
            } else {
                obj = dVar.f35065a;
                if (!(obj instanceof g)) {
                    return z10;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public V get(long j4, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        Locale locale;
        long nanos = timeUnit.toNanos(j4);
        if (!Thread.interrupted()) {
            Object obj = this.f35065a;
            if ((obj != null) & (!(obj instanceof g))) {
                return z(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                l lVar = this.f35067c;
                if (lVar != l.f35091c) {
                    l lVar2 = new l();
                    do {
                        lVar2.a(lVar);
                        if (f35063g.c(this, lVar, lVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f35065a;
                                    if ((obj2 != null) & (!(obj2 instanceof g))) {
                                        return z(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    L(lVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            L(lVar2);
                        } else {
                            lVar = this.f35067c;
                        }
                    } while (lVar != l.f35091c);
                    return z(this.f35065a);
                }
                return z(this.f35065a);
            }
            while (nanos > 0) {
                Object obj3 = this.f35065a;
                if ((obj3 != null) & (!(obj3 instanceof g))) {
                    return z(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String dVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j4 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j10 = -nanos;
                long convert = timeUnit.convert(j10, TimeUnit.NANOSECONDS);
                long nanos2 = j10 - timeUnit.toNanos(convert);
                int i4 = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                boolean z9 = i4 == 0 || nanos2 > 1000;
                if (i4 > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z9) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z9) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + dVar);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f35065a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f35065a;
        return (!(obj instanceof g)) & (obj != null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ForOverride
    @h3.a
    public void s() {
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            r(sb);
        } else {
            try {
                str = J();
            } catch (RuntimeException e4) {
                str = "Exception thrown from implementation: " + e4.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                r(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f35065a;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return z(obj2);
            }
            l lVar = this.f35067c;
            if (lVar != l.f35091c) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (f35063g.c(this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f35065a;
                            } else {
                                L(lVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return z(obj);
                    }
                    lVar = this.f35067c;
                } while (lVar != l.f35091c);
                return z(this.f35065a);
            }
            return z(this.f35065a);
        }
        throw new InterruptedException();
    }
}
