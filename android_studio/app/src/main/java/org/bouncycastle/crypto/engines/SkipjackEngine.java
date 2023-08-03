package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.minidns.record.f;

/* loaded from: classes4.dex */
public class SkipjackEngine implements BlockCipher {
    static final int BLOCK_SIZE = 8;
    static short[] ftable = {163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, f.f92927k, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, 110, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, 112, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, 115, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, 113, 126, 255, 140, 14, 226, 12, 239, 188, 114, 117, 111, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70};
    private boolean encrypting;
    private int[] key0;
    private int[] key1;
    private int[] key2;
    private int[] key3;

    private int g(int i4, int i10) {
        int i11 = i10 & 255;
        short[] sArr = ftable;
        int i12 = ((i10 >> 8) & 255) ^ sArr[this.key0[i4] ^ i11];
        int i13 = i11 ^ sArr[this.key1[i4] ^ i12];
        int i14 = i12 ^ sArr[this.key2[i4] ^ i13];
        return (i14 << 8) + (sArr[this.key3[i4] ^ i14] ^ i13);
    }

    private int h(int i4, int i10) {
        int i11 = i10 & 255;
        int i12 = (i10 >> 8) & 255;
        short[] sArr = ftable;
        int i13 = i11 ^ sArr[this.key3[i4] ^ i12];
        int i14 = i12 ^ sArr[this.key2[i4] ^ i13];
        int i15 = i13 ^ sArr[this.key1[i4] ^ i14];
        return ((sArr[this.key0[i4] ^ i15] ^ i14) << 8) + i15;
    }

    public int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = (bArr[i4 + 0] << 8) + (bArr[i4 + 1] & 255);
        int i12 = (bArr[i4 + 2] << 8) + (bArr[i4 + 3] & 255);
        int i13 = (bArr[i4 + 4] << 8) + (bArr[i4 + 5] & 255);
        int i14 = (bArr[i4 + 6] << 8) + (bArr[i4 + 7] & 255);
        int i15 = 31;
        for (int i16 = 0; i16 < 2; i16++) {
            int i17 = 0;
            while (i17 < 8) {
                int h4 = h(i15, i12);
                i15--;
                i17++;
                int i18 = i14;
                i14 = i11;
                i11 = h4;
                i12 = (i13 ^ h4) ^ (i15 + 1);
                i13 = i18;
            }
            int i19 = 0;
            while (i19 < 8) {
                int h10 = h(i15, i12);
                i15--;
                i19++;
                int i20 = i14;
                i14 = (i11 ^ i12) ^ (i15 + 1);
                i11 = h10;
                i12 = i13;
                i13 = i20;
            }
        }
        bArr2[i10 + 0] = (byte) (i11 >> 8);
        bArr2[i10 + 1] = (byte) i11;
        bArr2[i10 + 2] = (byte) (i12 >> 8);
        bArr2[i10 + 3] = (byte) i12;
        bArr2[i10 + 4] = (byte) (i13 >> 8);
        bArr2[i10 + 5] = (byte) i13;
        bArr2[i10 + 6] = (byte) (i14 >> 8);
        bArr2[i10 + 7] = (byte) i14;
        return 8;
    }

    public int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = (bArr[i4 + 0] << 8) + (bArr[i4 + 1] & 255);
        int i12 = (bArr[i4 + 2] << 8) + (bArr[i4 + 3] & 255);
        int i13 = (bArr[i4 + 4] << 8) + (bArr[i4 + 5] & 255);
        int i14 = (bArr[i4 + 6] << 8) + (bArr[i4 + 7] & 255);
        int i15 = 0;
        for (int i16 = 0; i16 < 2; i16++) {
            int i17 = 0;
            while (i17 < 8) {
                int g4 = g(i15, i11);
                i15++;
                i17++;
                int i18 = i12;
                i12 = g4;
                i11 = (i14 ^ g4) ^ i15;
                i14 = i13;
                i13 = i18;
            }
            int i19 = 0;
            while (i19 < 8) {
                int i20 = i15 + 1;
                int i21 = (i12 ^ i11) ^ i20;
                int g10 = g(i15, i11);
                i19++;
                i15 = i20;
                i12 = g10;
                i11 = i14;
                i14 = i13;
                i13 = i21;
            }
        }
        bArr2[i10 + 0] = (byte) (i11 >> 8);
        bArr2[i10 + 1] = (byte) i11;
        bArr2[i10 + 2] = (byte) (i12 >> 8);
        bArr2[i10 + 3] = (byte) i12;
        bArr2[i10 + 4] = (byte) (i13 >> 8);
        bArr2[i10 + 5] = (byte) i13;
        bArr2[i10 + 6] = (byte) (i14 >> 8);
        bArr2[i10 + 7] = (byte) i14;
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SKIPJACK";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to SKIPJACK init - " + cipherParameters.getClass().getName());
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.encrypting = z9;
        this.key0 = new int[32];
        this.key1 = new int[32];
        this.key2 = new int[32];
        this.key3 = new int[32];
        for (int i4 = 0; i4 < 32; i4++) {
            int i10 = i4 * 4;
            this.key0[i4] = key[i10 % 10] & 255;
            this.key1[i4] = key[(i10 + 1) % 10] & 255;
            this.key2[i4] = key[(i10 + 2) % 10] & 255;
            this.key3[i4] = key[(i10 + 3) % 10] & 255;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (this.key1 != null) {
            if (i4 + 8 <= bArr.length) {
                if (i10 + 8 <= bArr2.length) {
                    if (this.encrypting) {
                        encryptBlock(bArr, i4, bArr2, i10);
                        return 8;
                    }
                    decryptBlock(bArr, i4, bArr2, i10);
                    return 8;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("SKIPJACK engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
