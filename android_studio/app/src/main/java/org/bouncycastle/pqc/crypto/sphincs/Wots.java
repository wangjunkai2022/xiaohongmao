package org.bouncycastle.pqc.crypto.sphincs;

import com.google.common.base.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Wots {
    static final int WOTS_L = 67;
    static final int WOTS_L1 = 64;
    static final int WOTS_LOGW = 4;
    static final int WOTS_LOG_L = 7;
    static final int WOTS_SIGBYTES = 2144;
    static final int WOTS_W = 16;

    private static void clear(byte[] bArr, int i4, int i10) {
        for (int i11 = 0; i11 != i10; i11++) {
            bArr[i11 + i4] = 0;
        }
    }

    static void expand_seed(byte[] bArr, int i4, byte[] bArr2, int i10) {
        clear(bArr, i4, WOTS_SIGBYTES);
        Seed.prg(bArr, i4, 2144L, bArr2, i10);
    }

    static void gen_chain(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11, int i12) {
        for (int i13 = 0; i13 < 32; i13++) {
            bArr[i13 + i4] = bArr2[i13 + i10];
        }
        for (int i14 = 0; i14 < i12 && i14 < 16; i14++) {
            hashFunctions.hash_n_n_mask(bArr, i4, bArr, i4, bArr3, i11 + (i14 * 32));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_pkgen(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11) {
        expand_seed(bArr, i4, bArr2, i10);
        for (int i12 = 0; i12 < 67; i12++) {
            int i13 = i4 + (i12 * 32);
            gen_chain(hashFunctions, bArr, i13, bArr, i13, bArr3, i11, 15);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_sign(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int[] iArr = new int[67];
        int i10 = 0;
        int i11 = 0;
        while (i10 < 64) {
            int i12 = i10 / 2;
            iArr[i10] = bArr2[i12] & c.f32110q;
            int i13 = i10 + 1;
            iArr[i13] = (bArr2[i12] & 255) >>> 4;
            i11 = i11 + (15 - iArr[i10]) + (15 - iArr[i13]);
            i10 += 2;
        }
        while (i10 < 67) {
            iArr[i10] = i11 & 15;
            i11 >>>= 4;
            i10++;
        }
        expand_seed(bArr, i4, bArr3, 0);
        for (int i14 = 0; i14 < 67; i14++) {
            int i15 = i4 + (i14 * 32);
            gen_chain(hashFunctions, bArr, i15, bArr, i15, bArr4, 0, iArr[i14]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wots_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i4, byte[] bArr3, byte[] bArr4) {
        int[] iArr = new int[67];
        int i10 = 0;
        int i11 = 0;
        while (i10 < 64) {
            int i12 = i10 / 2;
            iArr[i10] = bArr3[i12] & c.f32110q;
            int i13 = i10 + 1;
            iArr[i13] = (bArr3[i12] & 255) >>> 4;
            i11 = i11 + (15 - iArr[i10]) + (15 - iArr[i13]);
            i10 += 2;
        }
        while (i10 < 67) {
            iArr[i10] = i11 & 15;
            i11 >>>= 4;
            i10++;
        }
        for (int i14 = 0; i14 < 67; i14++) {
            int i15 = i14 * 32;
            gen_chain(hashFunctions, bArr, i15, bArr2, i4 + i15, bArr4, iArr[i14] * 32, 15 - iArr[i14]);
        }
    }
}
