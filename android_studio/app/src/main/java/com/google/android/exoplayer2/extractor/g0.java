package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import java.util.Arrays;

/* compiled from: VorbisUtil.java */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22256a = "VorbisUtil";

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f22257a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22258b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f22259c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22260d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f22261e;

        public a(int i4, int i10, long[] jArr, int i11, boolean z9) {
            this.f22257a = i4;
            this.f22258b = i10;
            this.f22259c = jArr;
            this.f22260d = i11;
            this.f22261e = z9;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f22262a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f22263b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22264c;

        public b(String str, String[] strArr, int i4) {
            this.f22262a = str;
            this.f22263b = strArr;
            this.f22264c = i4;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f22265a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22266b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22267c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22268d;

        public c(boolean z9, int i4, int i10, int i11) {
            this.f22265a = z9;
            this.f22266b = i4;
            this.f22267c = i10;
            this.f22268d = i11;
        }
    }

    /* compiled from: VorbisUtil.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f22269a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22270b;

        /* renamed from: c  reason: collision with root package name */
        public final int f22271c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22272d;

        /* renamed from: e  reason: collision with root package name */
        public final int f22273e;

        /* renamed from: f  reason: collision with root package name */
        public final int f22274f;

        /* renamed from: g  reason: collision with root package name */
        public final int f22275g;

        /* renamed from: h  reason: collision with root package name */
        public final int f22276h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f22277i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f22278j;

        public d(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z9, byte[] bArr) {
            this.f22269a = i4;
            this.f22270b = i10;
            this.f22271c = i11;
            this.f22272d = i12;
            this.f22273e = i13;
            this.f22274f = i14;
            this.f22275g = i15;
            this.f22276h = i16;
            this.f22277i = z9;
            this.f22278j = bArr;
        }
    }

    private g0() {
    }

    public static int a(int i4) {
        int i10 = 0;
        while (i4 > 0) {
            i10++;
            i4 >>>= 1;
        }
        return i10;
    }

    private static long b(long j4, long j10) {
        return (long) Math.floor(Math.pow(j4, 1.0d / j10));
    }

    private static a c(f0 f0Var) throws ParserException {
        if (f0Var.e(24) == 5653314) {
            int e4 = f0Var.e(16);
            int e10 = f0Var.e(24);
            long[] jArr = new long[e10];
            boolean d4 = f0Var.d();
            long j4 = 0;
            if (!d4) {
                boolean d10 = f0Var.d();
                for (int i4 = 0; i4 < e10; i4++) {
                    if (d10) {
                        if (f0Var.d()) {
                            jArr[i4] = f0Var.e(5) + 1;
                        } else {
                            jArr[i4] = 0;
                        }
                    } else {
                        jArr[i4] = f0Var.e(5) + 1;
                    }
                }
            } else {
                int e11 = f0Var.e(5) + 1;
                int i10 = 0;
                while (i10 < e10) {
                    int e12 = f0Var.e(a(e10 - i10));
                    for (int i11 = 0; i11 < e12 && i10 < e10; i11++) {
                        jArr[i10] = e11;
                        i10++;
                    }
                    e11++;
                }
            }
            int e13 = f0Var.e(4);
            if (e13 <= 2) {
                if (e13 == 1 || e13 == 2) {
                    f0Var.h(32);
                    f0Var.h(32);
                    int e14 = f0Var.e(4) + 1;
                    f0Var.h(1);
                    if (e13 != 1) {
                        j4 = e10 * e4;
                    } else if (e4 != 0) {
                        j4 = b(e10, e4);
                    }
                    f0Var.h((int) (j4 * e14));
                }
                return new a(e4, e10, jArr, e13, d4);
            }
            StringBuilder sb = new StringBuilder(53);
            sb.append("lookup type greater than 2 not decodable: ");
            sb.append(e13);
            throw new ParserException(sb.toString());
        }
        int c10 = f0Var.c();
        StringBuilder sb2 = new StringBuilder(66);
        sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
        sb2.append(c10);
        throw new ParserException(sb2.toString());
    }

    private static void d(f0 f0Var) throws ParserException {
        int e4 = f0Var.e(6) + 1;
        for (int i4 = 0; i4 < e4; i4++) {
            int e10 = f0Var.e(16);
            if (e10 == 0) {
                f0Var.h(8);
                f0Var.h(16);
                f0Var.h(16);
                f0Var.h(6);
                f0Var.h(8);
                int e11 = f0Var.e(4) + 1;
                for (int i10 = 0; i10 < e11; i10++) {
                    f0Var.h(8);
                }
            } else if (e10 == 1) {
                int e12 = f0Var.e(5);
                int i11 = -1;
                int[] iArr = new int[e12];
                for (int i12 = 0; i12 < e12; i12++) {
                    iArr[i12] = f0Var.e(4);
                    if (iArr[i12] > i11) {
                        i11 = iArr[i12];
                    }
                }
                int i13 = i11 + 1;
                int[] iArr2 = new int[i13];
                for (int i14 = 0; i14 < i13; i14++) {
                    iArr2[i14] = f0Var.e(3) + 1;
                    int e13 = f0Var.e(2);
                    if (e13 > 0) {
                        f0Var.h(8);
                    }
                    for (int i15 = 0; i15 < (1 << e13); i15++) {
                        f0Var.h(8);
                    }
                }
                f0Var.h(2);
                int e14 = f0Var.e(4);
                int i16 = 0;
                int i17 = 0;
                for (int i18 = 0; i18 < e12; i18++) {
                    i16 += iArr2[iArr[i18]];
                    while (i17 < i16) {
                        f0Var.h(e14);
                        i17++;
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder(52);
                sb.append("floor type greater than 1 not decodable: ");
                sb.append(e10);
                throw new ParserException(sb.toString());
            }
        }
    }

    private static void e(int i4, f0 f0Var) throws ParserException {
        int e4 = f0Var.e(6) + 1;
        for (int i10 = 0; i10 < e4; i10++) {
            int e10 = f0Var.e(16);
            if (e10 != 0) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("mapping type other than 0 not supported: ");
                sb.append(e10);
                com.google.android.exoplayer2.util.w.d(f22256a, sb.toString());
            } else {
                int e11 = f0Var.d() ? f0Var.e(4) + 1 : 1;
                if (f0Var.d()) {
                    int e12 = f0Var.e(8) + 1;
                    for (int i11 = 0; i11 < e12; i11++) {
                        int i12 = i4 - 1;
                        f0Var.h(a(i12));
                        f0Var.h(a(i12));
                    }
                }
                if (f0Var.e(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (e11 > 1) {
                    for (int i13 = 0; i13 < i4; i13++) {
                        f0Var.h(4);
                    }
                }
                for (int i14 = 0; i14 < e11; i14++) {
                    f0Var.h(8);
                    f0Var.h(8);
                    f0Var.h(8);
                }
            }
        }
    }

    private static c[] f(f0 f0Var) {
        int e4 = f0Var.e(6) + 1;
        c[] cVarArr = new c[e4];
        for (int i4 = 0; i4 < e4; i4++) {
            cVarArr[i4] = new c(f0Var.d(), f0Var.e(16), f0Var.e(16), f0Var.e(8));
        }
        return cVarArr;
    }

    private static void g(f0 f0Var) throws ParserException {
        int e4 = f0Var.e(6) + 1;
        for (int i4 = 0; i4 < e4; i4++) {
            if (f0Var.e(16) <= 2) {
                f0Var.h(24);
                f0Var.h(24);
                f0Var.h(24);
                int e10 = f0Var.e(6) + 1;
                f0Var.h(8);
                int[] iArr = new int[e10];
                for (int i10 = 0; i10 < e10; i10++) {
                    iArr[i10] = ((f0Var.d() ? f0Var.e(5) : 0) * 8) + f0Var.e(3);
                }
                for (int i11 = 0; i11 < e10; i11++) {
                    for (int i12 = 0; i12 < 8; i12++) {
                        if ((iArr[i11] & (1 << i12)) != 0) {
                            f0Var.h(8);
                        }
                    }
                }
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }

    public static b h(com.google.android.exoplayer2.util.h0 h0Var) throws ParserException {
        return i(h0Var, true, true);
    }

    public static b i(com.google.android.exoplayer2.util.h0 h0Var, boolean z9, boolean z10) throws ParserException {
        if (z9) {
            l(3, h0Var, false);
        }
        String D = h0Var.D((int) h0Var.v());
        int length = 11 + D.length();
        long v9 = h0Var.v();
        String[] strArr = new String[(int) v9];
        int i4 = length + 4;
        for (int i10 = 0; i10 < v9; i10++) {
            strArr[i10] = h0Var.D((int) h0Var.v());
            i4 = i4 + 4 + strArr[i10].length();
        }
        if (z10 && (h0Var.G() & 1) == 0) {
            throw new ParserException("framing bit expected to be set");
        }
        return new b(D, strArr, i4 + 1);
    }

    public static d j(com.google.android.exoplayer2.util.h0 h0Var) throws ParserException {
        l(1, h0Var, false);
        int x9 = h0Var.x();
        int G = h0Var.G();
        int x10 = h0Var.x();
        int r9 = h0Var.r();
        if (r9 <= 0) {
            r9 = -1;
        }
        int r10 = h0Var.r();
        if (r10 <= 0) {
            r10 = -1;
        }
        int r11 = h0Var.r();
        if (r11 <= 0) {
            r11 = -1;
        }
        int G2 = h0Var.G();
        return new d(x9, G, x10, r9, r10, r11, (int) Math.pow(2.0d, G2 & 15), (int) Math.pow(2.0d, (G2 & com.google.android.exoplayer2.extractor.ts.a0.A) >> 4), (h0Var.G() & 1) > 0, Arrays.copyOf(h0Var.d(), h0Var.f()));
    }

    public static c[] k(com.google.android.exoplayer2.util.h0 h0Var, int i4) throws ParserException {
        l(5, h0Var, false);
        int G = h0Var.G() + 1;
        f0 f0Var = new f0(h0Var.d());
        f0Var.h(h0Var.e() * 8);
        for (int i10 = 0; i10 < G; i10++) {
            c(f0Var);
        }
        int e4 = f0Var.e(6) + 1;
        for (int i11 = 0; i11 < e4; i11++) {
            if (f0Var.e(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        d(f0Var);
        g(f0Var);
        e(i4, f0Var);
        c[] f10 = f(f0Var);
        if (f0Var.d()) {
            return f10;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    public static boolean l(int i4, com.google.android.exoplayer2.util.h0 h0Var, boolean z9) throws ParserException {
        if (h0Var.a() < 7) {
            if (z9) {
                return false;
            }
            int a10 = h0Var.a();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(a10);
            throw new ParserException(sb.toString());
        } else if (h0Var.G() != i4) {
            if (z9) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i4));
            throw new ParserException(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "));
        } else if (h0Var.G() == 118 && h0Var.G() == 111 && h0Var.G() == 114 && h0Var.G() == 98 && h0Var.G() == 105 && h0Var.G() == 115) {
            return true;
        } else {
            if (z9) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }
}
