package org.bouncycastle.util.encoders;

import com.google.android.exoplayer2.analytics.j1;
import com.google.common.base.c;
import okio.Utf8;

/* loaded from: classes5.dex */
public class UTF8 {
    private static final byte C_CR1 = 1;
    private static final byte C_CR2 = 2;
    private static final byte C_CR3 = 3;
    private static final byte C_ILL = 0;
    private static final byte C_L2A = 4;
    private static final byte C_L3A = 5;
    private static final byte C_L3B = 6;
    private static final byte C_L3C = 7;
    private static final byte C_L4A = 8;
    private static final byte C_L4B = 9;
    private static final byte C_L4C = 10;
    private static final byte S_CS1 = 0;
    private static final byte S_CS2 = 16;
    private static final byte S_CS3 = 32;
    private static final byte S_END = -1;
    private static final byte S_ERR = -2;
    private static final byte S_P3A = 48;
    private static final byte S_P3B = 64;
    private static final byte S_P4A = 80;
    private static final byte S_P4B = 96;
    private static final short[] firstUnitTable = new short[128];
    private static final byte[] transitionTable;

    static {
        byte[] bArr = new byte[112];
        transitionTable = bArr;
        byte[] bArr2 = new byte[128];
        fill(bArr2, 0, 15, (byte) 1);
        fill(bArr2, 16, 31, (byte) 2);
        fill(bArr2, 32, 63, (byte) 3);
        fill(bArr2, 64, 65, (byte) 0);
        fill(bArr2, 66, 95, (byte) 4);
        fill(bArr2, 96, 96, (byte) 5);
        fill(bArr2, 97, 108, (byte) 6);
        fill(bArr2, 109, 109, (byte) 7);
        fill(bArr2, 110, 111, (byte) 6);
        fill(bArr2, 112, 112, (byte) 8);
        fill(bArr2, 113, 115, (byte) 9);
        fill(bArr2, 116, 116, (byte) 10);
        fill(bArr2, 117, 127, (byte) 0);
        fill(bArr, 0, bArr.length - 1, S_ERR);
        fill(bArr, 8, 11, (byte) -1);
        fill(bArr, 24, 27, (byte) 0);
        fill(bArr, 40, 43, (byte) 16);
        fill(bArr, 58, 59, (byte) 0);
        fill(bArr, 72, 73, (byte) 0);
        fill(bArr, 89, 91, (byte) 16);
        fill(bArr, 104, 104, (byte) 16);
        byte[] bArr3 = {0, 0, 0, 0, c.I, c.f32110q, c.f32110q, c.f32110q, 7, 7, 7};
        byte[] bArr4 = {S_ERR, S_ERR, S_ERR, S_ERR, 0, S_P3A, 16, 64, S_P4A, 32, S_P4B};
        for (int i4 = 0; i4 < 128; i4++) {
            byte b10 = bArr2[i4];
            firstUnitTable[i4] = (short) (bArr4[b10] | ((bArr3[b10] & i4) << 8));
        }
    }

    private static void fill(byte[] bArr, int i4, int i10, byte b10) {
        while (i4 <= i10) {
            bArr[i4] = b10;
            i4++;
        }
    }

    public static int transcodeToUTF16(byte[] bArr, char[] cArr) {
        int i4 = 0;
        int i10 = 0;
        while (i4 < bArr.length) {
            int i11 = i4 + 1;
            byte b10 = bArr[i4];
            if (b10 < 0) {
                short s9 = firstUnitTable[b10 & Byte.MAX_VALUE];
                int i12 = s9 >>> 8;
                byte b11 = (byte) s9;
                while (b11 >= 0) {
                    if (i11 >= bArr.length) {
                        return -1;
                    }
                    int i13 = i11 + 1;
                    byte b12 = bArr[i11];
                    i12 = (i12 << 6) | (b12 & Utf8.REPLACEMENT_BYTE);
                    b11 = transitionTable[b11 + ((b12 & 255) >>> 4)];
                    i11 = i13;
                }
                if (b11 == -2) {
                    return -1;
                }
                if (i12 <= 65535) {
                    if (i10 >= cArr.length) {
                        return -1;
                    }
                    cArr[i10] = (char) i12;
                    i10++;
                } else if (i10 >= cArr.length - 1) {
                    return -1;
                } else {
                    int i14 = i10 + 1;
                    cArr[i10] = (char) ((i12 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                    i10 = i14 + 1;
                    cArr[i14] = (char) (56320 | (i12 & j1.M));
                }
                i4 = i11;
            } else if (i10 >= cArr.length) {
                return -1;
            } else {
                cArr[i10] = (char) b10;
                i4 = i11;
                i10++;
            }
        }
        return i10;
    }
}
