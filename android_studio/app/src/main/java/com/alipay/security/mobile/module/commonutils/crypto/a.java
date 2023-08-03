package com.alipay.security.mobile.module.commonutils.crypto;

import com.google.android.exoplayer2.extractor.ts.a0;
import okio.Utf8;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f6999a = "iso8859-1";

    /* renamed from: b  reason: collision with root package name */
    public static final String f7000b = "US-ASCII";

    /* renamed from: c  reason: collision with root package name */
    private static char[] f7001c = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', com.fasterxml.jackson.core.e.f13819f};

    /* renamed from: d  reason: collision with root package name */
    private static byte[] f7002d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, -1, -1, -1, -1, -1, -1, com.google.common.base.c.D, com.google.common.base.c.E, com.google.common.base.c.F, com.google.common.base.c.G, com.google.common.base.c.H, com.google.common.base.c.I, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    private a() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        if (r2 == (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007e, code lost:
        r0.append((char) (r2 | ((r6 & 3) << 6)));
        r2 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] a(java.lang.String r9) {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "US-ASCII"
            byte[] r9 = r9.getBytes(r1)
            int r1 = r9.length
            r2 = 0
        Ld:
            java.lang.String r3 = "iso8859-1"
            if (r2 >= r1) goto L47
        L11:
            byte[] r4 = com.alipay.security.mobile.module.commonutils.crypto.a.f7002d
            int r5 = r2 + 1
            r2 = r9[r2]
            r2 = r4[r2]
            r4 = -1
            if (r5 >= r1) goto L21
            if (r2 == r4) goto L1f
            goto L21
        L1f:
            r2 = r5
            goto L11
        L21:
            if (r2 == r4) goto L47
        L23:
            byte[] r6 = com.alipay.security.mobile.module.commonutils.crypto.a.f7002d
            int r7 = r5 + 1
            r5 = r9[r5]
            r5 = r6[r5]
            if (r7 >= r1) goto L32
            if (r5 == r4) goto L30
            goto L32
        L30:
            r5 = r7
            goto L23
        L32:
            if (r5 == r4) goto L47
            int r2 = r2 << 2
            r6 = r5 & 48
            int r6 = r6 >>> 4
            r2 = r2 | r6
            char r2 = (char) r2
            r0.append(r2)
        L3f:
            int r2 = r7 + 1
            r6 = r9[r7]
            r7 = 61
            if (r6 != r7) goto L50
        L47:
            java.lang.String r9 = r0.toString()
            byte[] r9 = r9.getBytes(r3)
            return r9
        L50:
            byte[] r8 = com.alipay.security.mobile.module.commonutils.crypto.a.f7002d
            r6 = r8[r6]
            if (r2 >= r1) goto L5b
            if (r6 == r4) goto L59
            goto L5b
        L59:
            r7 = r2
            goto L3f
        L5b:
            if (r6 == r4) goto L47
            r5 = r5 & 15
            int r5 = r5 << 4
            r8 = r6 & 60
            int r8 = r8 >>> 2
            r5 = r5 | r8
            char r5 = (char) r5
            r0.append(r5)
        L6a:
            int r5 = r2 + 1
            r2 = r9[r2]
            if (r2 != r7) goto L71
            goto L47
        L71:
            byte[] r8 = com.alipay.security.mobile.module.commonutils.crypto.a.f7002d
            r2 = r8[r2]
            if (r5 >= r1) goto L7c
            if (r2 == r4) goto L7a
            goto L7c
        L7a:
            r2 = r5
            goto L6a
        L7c:
            if (r2 == r4) goto L47
            r3 = r6 & 3
            int r3 = r3 << 6
            r2 = r2 | r3
            char r2 = (char) r2
            r0.append(r2)
            r2 = r5
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.commonutils.crypto.a.a(java.lang.String):byte[]");
    }

    public static String b(byte[] bArr) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i4 = 0;
        while (i4 < length) {
            int i10 = i4 + 1;
            int i11 = bArr[i4] & 255;
            if (i10 == length) {
                stringBuffer.append(f7001c[i11 >>> 2]);
                stringBuffer.append(f7001c[(i11 & 3) << 4]);
                str = "==";
            } else {
                int i12 = i10 + 1;
                int i13 = bArr[i10] & 255;
                if (i12 == length) {
                    stringBuffer.append(f7001c[i11 >>> 2]);
                    stringBuffer.append(f7001c[((i11 & 3) << 4) | ((i13 & a0.A) >>> 4)]);
                    stringBuffer.append(f7001c[(i13 & 15) << 2]);
                    str = "=";
                } else {
                    int i14 = i12 + 1;
                    int i15 = bArr[i12] & 255;
                    stringBuffer.append(f7001c[i11 >>> 2]);
                    stringBuffer.append(f7001c[((i11 & 3) << 4) | ((i13 & a0.A) >>> 4)]);
                    stringBuffer.append(f7001c[((i13 & 15) << 2) | ((i15 & 192) >>> 6)]);
                    stringBuffer.append(f7001c[i15 & 63]);
                    i4 = i14;
                }
            }
            stringBuffer.append(str);
            break;
        }
        return stringBuffer.toString();
    }
}
