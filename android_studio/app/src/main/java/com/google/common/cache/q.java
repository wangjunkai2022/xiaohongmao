package com.google.common.cache;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;

/* compiled from: Striped64.java */
@h3.c
/* loaded from: classes2.dex */
abstract class q extends Number {

    /* renamed from: d  reason: collision with root package name */
    static final ThreadLocal<int[]> f32567d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    static final Random f32568e = new Random();

    /* renamed from: f  reason: collision with root package name */
    static final int f32569f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g  reason: collision with root package name */
    private static final Unsafe f32570g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f32571h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f32572i;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    volatile transient b[] f32573a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient long f32574b;

    /* renamed from: c  reason: collision with root package name */
    volatile transient int f32575c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Striped64.java */
    /* loaded from: classes2.dex */
    public static class a implements PrivilegedExceptionAction<Unsafe> {
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

    /* compiled from: Striped64.java */
    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: p  reason: collision with root package name */
        private static final Unsafe f32576p;

        /* renamed from: q  reason: collision with root package name */
        private static final long f32577q;

        /* renamed from: a  reason: collision with root package name */
        volatile long f32578a;

        /* renamed from: b  reason: collision with root package name */
        volatile long f32579b;

        /* renamed from: c  reason: collision with root package name */
        volatile long f32580c;

        /* renamed from: d  reason: collision with root package name */
        volatile long f32581d;

        /* renamed from: e  reason: collision with root package name */
        volatile long f32582e;

        /* renamed from: f  reason: collision with root package name */
        volatile long f32583f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f32584g;

        /* renamed from: h  reason: collision with root package name */
        volatile long f32585h;

        /* renamed from: i  reason: collision with root package name */
        volatile long f32586i;

        /* renamed from: j  reason: collision with root package name */
        volatile long f32587j;

        /* renamed from: k  reason: collision with root package name */
        volatile long f32588k;

        /* renamed from: l  reason: collision with root package name */
        volatile long f32589l;

        /* renamed from: m  reason: collision with root package name */
        volatile long f32590m;

        /* renamed from: n  reason: collision with root package name */
        volatile long f32591n;

        /* renamed from: o  reason: collision with root package name */
        volatile long f32592o;

        static {
            try {
                Unsafe j4 = q.j();
                f32576p = j4;
                f32577q = j4.objectFieldOffset(b.class.getDeclaredField("h"));
            } catch (Exception e4) {
                throw new Error(e4);
            }
        }

        b(long j4) {
            this.f32585h = j4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(long j4, long j10) {
            return f32576p.compareAndSwapLong(this, f32577q, j4, j10);
        }
    }

    static {
        try {
            Unsafe j4 = j();
            f32570g = j4;
            f32571h = j4.objectFieldOffset(q.class.getDeclaredField("b"));
            f32572i = j4.objectFieldOffset(q.class.getDeclaredField("c"));
        } catch (Exception e4) {
            throw new Error(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Unsafe j() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                return (Unsafe) AccessController.doPrivileged(new a());
            }
        } catch (PrivilegedActionException e4) {
            throw new RuntimeException("Could not initialize intrinsics", e4.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e(long j4, long j10) {
        return f32570g.compareAndSwapLong(this, f32571h, j4, j10);
    }

    final boolean h() {
        return f32570g.compareAndSwapInt(this, f32572i, 0, 1);
    }

    abstract long i(long j4, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(long j4) {
        b[] bVarArr = this.f32573a;
        this.f32574b = j4;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar != null) {
                    bVar.f32585h = j4;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00ee A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void l(long r17, int[] r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.q.l(long, int[], boolean):void");
    }
}
