package n;

import com.google.android.exoplayer2.extractor.ts.a0;
import okio.Utf8;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f89911a = 128;

    /* renamed from: b  reason: collision with root package name */
    private static final int f89912b = 64;

    /* renamed from: c  reason: collision with root package name */
    private static final int f89913c = 24;

    /* renamed from: d  reason: collision with root package name */
    private static final int f89914d = 8;

    /* renamed from: e  reason: collision with root package name */
    private static final int f89915e = 16;

    /* renamed from: f  reason: collision with root package name */
    private static final int f89916f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final int f89917g = -128;

    /* renamed from: h  reason: collision with root package name */
    private static final char f89918h = '=';

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f89919i = new byte[128];

    /* renamed from: j  reason: collision with root package name */
    private static final char[] f89920j = new char[64];

    static {
        int i4;
        int i10;
        int i11 = 0;
        for (int i12 = 0; i12 < 128; i12++) {
            f89919i[i12] = -1;
        }
        for (int i13 = 90; i13 >= 65; i13--) {
            f89919i[i13] = (byte) (i13 - 65);
        }
        int i14 = 122;
        while (true) {
            i4 = 26;
            if (i14 < 97) {
                break;
            }
            f89919i[i14] = (byte) ((i14 - 97) + 26);
            i14--;
        }
        int i15 = 57;
        while (true) {
            i10 = 52;
            if (i15 < 48) {
                break;
            }
            f89919i[i15] = (byte) ((i15 - 48) + 52);
            i15--;
        }
        byte[] bArr = f89919i;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i16 = 0; i16 <= 25; i16++) {
            f89920j[i16] = (char) (i16 + 65);
        }
        int i17 = 0;
        while (i4 <= 51) {
            f89920j[i4] = (char) (i17 + 97);
            i4++;
            i17++;
        }
        while (i10 <= 61) {
            f89920j[i10] = (char) (i11 + 48);
            i10++;
            i11++;
        }
        char[] cArr = f89920j;
        cArr[62] = '+';
        cArr[63] = com.fasterxml.jackson.core.e.f13819f;
    }

    private static int a(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = cArr[i10];
            if (!(c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t')) {
                cArr[i4] = cArr[i10];
                i4++;
            }
        }
        return i4;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        int i4 = length % 24;
        int i10 = length / 24;
        char[] cArr = new char[(i4 != 0 ? i10 + 1 : i10) * 4];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            int i14 = i12 + 1;
            byte b10 = bArr[i12];
            int i15 = i14 + 1;
            byte b11 = bArr[i14];
            int i16 = i15 + 1;
            byte b12 = bArr[i15];
            byte b13 = (byte) (b11 & com.google.common.base.c.f32110q);
            byte b14 = (byte) (b10 & 3);
            int i17 = b10 & Byte.MIN_VALUE;
            int i18 = b10 >> 2;
            if (i17 != 0) {
                i18 ^= 192;
            }
            byte b15 = (byte) i18;
            int i19 = b11 & Byte.MIN_VALUE;
            int i20 = b11 >> 4;
            if (i19 != 0) {
                i20 ^= a0.A;
            }
            byte b16 = (byte) i20;
            int i21 = (b12 & Byte.MIN_VALUE) == 0 ? b12 >> 6 : (b12 >> 6) ^ 252;
            int i22 = i13 + 1;
            char[] cArr2 = f89920j;
            cArr[i13] = cArr2[b15];
            int i23 = i22 + 1;
            cArr[i22] = cArr2[(b14 << 4) | b16];
            int i24 = i23 + 1;
            cArr[i23] = cArr2[(b13 << 2) | ((byte) i21)];
            cArr[i24] = cArr2[b12 & Utf8.REPLACEMENT_BYTE];
            i11++;
            i13 = i24 + 1;
            i12 = i16;
        }
        if (i4 == 8) {
            byte b17 = bArr[i12];
            byte b18 = (byte) (b17 & 3);
            int i25 = b17 & Byte.MIN_VALUE;
            int i26 = b17 >> 2;
            if (i25 != 0) {
                i26 ^= 192;
            }
            int i27 = i13 + 1;
            char[] cArr3 = f89920j;
            cArr[i13] = cArr3[(byte) i26];
            int i28 = i27 + 1;
            cArr[i27] = cArr3[b18 << 4];
            cArr[i28] = f89918h;
            cArr[i28 + 1] = f89918h;
        } else if (i4 == 16) {
            byte b19 = bArr[i12];
            byte b20 = bArr[i12 + 1];
            byte b21 = (byte) (b20 & com.google.common.base.c.f32110q);
            byte b22 = (byte) (b19 & 3);
            int i29 = b19 & Byte.MIN_VALUE;
            int i30 = b19 >> 2;
            if (i29 != 0) {
                i30 ^= 192;
            }
            byte b23 = (byte) i30;
            int i31 = b20 & Byte.MIN_VALUE;
            int i32 = b20 >> 4;
            if (i31 != 0) {
                i32 ^= a0.A;
            }
            int i33 = i13 + 1;
            char[] cArr4 = f89920j;
            cArr[i13] = cArr4[b23];
            int i34 = i33 + 1;
            cArr[i33] = cArr4[((byte) i32) | (b22 << 4)];
            cArr[i34] = cArr4[b21 << 2];
            cArr[i34 + 1] = f89918h;
        }
        return new String(cArr);
    }

    private static boolean c(char c10) {
        return c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t';
    }

    public static byte[] d(String str) {
        int i4;
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            i4 = 0;
        } else {
            int length = charArray.length;
            i4 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                char c10 = charArray[i10];
                if (!(c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t')) {
                    charArray[i4] = charArray[i10];
                    i4++;
                }
            }
        }
        if (i4 % 4 != 0) {
            return null;
        }
        int i11 = i4 / 4;
        if (i11 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i11 * 3];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i11 - 1) {
            int i15 = i13 + 1;
            char c11 = charArray[i13];
            if (f(c11)) {
                int i16 = i15 + 1;
                char c12 = charArray[i15];
                if (f(c12)) {
                    int i17 = i16 + 1;
                    char c13 = charArray[i16];
                    if (f(c13)) {
                        int i18 = i17 + 1;
                        char c14 = charArray[i17];
                        if (f(c14)) {
                            byte[] bArr2 = f89919i;
                            byte b10 = bArr2[c11];
                            byte b11 = bArr2[c12];
                            byte b12 = bArr2[c13];
                            byte b13 = bArr2[c14];
                            int i19 = i14 + 1;
                            bArr[i14] = (byte) ((b10 << 2) | (b11 >> 4));
                            int i20 = i19 + 1;
                            bArr[i19] = (byte) (((b11 & com.google.common.base.c.f32110q) << 4) | ((b12 >> 2) & 15));
                            i14 = i20 + 1;
                            bArr[i20] = (byte) ((b12 << 6) | b13);
                            i12++;
                            i13 = i18;
                        }
                    }
                }
            }
            return null;
        }
        int i21 = i13 + 1;
        char c15 = charArray[i13];
        if (f(c15)) {
            int i22 = i21 + 1;
            char c16 = charArray[i21];
            if (f(c16)) {
                byte[] bArr3 = f89919i;
                byte b14 = bArr3[c15];
                byte b15 = bArr3[c16];
                int i23 = i22 + 1;
                char c17 = charArray[i22];
                char c18 = charArray[i23];
                if (f(c17) && f(c18)) {
                    byte b16 = bArr3[c17];
                    byte b17 = bArr3[c18];
                    int i24 = i14 + 1;
                    bArr[i14] = (byte) ((b14 << 2) | (b15 >> 4));
                    bArr[i24] = (byte) (((b15 & com.google.common.base.c.f32110q) << 4) | ((b16 >> 2) & 15));
                    bArr[i24 + 1] = (byte) (b17 | (b16 << 6));
                    return bArr;
                } else if (e(c17) && e(c18)) {
                    if ((b15 & com.google.common.base.c.f32110q) != 0) {
                        return null;
                    }
                    int i25 = i12 * 3;
                    byte[] bArr4 = new byte[i25 + 1];
                    System.arraycopy(bArr, 0, bArr4, 0, i25);
                    bArr4[i14] = (byte) ((b14 << 2) | (b15 >> 4));
                    return bArr4;
                } else if (e(c17) || !e(c18)) {
                    return null;
                } else {
                    byte b18 = bArr3[c17];
                    if ((b18 & 3) != 0) {
                        return null;
                    }
                    int i26 = i12 * 3;
                    byte[] bArr5 = new byte[i26 + 2];
                    System.arraycopy(bArr, 0, bArr5, 0, i26);
                    bArr5[i14] = (byte) ((b14 << 2) | (b15 >> 4));
                    bArr5[i14 + 1] = (byte) (((b18 >> 2) & 15) | ((b15 & com.google.common.base.c.f32110q) << 4));
                    return bArr5;
                }
            }
            return null;
        }
        return null;
    }

    private static boolean e(char c10) {
        return c10 == '=';
    }

    private static boolean f(char c10) {
        return c10 < 128 && f89919i[c10] != -1;
    }
}
