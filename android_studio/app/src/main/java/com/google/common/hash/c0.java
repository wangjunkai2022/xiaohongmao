package com.google.common.hash;

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
abstract class c0 extends Number {

    /* renamed from: d  reason: collision with root package name */
    static final ThreadLocal<int[]> f34252d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    static final Random f34253e = new Random();

    /* renamed from: f  reason: collision with root package name */
    static final int f34254f = Runtime.getRuntime().availableProcessors();

    /* renamed from: g  reason: collision with root package name */
    private static final Unsafe f34255g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f34256h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f34257i;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    volatile transient b[] f34258a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient long f34259b;

    /* renamed from: c  reason: collision with root package name */
    volatile transient int f34260c;

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
        private static final Unsafe f34261p;

        /* renamed from: q  reason: collision with root package name */
        private static final long f34262q;

        /* renamed from: a  reason: collision with root package name */
        volatile long f34263a;

        /* renamed from: b  reason: collision with root package name */
        volatile long f34264b;

        /* renamed from: c  reason: collision with root package name */
        volatile long f34265c;

        /* renamed from: d  reason: collision with root package name */
        volatile long f34266d;

        /* renamed from: e  reason: collision with root package name */
        volatile long f34267e;

        /* renamed from: f  reason: collision with root package name */
        volatile long f34268f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f34269g;

        /* renamed from: h  reason: collision with root package name */
        volatile long f34270h;

        /* renamed from: i  reason: collision with root package name */
        volatile long f34271i;

        /* renamed from: j  reason: collision with root package name */
        volatile long f34272j;

        /* renamed from: k  reason: collision with root package name */
        volatile long f34273k;

        /* renamed from: l  reason: collision with root package name */
        volatile long f34274l;

        /* renamed from: m  reason: collision with root package name */
        volatile long f34275m;

        /* renamed from: n  reason: collision with root package name */
        volatile long f34276n;

        /* renamed from: o  reason: collision with root package name */
        volatile long f34277o;

        static {
            try {
                Unsafe j4 = c0.j();
                f34261p = j4;
                f34262q = j4.objectFieldOffset(b.class.getDeclaredField("h"));
            } catch (Exception e4) {
                throw new Error(e4);
            }
        }

        b(long j4) {
            this.f34270h = j4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(long j4, long j10) {
            return f34261p.compareAndSwapLong(this, f34262q, j4, j10);
        }
    }

    static {
        try {
            Unsafe j4 = j();
            f34255g = j4;
            f34256h = j4.objectFieldOffset(c0.class.getDeclaredField("b"));
            f34257i = j4.objectFieldOffset(c0.class.getDeclaredField("c"));
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
        return f34255g.compareAndSwapLong(this, f34256h, j4, j10);
    }

    final boolean h() {
        return f34255g.compareAndSwapInt(this, f34257i, 0, 1);
    }

    abstract long i(long j4, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(long j4) {
        b[] bVarArr = this.f34258a;
        this.f34259b = j4;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar != null) {
                    bVar.f34270h = j4;
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
    public final void l(long r17, @org.checkerframework.checker.nullness.compatqual.NullableDecl int[] r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.hash.c0.l(long, int[], boolean):void");
    }
}
