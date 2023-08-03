package com.google.common.net;

import com.google.common.base.a0;
import com.google.common.base.f0;
import com.google.common.base.v;
import com.google.common.collect.w2;
import com.google.common.hash.o;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.UShort;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: InetAddresses.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f34671a = 4;

    /* renamed from: b  reason: collision with root package name */
    private static final int f34672b = 8;

    /* renamed from: c  reason: collision with root package name */
    private static final f0 f34673c = f0.h('.').f(4);

    /* renamed from: d  reason: collision with root package name */
    private static final f0 f34674d = f0.h(':').f(10);

    /* renamed from: e  reason: collision with root package name */
    private static final Inet4Address f34675e = (Inet4Address) g("127.0.0.1");

    /* renamed from: f  reason: collision with root package name */
    private static final Inet4Address f34676f = (Inet4Address) g("0.0.0.0");

    /* compiled from: InetAddresses.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Inet4Address f34677a;

        /* renamed from: b  reason: collision with root package name */
        private final Inet4Address f34678b;

        /* renamed from: c  reason: collision with root package name */
        private final int f34679c;

        /* renamed from: d  reason: collision with root package name */
        private final int f34680d;

        public a(@NullableDecl Inet4Address inet4Address, @NullableDecl Inet4Address inet4Address2, int i4, int i10) {
            boolean z9 = true;
            a0.k(i4 >= 0 && i4 <= 65535, "port '%s' is out of range (0 <= port <= 0xffff)", i4);
            a0.k((i10 < 0 || i10 > 65535) ? false : false, "flags '%s' is out of range (0 <= flags <= 0xffff)", i10);
            this.f34677a = (Inet4Address) v.a(inet4Address, c.f34676f);
            this.f34678b = (Inet4Address) v.a(inet4Address2, c.f34676f);
            this.f34679c = i4;
            this.f34680d = i10;
        }

        public Inet4Address a() {
            return this.f34678b;
        }

        public int b() {
            return this.f34680d;
        }

        public int c() {
            return this.f34679c;
        }

        public Inet4Address d() {
            return this.f34677a;
        }
    }

    private c() {
    }

    public static boolean A(Inet6Address inet6Address) {
        if (D(inet6Address)) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        return (address[8] | 3) == 3 && address[9] == 0 && address[10] == 94 && address[11] == -2;
    }

    public static boolean B(String str) {
        byte[] w9 = w(str);
        if (w9 == null || w9.length != 16) {
            return false;
        }
        int i4 = 0;
        while (true) {
            if (i4 >= 10) {
                for (int i10 = 10; i10 < 12; i10++) {
                    if (w9[i10] != -1) {
                        return false;
                    }
                }
                return true;
            } else if (w9[i4] != 0) {
                return false;
            } else {
                i4++;
            }
        }
    }

    public static boolean C(InetAddress inetAddress) {
        for (byte b10 : inetAddress.getAddress()) {
            if (b10 != -1) {
                return false;
            }
        }
        return true;
    }

    public static boolean D(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 1 && address[2] == 0 && address[3] == 0;
    }

    public static boolean E(String str) {
        return i(str) != null;
    }

    private static short F(String str) {
        int parseInt = Integer.parseInt(str, 16);
        if (parseInt <= 65535) {
            return (short) parseInt;
        }
        throw new NumberFormatException();
    }

    private static byte G(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt > 255 || (str.startsWith("0") && str.length() > 1)) {
            throw new NumberFormatException();
        }
        return (byte) parseInt;
    }

    @NullableDecl
    private static byte[] H(String str) {
        byte[] bArr = new byte[4];
        try {
            int i4 = 0;
            for (String str2 : f34673c.n(str)) {
                int i10 = i4 + 1;
                bArr[i4] = G(str2);
                i4 = i10;
            }
            if (i4 == 4) {
                return bArr;
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @NullableDecl
    private static byte[] I(String str) {
        int size;
        int i4;
        List<String> o9 = f34674d.o(str);
        if (o9.size() < 3 || o9.size() > 9) {
            return null;
        }
        int i10 = -1;
        for (int i11 = 1; i11 < o9.size() - 1; i11++) {
            if (o9.get(i11).length() == 0) {
                if (i10 >= 0) {
                    return null;
                }
                i10 = i11;
            }
        }
        if (i10 >= 0) {
            i4 = (o9.size() - i10) - 1;
            if (o9.get(0).length() == 0) {
                size = i10 - 1;
                if (size != 0) {
                    return null;
                }
            } else {
                size = i10;
            }
            if (((String) w2.w(o9)).length() == 0 && i4 - 1 != 0) {
                return null;
            }
        } else {
            size = o9.size();
            i4 = 0;
        }
        int i12 = 8 - (size + i4);
        if (i10 < 0 ? i12 == 0 : i12 >= 1) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            for (int i13 = 0; i13 < size; i13++) {
                try {
                    allocate.putShort(F(o9.get(i13)));
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
            for (int i14 = 0; i14 < i12; i14++) {
                allocate.putShort((short) 0);
            }
            while (i4 > 0) {
                allocate.putShort(F(o9.get(o9.size() - i4)));
                i4--;
            }
            return allocate.array();
        }
        return null;
    }

    public static String J(InetAddress inetAddress) {
        a0.E(inetAddress);
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        a0.d(inetAddress instanceof Inet6Address);
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (int i4 = 0; i4 < 8; i4++) {
            int i10 = i4 * 2;
            iArr[i4] = com.google.common.primitives.f.k((byte) 0, (byte) 0, address[i10], address[i10 + 1]);
        }
        d(iArr);
        return u(iArr);
    }

    public static String K(InetAddress inetAddress) {
        if (inetAddress instanceof Inet6Address) {
            return "[" + J(inetAddress) + "]";
        }
        return J(inetAddress);
    }

    private static InetAddress b(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e4) {
            throw new AssertionError(e4);
        }
    }

    public static int c(InetAddress inetAddress) {
        return com.google.common.io.g.h(n(inetAddress).getAddress()).readInt();
    }

    private static void d(int[] iArr) {
        int i4 = -1;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < iArr.length + 1; i12++) {
            if (i12 >= iArr.length || iArr[i12] != 0) {
                if (i11 >= 0) {
                    int i13 = i12 - i11;
                    if (i13 > i4) {
                        i10 = i11;
                        i4 = i13;
                    }
                    i11 = -1;
                }
            } else if (i11 < 0) {
                i11 = i12;
            }
        }
        if (i4 >= 2) {
            Arrays.fill(iArr, i10, i4 + i10, -1);
        }
    }

    @NullableDecl
    private static String e(String str) {
        int lastIndexOf = str.lastIndexOf(58) + 1;
        String substring = str.substring(0, lastIndexOf);
        byte[] H = H(str.substring(lastIndexOf));
        if (H == null) {
            return null;
        }
        String hexString = Integer.toHexString(((H[0] & 255) << 8) | (H[1] & 255));
        String hexString2 = Integer.toHexString((H[3] & 255) | ((H[2] & 255) << 8));
        return substring + hexString + ":" + hexString2;
    }

    public static InetAddress f(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (length >= 0 && address[length] == 0) {
            address[length] = -1;
            length--;
        }
        a0.u(length >= 0, "Decrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] - 1);
        return b(address);
    }

    public static InetAddress g(String str) {
        byte[] w9 = w(str);
        if (w9 != null) {
            return b(w9);
        }
        throw j("'%s' is not an IP string literal.", str);
    }

    public static InetAddress h(String str) {
        InetAddress i4 = i(str);
        if (i4 != null) {
            return i4;
        }
        throw j("Not a valid URI IP literal: '%s'", str);
    }

    @NullableDecl
    private static InetAddress i(String str) {
        int i4;
        a0.E(str);
        if (str.startsWith("[") && str.endsWith("]")) {
            str = str.substring(1, str.length() - 1);
            i4 = 16;
        } else {
            i4 = 4;
        }
        byte[] w9 = w(str);
        if (w9 == null || w9.length != i4) {
            return null;
        }
        return b(w9);
    }

    private static IllegalArgumentException j(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(Locale.ROOT, str, objArr));
    }

    public static Inet4Address k(int i4) {
        return q(com.google.common.primitives.f.C(i4));
    }

    public static InetAddress l(byte[] bArr) throws UnknownHostException {
        byte[] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr2[i4] = bArr[(bArr.length - i4) - 1];
        }
        return InetAddress.getByAddress(bArr2);
    }

    public static Inet4Address m(Inet6Address inet6Address) {
        a0.u(x(inet6Address), "Address '%s' is not a 6to4 address.", J(inet6Address));
        return q(Arrays.copyOfRange(inet6Address.getAddress(), 2, 6));
    }

    public static Inet4Address n(InetAddress inetAddress) {
        boolean z9;
        long j4;
        if (inetAddress instanceof Inet4Address) {
            return (Inet4Address) inetAddress;
        }
        byte[] address = inetAddress.getAddress();
        int i4 = 0;
        while (true) {
            if (i4 >= 15) {
                z9 = true;
                break;
            } else if (address[i4] != 0) {
                z9 = false;
                break;
            } else {
                i4++;
            }
        }
        if (z9 && address[15] == 1) {
            return f34675e;
        }
        if (z9 && address[15] == 0) {
            return f34676f;
        }
        Inet6Address inet6Address = (Inet6Address) inetAddress;
        if (t(inet6Address)) {
            j4 = p(inet6Address).hashCode();
        } else {
            j4 = ByteBuffer.wrap(inet6Address.getAddress(), 0, 8).getLong();
        }
        int b10 = o.y().l(j4).b() | (-536870912);
        if (b10 == -1) {
            b10 = -2;
        }
        return q(com.google.common.primitives.f.C(b10));
    }

    public static Inet4Address o(Inet6Address inet6Address) {
        a0.u(y(inet6Address), "Address '%s' is not IPv4-compatible.", J(inet6Address));
        return q(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static Inet4Address p(Inet6Address inet6Address) {
        if (y(inet6Address)) {
            return o(inet6Address);
        }
        if (x(inet6Address)) {
            return m(inet6Address);
        }
        if (D(inet6Address)) {
            return s(inet6Address).a();
        }
        throw j("'%s' has no embedded IPv4 address.", J(inet6Address));
    }

    private static Inet4Address q(byte[] bArr) {
        a0.k(bArr.length == 4, "Byte array has invalid length for an IPv4 address: %s != 4.", bArr.length);
        return (Inet4Address) b(bArr);
    }

    public static Inet4Address r(Inet6Address inet6Address) {
        a0.u(A(inet6Address), "Address '%s' is not an ISATAP address.", J(inet6Address));
        return q(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    public static a s(Inet6Address inet6Address) {
        a0.u(D(inet6Address), "Address '%s' is not a Teredo address.", J(inet6Address));
        byte[] address = inet6Address.getAddress();
        Inet4Address q9 = q(Arrays.copyOfRange(address, 4, 8));
        int readShort = com.google.common.io.g.i(address, 8).readShort() & UShort.MAX_VALUE;
        int i4 = 65535 & (~com.google.common.io.g.i(address, 10).readShort());
        byte[] copyOfRange = Arrays.copyOfRange(address, 12, 16);
        for (int i10 = 0; i10 < copyOfRange.length; i10++) {
            copyOfRange[i10] = (byte) (~copyOfRange[i10]);
        }
        return new a(q9, q(copyOfRange), i4, readShort);
    }

    public static boolean t(Inet6Address inet6Address) {
        return y(inet6Address) || x(inet6Address) || D(inet6Address);
    }

    private static String u(int[] iArr) {
        StringBuilder sb = new StringBuilder(39);
        int i4 = 0;
        boolean z9 = false;
        while (i4 < iArr.length) {
            boolean z10 = iArr[i4] >= 0;
            if (z10) {
                if (z9) {
                    sb.append(':');
                }
                sb.append(Integer.toHexString(iArr[i4]));
            } else if (i4 == 0 || z9) {
                sb.append("::");
            }
            i4++;
            z9 = z10;
        }
        return sb.toString();
    }

    public static InetAddress v(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (true) {
            if (length < 0 || address[length] != -1) {
                break;
            }
            address[length] = 0;
            length--;
        }
        a0.u(length >= 0, "Incrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] + 1);
        return b(address);
    }

    @NullableDecl
    private static byte[] w(String str) {
        boolean z9 = false;
        boolean z10 = false;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '.') {
                z10 = true;
            } else if (charAt == ':') {
                if (z10) {
                    return null;
                }
                z9 = true;
            } else if (Character.digit(charAt, 16) == -1) {
                return null;
            }
        }
        if (!z9) {
            if (z10) {
                return H(str);
            }
            return null;
        } else if (z10 && (str = e(str)) == null) {
            return null;
        } else {
            return I(str);
        }
    }

    public static boolean x(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 2;
    }

    public static boolean y(Inet6Address inet6Address) {
        if (inet6Address.isIPv4CompatibleAddress()) {
            byte[] address = inet6Address.getAddress();
            return (address[12] == 0 && address[13] == 0 && address[14] == 0 && (address[15] == 0 || address[15] == 1)) ? false : true;
        }
        return false;
    }

    public static boolean z(String str) {
        return w(str) != null;
    }
}
