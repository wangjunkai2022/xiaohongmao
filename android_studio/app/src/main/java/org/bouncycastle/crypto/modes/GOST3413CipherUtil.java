package org.bouncycastle.crypto.modes;

import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
class GOST3413CipherUtil {
    GOST3413CipherUtil() {
    }

    public static byte[] LSB(byte[] bArr, int i4) {
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, bArr.length - i4, bArr2, 0, i4);
        return bArr2;
    }

    public static byte[] MSB(byte[] bArr, int i4) {
        return Arrays.copyOf(bArr, i4);
    }

    public static byte[] copyFromInput(byte[] bArr, int i4, int i10) {
        if (bArr.length < i4 + i10) {
            i4 = bArr.length - i10;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i10, bArr2, 0, i4);
        return bArr2;
    }

    public static byte[] sum(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr3[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
        }
        return bArr3;
    }
}
