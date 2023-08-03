package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Arrays;
import java.util.Comparator;
import sun.misc.Unsafe;

/* compiled from: UnsignedBytes.java */
@h3.c
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final byte f34879a = Byte.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    public static final byte f34880b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f34881c = 255;

    /* compiled from: UnsignedBytes.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final String f34882a = a.class.getName() + "$UnsafeComparator";

        /* renamed from: b  reason: collision with root package name */
        static final Comparator<byte[]> f34883b = a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UnsignedBytes.java */
        /* renamed from: com.google.common.primitives.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public enum EnumC0260a implements Comparator<byte[]> {
            INSTANCE;

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                for (int i4 = 0; i4 < min; i4++) {
                    int b10 = l.b(bArr[i4], bArr2[i4]);
                    if (b10 != 0) {
                        return b10;
                    }
                }
                return bArr.length - bArr2.length;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
            }
        }

        /* compiled from: UnsignedBytes.java */
        @h3.d
        /* loaded from: classes2.dex */
        enum b implements Comparator<byte[]> {
            INSTANCE;
            

            /* renamed from: b  reason: collision with root package name */
            static final boolean f34887b = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);

            /* renamed from: c  reason: collision with root package name */
            static final Unsafe f34888c;

            /* renamed from: d  reason: collision with root package name */
            static final int f34889d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: UnsignedBytes.java */
            /* renamed from: com.google.common.primitives.l$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static class C0261a implements PrivilegedExceptionAction<Unsafe> {
                C0261a() {
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
                Unsafe b10 = b();
                f34888c = b10;
                int arrayBaseOffset = b10.arrayBaseOffset(byte[].class);
                f34889d = arrayBaseOffset;
                if (!"64".equals(System.getProperty("sun.arch.data.model")) || arrayBaseOffset % 8 != 0 || b10.arrayIndexScale(byte[].class) != 1) {
                    throw new Error();
                }
            }

            private static Unsafe b() {
                try {
                    try {
                        return Unsafe.getUnsafe();
                    } catch (SecurityException unused) {
                        return (Unsafe) AccessController.doPrivileged(new C0261a());
                    }
                } catch (PrivilegedActionException e4) {
                    throw new RuntimeException("Could not initialize intrinsics", e4.getCause());
                }
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                int i4 = min & (-8);
                int i10 = 0;
                while (i10 < i4) {
                    Unsafe unsafe = f34888c;
                    int i11 = f34889d;
                    long j4 = i10;
                    long j10 = unsafe.getLong(bArr, i11 + j4);
                    long j11 = unsafe.getLong(bArr2, i11 + j4);
                    if (j10 != j11) {
                        if (f34887b) {
                            return n.a(j10, j11);
                        }
                        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j10 ^ j11) & (-8);
                        return ((int) ((j10 >>> numberOfTrailingZeros) & 255)) - ((int) ((j11 >>> numberOfTrailingZeros) & 255));
                    }
                    i10 += 8;
                }
                while (i10 < min) {
                    int b10 = l.b(bArr[i10], bArr2[i10]);
                    if (b10 != 0) {
                        return b10;
                    }
                    i10++;
                }
                return bArr.length - bArr2.length;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
            }
        }

        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        static Comparator<byte[]> a() {
            try {
                return (Comparator) Class.forName(f34882a).getEnumConstants()[0];
            } catch (Throwable unused) {
                return l.f();
            }
        }
    }

    private l() {
    }

    @CanIgnoreReturnValue
    public static byte a(long j4) {
        a0.p((j4 >> 8) == 0, "out of range: %s", j4);
        return (byte) j4;
    }

    public static int b(byte b10, byte b11) {
        return p(b10) - p(b11);
    }

    private static byte c(byte b10) {
        return (byte) (b10 ^ 128);
    }

    public static String d(String str, byte... bArr) {
        a0.E(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * (str.length() + 3));
        sb.append(p(bArr[0]));
        for (int i4 = 1; i4 < bArr.length; i4++) {
            sb.append(str);
            sb.append(q(bArr[i4]));
        }
        return sb.toString();
    }

    public static Comparator<byte[]> e() {
        return a.f34883b;
    }

    @h3.d
    static Comparator<byte[]> f() {
        return a.EnumC0260a.INSTANCE;
    }

    public static byte g(byte... bArr) {
        a0.d(bArr.length > 0);
        int p9 = p(bArr[0]);
        for (int i4 = 1; i4 < bArr.length; i4++) {
            int p10 = p(bArr[i4]);
            if (p10 > p9) {
                p9 = p10;
            }
        }
        return (byte) p9;
    }

    public static byte h(byte... bArr) {
        a0.d(bArr.length > 0);
        int p9 = p(bArr[0]);
        for (int i4 = 1; i4 < bArr.length; i4++) {
            int p10 = p(bArr[i4]);
            if (p10 < p9) {
                p9 = p10;
            }
        }
        return (byte) p9;
    }

    @CanIgnoreReturnValue
    @h3.a
    public static byte i(String str) {
        return j(str, 10);
    }

    @CanIgnoreReturnValue
    @h3.a
    public static byte j(String str, int i4) {
        int parseInt = Integer.parseInt((String) a0.E(str), i4);
        if ((parseInt >> 8) == 0) {
            return (byte) parseInt;
        }
        throw new NumberFormatException("out of range: " + parseInt);
    }

    public static byte k(long j4) {
        if (j4 > p((byte) -1)) {
            return (byte) -1;
        }
        if (j4 < 0) {
            return (byte) 0;
        }
        return (byte) j4;
    }

    public static void l(byte[] bArr) {
        a0.E(bArr);
        m(bArr, 0, bArr.length);
    }

    public static void m(byte[] bArr, int i4, int i10) {
        a0.E(bArr);
        a0.f0(i4, i10, bArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            bArr[i11] = c(bArr[i11]);
        }
        Arrays.sort(bArr, i4, i10);
        while (i4 < i10) {
            bArr[i4] = c(bArr[i4]);
            i4++;
        }
    }

    public static void n(byte[] bArr) {
        a0.E(bArr);
        o(bArr, 0, bArr.length);
    }

    public static void o(byte[] bArr, int i4, int i10) {
        a0.E(bArr);
        a0.f0(i4, i10, bArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            bArr[i11] = (byte) (bArr[i11] ^ Byte.MAX_VALUE);
        }
        Arrays.sort(bArr, i4, i10);
        while (i4 < i10) {
            bArr[i4] = (byte) (bArr[i4] ^ Byte.MAX_VALUE);
            i4++;
        }
    }

    public static int p(byte b10) {
        return b10 & 255;
    }

    @h3.a
    public static String q(byte b10) {
        return r(b10, 10);
    }

    @h3.a
    public static String r(byte b10, int i4) {
        a0.k(i4 >= 2 && i4 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i4);
        return Integer.toString(p(b10), i4);
    }
}
