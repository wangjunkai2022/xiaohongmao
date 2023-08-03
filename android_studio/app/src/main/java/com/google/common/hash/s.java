package com.google.common.hash;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* compiled from: LittleEndianByteArray.java */
/* loaded from: classes2.dex */
final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final c f34335a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f34336b = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LittleEndianByteArray.java */
    /* loaded from: classes2.dex */
    private static abstract class b implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final b f34337a;

        /* renamed from: b  reason: collision with root package name */
        private static final /* synthetic */ b[] f34338b;

        /* compiled from: LittleEndianByteArray.java */
        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.hash.s.c
            public long a(byte[] bArr, int i4) {
                return com.google.common.primitives.g.j(bArr[i4 + 7], bArr[i4 + 6], bArr[i4 + 5], bArr[i4 + 4], bArr[i4 + 3], bArr[i4 + 2], bArr[i4 + 1], bArr[i4]);
            }

            @Override // com.google.common.hash.s.c
            public void b(byte[] bArr, int i4, long j4) {
                long j10 = 255;
                for (int i10 = 0; i10 < 8; i10++) {
                    bArr[i4 + i10] = (byte) ((j4 & j10) >> (i10 * 8));
                    j10 <<= 8;
                }
            }
        }

        static {
            a aVar = new a("INSTANCE", 0);
            f34337a = aVar;
            f34338b = new b[]{aVar};
        }

        private b(String str, int i4) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f34338b.clone();
        }
    }

    /* compiled from: LittleEndianByteArray.java */
    /* loaded from: classes2.dex */
    private interface c {
        long a(byte[] bArr, int i4);

        void b(byte[] bArr, int i4, long j4);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LittleEndianByteArray.java */
    /* loaded from: classes2.dex */
    private static abstract class d implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final d f34339a;

        /* renamed from: b  reason: collision with root package name */
        public static final d f34340b;

        /* renamed from: c  reason: collision with root package name */
        private static final Unsafe f34341c;

        /* renamed from: d  reason: collision with root package name */
        private static final int f34342d;

        /* renamed from: e  reason: collision with root package name */
        private static final /* synthetic */ d[] f34343e;

        /* compiled from: LittleEndianByteArray.java */
        /* loaded from: classes2.dex */
        enum a extends d {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.hash.s.c
            public long a(byte[] bArr, int i4) {
                return d.f34341c.getLong(bArr, i4 + d.f34342d);
            }

            @Override // com.google.common.hash.s.c
            public void b(byte[] bArr, int i4, long j4) {
                d.f34341c.putLong(bArr, i4 + d.f34342d, j4);
            }
        }

        /* compiled from: LittleEndianByteArray.java */
        /* loaded from: classes2.dex */
        enum b extends d {
            b(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.hash.s.c
            public long a(byte[] bArr, int i4) {
                return Long.reverseBytes(d.f34341c.getLong(bArr, i4 + d.f34342d));
            }

            @Override // com.google.common.hash.s.c
            public void b(byte[] bArr, int i4, long j4) {
                d.f34341c.putLong(bArr, i4 + d.f34342d, Long.reverseBytes(j4));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LittleEndianByteArray.java */
        /* loaded from: classes2.dex */
        public static class c implements PrivilegedExceptionAction<Unsafe> {
            c() {
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
            a aVar = new a("UNSAFE_LITTLE_ENDIAN", 0);
            f34339a = aVar;
            b bVar = new b("UNSAFE_BIG_ENDIAN", 1);
            f34340b = bVar;
            f34343e = new d[]{aVar, bVar};
            Unsafe e4 = e();
            f34341c = e4;
            f34342d = e4.arrayBaseOffset(byte[].class);
            if (e4.arrayIndexScale(byte[].class) != 1) {
                throw new AssertionError();
            }
        }

        private d(String str, int i4) {
        }

        private static Unsafe e() {
            try {
                try {
                    return Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    return (Unsafe) AccessController.doPrivileged(new c());
                }
            } catch (PrivilegedActionException e4) {
                throw new RuntimeException("Could not initialize intrinsics", e4.getCause());
            }
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) f34343e.clone();
        }
    }

    static {
        c cVar = b.f34337a;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                cVar = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? d.f34339a : d.f34340b;
            }
        } catch (Throwable unused) {
        }
        f34335a = cVar;
    }

    private s() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i4) {
        return ((bArr[i4 + 3] & 255) << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i4) {
        return f34335a.a(bArr, i4);
    }

    static long c(byte[] bArr, int i4, int i10) {
        int min = Math.min(i10, 8);
        long j4 = 0;
        for (int i11 = 0; i11 < min; i11++) {
            j4 |= (bArr[i4 + i11] & 255) << (i11 * 8);
        }
        return j4;
    }

    static void d(byte[] bArr, int i4, long j4) {
        f34335a.b(bArr, i4, j4);
    }

    static boolean e() {
        return f34335a instanceof d;
    }
}
