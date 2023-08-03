package org.bouncycastle.crypto.params;

/* loaded from: classes4.dex */
public class DESedeParameters extends DESParameters {
    public static final int DES_EDE_KEY_LENGTH = 24;

    public DESedeParameters(byte[] bArr) {
        super(bArr);
        if (isWeakKey(bArr, 0, bArr.length)) {
            throw new IllegalArgumentException("attempt to create weak DESede key");
        }
    }

    public static boolean isReal2Key(byte[] bArr, int i4) {
        boolean z9 = false;
        for (int i10 = i4; i10 != i4 + 8; i10++) {
            if (bArr[i10] != bArr[i10 + 8]) {
                z9 = true;
            }
        }
        return z9;
    }

    public static boolean isReal3Key(byte[] bArr, int i4) {
        int i10 = i4;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            boolean z12 = true;
            if (i10 == i4 + 8) {
                break;
            }
            int i11 = i10 + 8;
            z9 |= bArr[i10] != bArr[i11];
            int i12 = i10 + 16;
            z10 |= bArr[i10] != bArr[i12];
            if (bArr[i11] == bArr[i12]) {
                z12 = false;
            }
            z11 |= z12;
            i10++;
        }
        return z9 && z10 && z11;
    }

    public static boolean isRealEDEKey(byte[] bArr, int i4) {
        return bArr.length == 16 ? isReal2Key(bArr, i4) : isReal3Key(bArr, i4);
    }

    public static boolean isWeakKey(byte[] bArr, int i4) {
        return isWeakKey(bArr, i4, bArr.length - i4);
    }

    public static boolean isWeakKey(byte[] bArr, int i4, int i10) {
        while (i4 < i10) {
            if (DESParameters.isWeakKey(bArr, i4)) {
                return true;
            }
            i4 += 8;
        }
        return false;
    }
}
