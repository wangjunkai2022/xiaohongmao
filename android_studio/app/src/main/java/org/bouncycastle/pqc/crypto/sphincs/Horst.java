package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes5.dex */
class Horst {
    static final int HORST_K = 32;
    static final int HORST_LOGT = 16;
    static final int HORST_SIGBYTES = 13312;
    static final int HORST_SKBYTES = 32;
    static final int HORST_T = 65536;
    static final int N_MASKS = 32;

    static void expand_seed(byte[] bArr, byte[] bArr2) {
        Seed.prg(bArr, 0, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, bArr2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int horst_sign(HashFunctions hashFunctions, byte[] bArr, int i4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        byte[] bArr6 = new byte[2097152];
        byte[] bArr7 = new byte[4194272];
        expand_seed(bArr6, bArr3);
        for (int i10 = 0; i10 < 65536; i10++) {
            hashFunctions.hash_n_n(bArr7, (65535 + i10) * 32, bArr6, i10 * 32);
        }
        for (int i11 = 0; i11 < 16; i11++) {
            int i12 = 16 - i11;
            long j4 = (1 << i12) - 1;
            int i13 = 1 << (i12 - 1);
            long j10 = i13 - 1;
            int i14 = 0;
            while (i14 < i13) {
                hashFunctions.hash_2n_n_mask(bArr7, (int) ((i14 + j10) * 32), bArr7, (int) (((i14 * 2) + j4) * 32), bArr4, i11 * 2 * 32);
                i14++;
                i13 = i13;
                j10 = j10;
            }
        }
        int i15 = i4;
        int i16 = 2016;
        while (i16 < 4064) {
            bArr[i15] = bArr7[i16];
            i16++;
            i15++;
        }
        for (int i17 = 0; i17 < 32; i17++) {
            int i18 = i17 * 2;
            int i19 = (bArr5[i18] & 255) + ((bArr5[i18 + 1] & 255) << 8);
            int i20 = 0;
            while (i20 < 32) {
                bArr[i15] = bArr6[(i19 * 32) + i20];
                i20++;
                i15++;
            }
            int i21 = i19 + 65535;
            for (int i22 = 0; i22 < 10; i22++) {
                int i23 = (i21 & 1) != 0 ? i21 + 1 : i21 - 1;
                int i24 = 0;
                while (i24 < 32) {
                    bArr[i15] = bArr7[(i23 * 32) + i24];
                    i24++;
                    i15++;
                }
                i21 = (i23 - 1) / 2;
            }
        }
        for (int i25 = 0; i25 < 32; i25++) {
            bArr2[i25] = bArr7[i25];
        }
        return HORST_SIGBYTES;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int horst_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int i4, byte[] bArr3, byte[] bArr4) {
        int i10;
        byte[] bArr5 = new byte[1024];
        int i11 = i4 + 2048;
        int i12 = 0;
        while (i12 < 32) {
            int i13 = i12 * 2;
            int i14 = (bArr4[i13] & 255) + ((bArr4[i13 + 1] & 255) << 8);
            if ((i14 & 1) == 0) {
                hashFunctions.hash_n_n(bArr5, 0, bArr2, i11);
                for (int i15 = 0; i15 < 32; i15++) {
                    bArr5[i15 + 32] = bArr2[i11 + 32 + i15];
                }
            } else {
                hashFunctions.hash_n_n(bArr5, 32, bArr2, i11);
                for (int i16 = 0; i16 < 32; i16++) {
                    bArr5[i16] = bArr2[i11 + 32 + i16];
                }
            }
            int i17 = i11 + 64;
            int i18 = 1;
            while (i18 < 10) {
                int i19 = i14 >>> 1;
                if ((i19 & 1) == 0) {
                    i10 = i18;
                    hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, (i18 - 1) * 2 * 32);
                    for (int i20 = 0; i20 < 32; i20++) {
                        bArr5[i20 + 32] = bArr2[i17 + i20];
                    }
                } else {
                    i10 = i18;
                    hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr3, (i10 - 1) * 2 * 32);
                    for (int i21 = 0; i21 < 32; i21++) {
                        bArr5[i21] = bArr2[i17 + i21];
                    }
                }
                i17 += 32;
                i18 = i10 + 1;
                i14 = i19;
            }
            int i22 = i14 >>> 1;
            hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, 576);
            for (int i23 = 0; i23 < 32; i23++) {
                if (bArr2[(i22 * 32) + i4 + i23] != bArr5[i23]) {
                    for (int i24 = 0; i24 < 32; i24++) {
                        bArr[i24] = 0;
                    }
                    return -1;
                }
            }
            i12++;
            i11 = i17;
        }
        for (int i25 = 0; i25 < 32; i25++) {
            hashFunctions.hash_2n_n_mask(bArr5, i25 * 32, bArr2, i4 + (i25 * 2 * 32), bArr3, 640);
        }
        for (int i26 = 0; i26 < 16; i26++) {
            hashFunctions.hash_2n_n_mask(bArr5, i26 * 32, bArr5, i26 * 2 * 32, bArr3, TypedValues.Transition.TYPE_AUTO_TRANSITION);
        }
        for (int i27 = 0; i27 < 8; i27++) {
            hashFunctions.hash_2n_n_mask(bArr5, i27 * 32, bArr5, i27 * 2 * 32, bArr3, 768);
        }
        for (int i28 = 0; i28 < 4; i28++) {
            hashFunctions.hash_2n_n_mask(bArr5, i28 * 32, bArr5, i28 * 2 * 32, bArr3, 832);
        }
        for (int i29 = 0; i29 < 2; i29++) {
            hashFunctions.hash_2n_n_mask(bArr5, i29 * 32, bArr5, i29 * 2 * 32, bArr3, 896);
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr3, 960);
        return 0;
    }
}
