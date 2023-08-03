package com.fasterxml.jackson.core.io;

import shaded.org.apache.commons.codec.language.l;

/* compiled from: NumberOutput.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static int f13956a = 1000000;

    /* renamed from: b  reason: collision with root package name */
    private static int f13957b = 1000000000;

    /* renamed from: c  reason: collision with root package name */
    private static long f13958c = 1000000000;

    /* renamed from: d  reason: collision with root package name */
    private static long f13959d = -2147483648L;

    /* renamed from: e  reason: collision with root package name */
    private static long f13960e = 2147483647L;

    /* renamed from: f  reason: collision with root package name */
    static final String f13961f = String.valueOf(Integer.MIN_VALUE);

    /* renamed from: g  reason: collision with root package name */
    static final String f13962g = String.valueOf(Long.MIN_VALUE);

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f13963h = new int[1000];

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f13964i;

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f13965j;

    static {
        int i4 = 0;
        for (int i10 = 0; i10 < 10; i10++) {
            for (int i11 = 0; i11 < 10; i11++) {
                int i12 = 0;
                while (i12 < 10) {
                    f13963h[i4] = ((i10 + 48) << 16) | ((i11 + 48) << 8) | (i12 + 48);
                    i12++;
                    i4++;
                }
            }
        }
        f13964i = new String[]{"0", "1", "2", "3", g5.h.f67840d, g5.h.f67841e, "6", g5.h.f67842f, g5.h.f67843g, g5.h.f67844h, "10"};
        f13965j = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    private static int a(int i4, byte[] bArr, int i10) {
        int i11 = f13963h[i4];
        int i12 = i10 + 1;
        bArr[i10] = (byte) (i11 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i11 >> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) i11;
        return i14;
    }

    private static int b(int i4, char[] cArr, int i10) {
        int i11 = f13963h[i4];
        int i12 = i10 + 1;
        cArr[i10] = (char) (i11 >> 16);
        int i13 = i12 + 1;
        cArr[i12] = (char) ((i11 >> 8) & 127);
        int i14 = i13 + 1;
        cArr[i13] = (char) (i11 & 127);
        return i14;
    }

    private static int c(int i4, byte[] bArr, int i10) {
        int i11 = f13963h[i4];
        if (i4 > 9) {
            if (i4 > 99) {
                bArr[i10] = (byte) (i11 >> 16);
                i10++;
            }
            bArr[i10] = (byte) (i11 >> 8);
            i10++;
        }
        int i12 = i10 + 1;
        bArr[i10] = (byte) i11;
        return i12;
    }

    private static int d(int i4, char[] cArr, int i10) {
        int i11 = f13963h[i4];
        if (i4 > 9) {
            if (i4 > 99) {
                cArr[i10] = (char) (i11 >> 16);
                i10++;
            }
            cArr[i10] = (char) ((i11 >> 8) & 127);
            i10++;
        }
        int i12 = i10 + 1;
        cArr[i10] = (char) (i11 & 127);
        return i12;
    }

    private static int e(int i4, byte[] bArr, int i10) {
        int i11 = i4 / 1000;
        int i12 = i4 - (i11 * 1000);
        int i13 = i11 / 1000;
        int i14 = i11 - (i13 * 1000);
        int[] iArr = f13963h;
        int i15 = iArr[i13];
        int i16 = i10 + 1;
        bArr[i10] = (byte) (i15 >> 16);
        int i17 = i16 + 1;
        bArr[i16] = (byte) (i15 >> 8);
        int i18 = i17 + 1;
        bArr[i17] = (byte) i15;
        int i19 = iArr[i14];
        int i20 = i18 + 1;
        bArr[i18] = (byte) (i19 >> 16);
        int i21 = i20 + 1;
        bArr[i20] = (byte) (i19 >> 8);
        int i22 = i21 + 1;
        bArr[i21] = (byte) i19;
        int i23 = iArr[i12];
        int i24 = i22 + 1;
        bArr[i22] = (byte) (i23 >> 16);
        int i25 = i24 + 1;
        bArr[i24] = (byte) (i23 >> 8);
        int i26 = i25 + 1;
        bArr[i25] = (byte) i23;
        return i26;
    }

    private static int f(int i4, char[] cArr, int i10) {
        int i11 = i4 / 1000;
        int i12 = i4 - (i11 * 1000);
        int i13 = i11 / 1000;
        int[] iArr = f13963h;
        int i14 = iArr[i13];
        int i15 = i10 + 1;
        cArr[i10] = (char) (i14 >> 16);
        int i16 = i15 + 1;
        cArr[i15] = (char) ((i14 >> 8) & 127);
        int i17 = i16 + 1;
        cArr[i16] = (char) (i14 & 127);
        int i18 = iArr[i11 - (i13 * 1000)];
        int i19 = i17 + 1;
        cArr[i17] = (char) (i18 >> 16);
        int i20 = i19 + 1;
        cArr[i19] = (char) ((i18 >> 8) & 127);
        int i21 = i20 + 1;
        cArr[i20] = (char) (i18 & 127);
        int i22 = iArr[i12];
        int i23 = i21 + 1;
        cArr[i21] = (char) (i22 >> 16);
        int i24 = i23 + 1;
        cArr[i23] = (char) ((i22 >> 8) & 127);
        int i25 = i24 + 1;
        cArr[i24] = (char) (i22 & 127);
        return i25;
    }

    private static int g(byte[] bArr, int i4) {
        int length = f13961f.length();
        int i10 = 0;
        while (i10 < length) {
            bArr[i4] = (byte) f13961f.charAt(i10);
            i10++;
            i4++;
        }
        return i4;
    }

    private static int h(char[] cArr, int i4) {
        String str = f13961f;
        int length = str.length();
        str.getChars(0, length, cArr, i4);
        return i4 + length;
    }

    private static int i(byte[] bArr, int i4) {
        int length = f13962g.length();
        int i10 = 0;
        while (i10 < length) {
            bArr[i4] = (byte) f13962g.charAt(i10);
            i10++;
            i4++;
        }
        return i4;
    }

    private static int j(char[] cArr, int i4) {
        String str = f13962g;
        int length = str.length();
        str.getChars(0, length, cArr, i4);
        return i4 + length;
    }

    private static int k(int i4, byte[] bArr, int i10) {
        if (i4 < f13956a) {
            if (i4 < 1000) {
                return c(i4, bArr, i10);
            }
            int i11 = i4 / 1000;
            return m(bArr, i10, i11, i4 - (i11 * 1000));
        }
        int i12 = i4 / 1000;
        int i13 = i4 - (i12 * 1000);
        int i14 = i12 / 1000;
        int c10 = c(i14, bArr, i10);
        int[] iArr = f13963h;
        int i15 = iArr[i12 - (i14 * 1000)];
        int i16 = c10 + 1;
        bArr[c10] = (byte) (i15 >> 16);
        int i17 = i16 + 1;
        bArr[i16] = (byte) (i15 >> 8);
        int i18 = i17 + 1;
        bArr[i17] = (byte) i15;
        int i19 = iArr[i13];
        int i20 = i18 + 1;
        bArr[i18] = (byte) (i19 >> 16);
        int i21 = i20 + 1;
        bArr[i20] = (byte) (i19 >> 8);
        int i22 = i21 + 1;
        bArr[i21] = (byte) i19;
        return i22;
    }

    private static int l(int i4, char[] cArr, int i10) {
        if (i4 < f13956a) {
            if (i4 < 1000) {
                return d(i4, cArr, i10);
            }
            int i11 = i4 / 1000;
            return n(cArr, i10, i11, i4 - (i11 * 1000));
        }
        int i12 = i4 / 1000;
        int i13 = i4 - (i12 * 1000);
        int i14 = i12 / 1000;
        int d4 = d(i14, cArr, i10);
        int[] iArr = f13963h;
        int i15 = iArr[i12 - (i14 * 1000)];
        int i16 = d4 + 1;
        cArr[d4] = (char) (i15 >> 16);
        int i17 = i16 + 1;
        cArr[i16] = (char) ((i15 >> 8) & 127);
        int i18 = i17 + 1;
        cArr[i17] = (char) (i15 & 127);
        int i19 = iArr[i13];
        int i20 = i18 + 1;
        cArr[i18] = (char) (i19 >> 16);
        int i21 = i20 + 1;
        cArr[i20] = (char) ((i19 >> 8) & 127);
        int i22 = i21 + 1;
        cArr[i21] = (char) (i19 & 127);
        return i22;
    }

    private static int m(byte[] bArr, int i4, int i10, int i11) {
        int[] iArr = f13963h;
        int i12 = iArr[i10];
        if (i10 > 9) {
            if (i10 > 99) {
                bArr[i4] = (byte) (i12 >> 16);
                i4++;
            }
            bArr[i4] = (byte) (i12 >> 8);
            i4++;
        }
        int i13 = i4 + 1;
        bArr[i4] = (byte) i12;
        int i14 = iArr[i11];
        int i15 = i13 + 1;
        bArr[i13] = (byte) (i14 >> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (i14 >> 8);
        int i17 = i16 + 1;
        bArr[i16] = (byte) i14;
        return i17;
    }

    private static int n(char[] cArr, int i4, int i10, int i11) {
        int[] iArr = f13963h;
        int i12 = iArr[i10];
        if (i10 > 9) {
            if (i10 > 99) {
                cArr[i4] = (char) (i12 >> 16);
                i4++;
            }
            cArr[i4] = (char) ((i12 >> 8) & 127);
            i4++;
        }
        int i13 = i4 + 1;
        cArr[i4] = (char) (i12 & 127);
        int i14 = iArr[i11];
        int i15 = i13 + 1;
        cArr[i13] = (char) (i14 >> 16);
        int i16 = i15 + 1;
        cArr[i15] = (char) ((i14 >> 8) & 127);
        int i17 = i16 + 1;
        cArr[i16] = (char) (i14 & 127);
        return i17;
    }

    public static boolean o(double d4) {
        return Double.isNaN(d4) || Double.isInfinite(d4);
    }

    public static boolean p(float f10) {
        return Float.isNaN(f10) || Float.isInfinite(f10);
    }

    public static int q(int i4, byte[] bArr, int i10) {
        int i11;
        if (i4 < 0) {
            if (i4 == Integer.MIN_VALUE) {
                return g(bArr, i10);
            }
            bArr[i10] = 45;
            i4 = -i4;
            i10++;
        }
        if (i4 < f13956a) {
            if (i4 >= 1000) {
                int i12 = i4 / 1000;
                return a(i4 - (i12 * 1000), bArr, c(i12, bArr, i10));
            } else if (i4 < 10) {
                int i13 = i10 + 1;
                bArr[i10] = (byte) (i4 + 48);
                return i13;
            } else {
                return c(i4, bArr, i10);
            }
        }
        int i14 = f13957b;
        if (i4 >= i14) {
            int i15 = i4 - i14;
            if (i15 >= i14) {
                i15 -= i14;
                i11 = i10 + 1;
                bArr[i10] = 50;
            } else {
                i11 = i10 + 1;
                bArr[i10] = 49;
            }
            return e(i15, bArr, i11);
        }
        int i16 = i4 / 1000;
        int i17 = i16 / 1000;
        return a(i4 - (i16 * 1000), bArr, a(i16 - (i17 * 1000), bArr, c(i17, bArr, i10)));
    }

    public static int r(int i4, char[] cArr, int i10) {
        int i11;
        if (i4 < 0) {
            if (i4 == Integer.MIN_VALUE) {
                return h(cArr, i10);
            }
            cArr[i10] = l.f93713d;
            i4 = -i4;
            i10++;
        }
        if (i4 < f13956a) {
            if (i4 >= 1000) {
                int i12 = i4 / 1000;
                return b(i4 - (i12 * 1000), cArr, d(i12, cArr, i10));
            } else if (i4 < 10) {
                cArr[i10] = (char) (i4 + 48);
                return i10 + 1;
            } else {
                return d(i4, cArr, i10);
            }
        }
        int i13 = f13957b;
        if (i4 >= i13) {
            int i14 = i4 - i13;
            if (i14 >= i13) {
                i14 -= i13;
                i11 = i10 + 1;
                cArr[i10] = '2';
            } else {
                i11 = i10 + 1;
                cArr[i10] = '1';
            }
            return f(i14, cArr, i11);
        }
        int i15 = i4 / 1000;
        int i16 = i15 / 1000;
        return b(i4 - (i15 * 1000), cArr, b(i15 - (i16 * 1000), cArr, d(i16, cArr, i10)));
    }

    public static int s(long j4, byte[] bArr, int i4) {
        int e4;
        if (j4 < 0) {
            if (j4 > f13959d) {
                return q((int) j4, bArr, i4);
            }
            if (j4 == Long.MIN_VALUE) {
                return i(bArr, i4);
            }
            bArr[i4] = 45;
            j4 = -j4;
            i4++;
        } else if (j4 <= f13960e) {
            return q((int) j4, bArr, i4);
        }
        long j10 = f13958c;
        long j11 = j4 / j10;
        long j12 = j4 - (j11 * j10);
        if (j11 < j10) {
            e4 = k((int) j11, bArr, i4);
        } else {
            long j13 = j11 / j10;
            int c10 = c((int) j13, bArr, i4);
            e4 = e((int) (j11 - (j10 * j13)), bArr, c10);
        }
        return e((int) j12, bArr, e4);
    }

    public static int t(long j4, char[] cArr, int i4) {
        int f10;
        if (j4 < 0) {
            if (j4 > f13959d) {
                return r((int) j4, cArr, i4);
            }
            if (j4 == Long.MIN_VALUE) {
                return j(cArr, i4);
            }
            cArr[i4] = l.f93713d;
            j4 = -j4;
            i4++;
        } else if (j4 <= f13960e) {
            return r((int) j4, cArr, i4);
        }
        long j10 = f13958c;
        long j11 = j4 / j10;
        long j12 = j4 - (j11 * j10);
        if (j11 < j10) {
            f10 = l((int) j11, cArr, i4);
        } else {
            long j13 = j11 / j10;
            int d4 = d((int) j13, cArr, i4);
            f10 = f((int) (j11 - (j10 * j13)), cArr, d4);
        }
        return f((int) j12, cArr, f10);
    }

    public static String u(double d4) {
        return Double.toString(d4);
    }

    public static String v(float f10) {
        return Float.toString(f10);
    }

    public static String w(int i4) {
        String[] strArr = f13964i;
        if (i4 < strArr.length) {
            if (i4 >= 0) {
                return strArr[i4];
            }
            int i10 = (-i4) - 1;
            String[] strArr2 = f13965j;
            if (i10 < strArr2.length) {
                return strArr2[i10];
            }
        }
        return Integer.toString(i4);
    }

    public static String x(long j4) {
        if (j4 <= 2147483647L && j4 >= -2147483648L) {
            return w((int) j4);
        }
        return Long.toString(j4);
    }
}
