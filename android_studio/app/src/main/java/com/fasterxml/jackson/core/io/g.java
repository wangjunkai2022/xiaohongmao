package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;
import kotlin.time.DurationKt;

/* compiled from: NumberInput.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final String f13952a = "2.2250738585072012e-308";

    /* renamed from: b  reason: collision with root package name */
    static final long f13953b = 1000000000;

    /* renamed from: c  reason: collision with root package name */
    static final String f13954c = String.valueOf(Long.MIN_VALUE).substring(1);

    /* renamed from: d  reason: collision with root package name */
    static final String f13955d = String.valueOf(Long.MAX_VALUE);

    public static boolean a(String str, boolean z9) {
        String str2 = z9 ? f13954c : f13955d;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i4 = 0; i4 < length; i4++) {
            int charAt = str.charAt(i4) - str2.charAt(i4);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static boolean b(char[] cArr, int i4, int i10, boolean z9) {
        String str = z9 ? f13954c : f13955d;
        int length = str.length();
        if (i10 < length) {
            return true;
        }
        if (i10 > length) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            int charAt = cArr[i4 + i11] - str.charAt(i11);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static double c(String str, double d4) {
        if (str == null) {
            return d4;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return d4;
        }
        try {
            return i(trim);
        } catch (NumberFormatException unused) {
            return d4;
        }
    }

    public static int d(String str, int i4) {
        String trim;
        int length;
        if (str == null || (length = (trim = str.trim()).length()) == 0) {
            return i4;
        }
        int i10 = 0;
        char charAt = trim.charAt(0);
        if (charAt == '+') {
            trim = trim.substring(1);
            length = trim.length();
        } else if (charAt == '-') {
            i10 = 1;
        }
        while (i10 < length) {
            char charAt2 = trim.charAt(i10);
            if (charAt2 > '9' || charAt2 < '0') {
                try {
                    return (int) i(trim);
                } catch (NumberFormatException unused) {
                    return i4;
                }
            }
            i10++;
        }
        try {
            return Integer.parseInt(trim);
        } catch (NumberFormatException unused2) {
            return i4;
        }
    }

    public static long e(String str, long j4) {
        String trim;
        int length;
        if (str == null || (length = (trim = str.trim()).length()) == 0) {
            return j4;
        }
        int i4 = 0;
        char charAt = trim.charAt(0);
        if (charAt == '+') {
            trim = trim.substring(1);
            length = trim.length();
        } else if (charAt == '-') {
            i4 = 1;
        }
        while (i4 < length) {
            char charAt2 = trim.charAt(i4);
            if (charAt2 > '9' || charAt2 < '0') {
                try {
                    return (long) i(trim);
                } catch (NumberFormatException unused) {
                    return j4;
                }
            }
            i4++;
        }
        try {
            return Long.parseLong(trim);
        } catch (NumberFormatException unused2) {
            return j4;
        }
    }

    public static BigDecimal f(String str) throws NumberFormatException {
        return a.b(str);
    }

    public static BigDecimal g(char[] cArr) throws NumberFormatException {
        return a.c(cArr);
    }

    public static BigDecimal h(char[] cArr, int i4, int i10) throws NumberFormatException {
        return a.d(cArr, i4, i10);
    }

    public static double i(String str) throws NumberFormatException {
        if (f13952a.equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0075, code lost:
        return java.lang.Integer.parseInt(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int j(java.lang.String r8) {
        /*
            r0 = 0
            char r1 = r8.charAt(r0)
            int r2 = r8.length()
            r3 = 1
            r4 = 45
            if (r1 != r4) goto Lf
            r0 = 1
        Lf:
            r4 = 10
            if (r0 == 0) goto L25
            if (r2 == r3) goto L20
            if (r2 <= r4) goto L18
            goto L20
        L18:
            r1 = 2
            char r3 = r8.charAt(r3)
            r1 = r3
            r3 = 2
            goto L2e
        L20:
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        L25:
            r5 = 9
            if (r2 <= r5) goto L2e
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        L2e:
            r5 = 57
            if (r1 > r5) goto L84
            r6 = 48
            if (r1 >= r6) goto L37
            goto L84
        L37:
            int r1 = r1 - r6
            if (r3 >= r2) goto L80
            int r7 = r3 + 1
            char r3 = r8.charAt(r3)
            if (r3 > r5) goto L7b
            if (r3 >= r6) goto L45
            goto L7b
        L45:
            int r1 = r1 * 10
            int r3 = r3 - r6
            int r1 = r1 + r3
            if (r7 >= r2) goto L80
            int r3 = r7 + 1
            char r7 = r8.charAt(r7)
            if (r7 > r5) goto L76
            if (r7 >= r6) goto L56
            goto L76
        L56:
            int r1 = r1 * 10
            int r7 = r7 - r6
            int r1 = r1 + r7
            if (r3 >= r2) goto L80
        L5c:
            int r7 = r3 + 1
            char r3 = r8.charAt(r3)
            if (r3 > r5) goto L71
            if (r3 >= r6) goto L67
            goto L71
        L67:
            int r1 = r1 * 10
            int r3 = r3 + (-48)
            int r1 = r1 + r3
            if (r7 < r2) goto L6f
            goto L80
        L6f:
            r3 = r7
            goto L5c
        L71:
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        L76:
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        L7b:
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        L80:
            if (r0 == 0) goto L83
            int r1 = -r1
        L83:
            return r1
        L84:
            int r8 = java.lang.Integer.parseInt(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.g.j(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int k(char[] cArr, int i4, int i10) {
        int i11 = cArr[(i4 + i10) - 1] - '0';
        switch (i10) {
            case 2:
                break;
            case 3:
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 4:
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 5:
                i11 += (cArr[i4] - '0') * 10000;
                i4++;
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 6:
                i11 += (cArr[i4] - '0') * com.google.android.exoplayer2.audio.a.f21096f;
                i4++;
                i11 += (cArr[i4] - '0') * 10000;
                i4++;
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 7:
                i11 += (cArr[i4] - '0') * DurationKt.NANOS_IN_MILLIS;
                i4++;
                i11 += (cArr[i4] - '0') * com.google.android.exoplayer2.audio.a.f21096f;
                i4++;
                i11 += (cArr[i4] - '0') * 10000;
                i4++;
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 8:
                i11 += (cArr[i4] - '0') * 10000000;
                i4++;
                i11 += (cArr[i4] - '0') * DurationKt.NANOS_IN_MILLIS;
                i4++;
                i11 += (cArr[i4] - '0') * com.google.android.exoplayer2.audio.a.f21096f;
                i4++;
                i11 += (cArr[i4] - '0') * 10000;
                i4++;
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            case 9:
                i11 += (cArr[i4] - '0') * 100000000;
                i4++;
                i11 += (cArr[i4] - '0') * 10000000;
                i4++;
                i11 += (cArr[i4] - '0') * DurationKt.NANOS_IN_MILLIS;
                i4++;
                i11 += (cArr[i4] - '0') * com.google.android.exoplayer2.audio.a.f21096f;
                i4++;
                i11 += (cArr[i4] - '0') * 10000;
                i4++;
                i11 += (cArr[i4] - '0') * 1000;
                i4++;
                i11 += (cArr[i4] - '0') * 100;
                i4++;
                break;
            default:
                return i11;
        }
        return i11 + ((cArr[i4] - '0') * 10);
    }

    public static long l(String str) {
        if (str.length() <= 9) {
            return j(str);
        }
        return Long.parseLong(str);
    }

    public static long m(char[] cArr, int i4, int i10) {
        int i11 = i10 - 9;
        return (k(cArr, i4, i11) * 1000000000) + k(cArr, i4 + i11, 9);
    }
}
