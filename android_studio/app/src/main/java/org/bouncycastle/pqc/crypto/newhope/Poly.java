package org.bouncycastle.pqc.crypto.newhope;

import kotlin.UShort;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
class Poly {
    Poly() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void add(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i4 = 0; i4 < 1024; i4++) {
            sArr3[i4] = Reduce.barrett((short) (sArr[i4] + sArr2[i4]));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fromBytes(short[] sArr, byte[] bArr) {
        for (int i4 = 0; i4 < 256; i4++) {
            int i10 = i4 * 7;
            int i11 = bArr[i10 + 1] & 255;
            int i12 = bArr[i10 + 3] & 255;
            int i13 = bArr[i10 + 5] & 255;
            int i14 = i4 * 4;
            sArr[i14 + 0] = (short) ((bArr[i10 + 0] & 255) | ((i11 & 63) << 8));
            sArr[i14 + 1] = (short) ((i11 >>> 6) | ((bArr[i10 + 2] & 255) << 2) | ((i12 & 15) << 10));
            sArr[i14 + 2] = (short) ((i12 >>> 4) | ((bArr[i10 + 4] & 255) << 4) | ((i13 & 3) << 12));
            sArr[i14 + 3] = (short) (((bArr[i10 + 6] & 255) << 6) | (i13 >>> 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fromNTT(short[] sArr) {
        NTT.bitReverse(sArr);
        NTT.core(sArr, Precomp.OMEGAS_INV_MONTGOMERY);
        NTT.mulCoefficients(sArr, Precomp.PSIS_INV_MONTGOMERY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getNoise(short[] sArr, byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b10;
        byte[] bArr3 = new byte[4096];
        ChaCha20.process(bArr, bArr2, bArr3, 0, 4096);
        for (int i4 = 0; i4 < 1024; i4++) {
            int bigEndianToInt = Pack.bigEndianToInt(bArr3, i4 * 4);
            int i10 = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                i10 += (bigEndianToInt >> i11) & 16843009;
            }
            sArr[i4] = (short) (((((i10 >>> 24) + (i10 >>> 0)) & 255) + 12289) - (((i10 >>> 16) + (i10 >>> 8)) & 255));
        }
    }

    private static short normalize(short s9) {
        short barrett = Reduce.barrett(s9);
        int i4 = barrett - 12289;
        return (short) (((barrett ^ i4) & (i4 >> 31)) ^ i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void pointWise(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i4 = 0; i4 < 1024; i4++) {
            sArr3[i4] = Reduce.montgomery((sArr[i4] & UShort.MAX_VALUE) * (65535 & Reduce.montgomery((sArr2[i4] & UShort.MAX_VALUE) * 3186)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void toBytes(byte[] bArr, short[] sArr) {
        for (int i4 = 0; i4 < 256; i4++) {
            int i10 = i4 * 4;
            short normalize = normalize(sArr[i10 + 0]);
            short normalize2 = normalize(sArr[i10 + 1]);
            short normalize3 = normalize(sArr[i10 + 2]);
            short normalize4 = normalize(sArr[i10 + 3]);
            int i11 = i4 * 7;
            bArr[i11 + 0] = (byte) normalize;
            bArr[i11 + 1] = (byte) ((normalize >> 8) | (normalize2 << 6));
            bArr[i11 + 2] = (byte) (normalize2 >> 2);
            bArr[i11 + 3] = (byte) ((normalize2 >> 10) | (normalize3 << 4));
            bArr[i11 + 4] = (byte) (normalize3 >> 4);
            bArr[i11 + 5] = (byte) ((normalize3 >> 12) | (normalize4 << 2));
            bArr[i11 + 6] = (byte) (normalize4 >> 6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void toNTT(short[] sArr) {
        NTT.mulCoefficients(sArr, Precomp.PSIS_BITREV_MONTGOMERY);
        NTT.core(sArr, Precomp.OMEGAS_MONTGOMERY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void uniform(short[] sArr, byte[] bArr) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
        sHAKEDigest.update(bArr, 0, bArr.length);
        int i4 = 0;
        while (true) {
            byte[] bArr2 = new byte[256];
            sHAKEDigest.doOutput(bArr2, 0, 256);
            for (int i10 = 0; i10 < 256; i10 += 2) {
                int i11 = (bArr2[i10] & 255) | ((bArr2[i10 + 1] & 255) << 8);
                if (i11 < 61445) {
                    int i12 = i4 + 1;
                    sArr[i4] = (short) i11;
                    if (i12 == 1024) {
                        return;
                    }
                    i4 = i12;
                }
            }
        }
    }
}
