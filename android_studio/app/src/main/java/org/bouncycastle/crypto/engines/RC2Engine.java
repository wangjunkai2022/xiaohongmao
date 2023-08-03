package org.bouncycastle.crypto.engines;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.RC2Parameters;
import org.bouncycastle.crypto.signers.PSSSigner;

/* loaded from: classes4.dex */
public class RC2Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 8;
    private static byte[] piTable = {-39, 120, -7, -60, c.C, -35, -75, -19, 40, -23, -3, 121, 74, -96, -40, -99, -58, 126, 55, -125, 43, 118, 83, -114, 98, 76, 100, -120, 68, -117, -5, -94, c.A, -102, 89, -11, -121, -77, 79, 19, 97, 69, 109, -115, 9, -127, 125, 50, -67, -113, k.f34876a, -21, -122, -73, 123, c.f32106m, -16, -107, 33, 34, 92, 107, 78, -126, 84, -42, 101, -109, -50, 96, -78, c.F, 115, 86, -64, c.f32117x, -89, -116, -15, -36, c.f32114u, 117, -54, c.I, 59, -66, -28, -47, 66, 61, -44, 48, -93, 60, -74, 38, 111, a.f14000k, c.f32109p, -38, 70, 105, 7, 87, 39, -14, c.G, -101, PSSSigner.TRAILER_IMPLICIT, -108, 67, 3, -8, 17, -57, -10, -112, a.f13998i, 62, -25, 6, -61, -43, 47, -56, 102, c.H, -41, 8, -24, -22, -34, Byte.MIN_VALUE, 82, -18, -9, -124, -86, 114, -84, 53, 77, 106, 42, -106, c.D, -46, 113, 90, c.f32118y, 73, 116, 75, -97, -48, 94, 4, c.B, -92, -20, -62, -32, 65, 110, c.f32110q, 81, -53, -52, 36, -111, -81, 80, -95, -12, 112, 57, -103, 124, 58, -123, 35, -72, -76, 122, -4, 2, 54, 91, 37, 85, -105, 49, 45, 93, -6, -104, -29, -118, -110, -82, 5, -33, 41, 16, 103, 108, -70, -55, -45, 0, -26, -49, -31, -98, -88, 44, 99, c.f32119z, 1, Utf8.REPLACEMENT_BYTE, 88, -30, -119, -87, c.f32108o, 56, 52, c.E, -85, 51, -1, -80, a.f13999j, 72, c.f32107n, 95, -71, -79, -51, 46, -59, -13, -37, 71, -27, -91, -100, 119, 10, -90, 32, 104, -2, Byte.MAX_VALUE, -63, -83};
    private boolean encrypting;
    private int[] workingKey;

    private void decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = ((bArr[i4 + 7] & 255) << 8) + (bArr[i4 + 6] & 255);
        int i12 = ((bArr[i4 + 5] & 255) << 8) + (bArr[i4 + 4] & 255);
        int i13 = ((bArr[i4 + 3] & 255) << 8) + (bArr[i4 + 2] & 255);
        int i14 = ((bArr[i4 + 1] & 255) << 8) + (bArr[i4 + 0] & 255);
        for (int i15 = 60; i15 >= 44; i15 -= 4) {
            i11 = rotateWordLeft(i11, 11) - ((((~i12) & i14) + (i13 & i12)) + this.workingKey[i15 + 3]);
            i12 = rotateWordLeft(i12, 13) - ((((~i13) & i11) + (i14 & i13)) + this.workingKey[i15 + 2]);
            i13 = rotateWordLeft(i13, 14) - ((((~i14) & i12) + (i11 & i14)) + this.workingKey[i15 + 1]);
            i14 = rotateWordLeft(i14, 15) - ((((~i11) & i13) + (i12 & i11)) + this.workingKey[i15]);
        }
        int[] iArr = this.workingKey;
        int i16 = i11 - iArr[i12 & 63];
        int i17 = i12 - iArr[i13 & 63];
        int i18 = i13 - iArr[i14 & 63];
        int i19 = i14 - iArr[i16 & 63];
        for (int i20 = 40; i20 >= 20; i20 -= 4) {
            i16 = rotateWordLeft(i16, 11) - ((((~i17) & i19) + (i18 & i17)) + this.workingKey[i20 + 3]);
            i17 = rotateWordLeft(i17, 13) - ((((~i18) & i16) + (i19 & i18)) + this.workingKey[i20 + 2]);
            i18 = rotateWordLeft(i18, 14) - ((((~i19) & i17) + (i16 & i19)) + this.workingKey[i20 + 1]);
            i19 = rotateWordLeft(i19, 15) - ((((~i16) & i18) + (i17 & i16)) + this.workingKey[i20]);
        }
        int[] iArr2 = this.workingKey;
        int i21 = i16 - iArr2[i17 & 63];
        int i22 = i17 - iArr2[i18 & 63];
        int i23 = i18 - iArr2[i19 & 63];
        int i24 = i19 - iArr2[i21 & 63];
        for (int i25 = 16; i25 >= 0; i25 -= 4) {
            i21 = rotateWordLeft(i21, 11) - ((((~i22) & i24) + (i23 & i22)) + this.workingKey[i25 + 3]);
            i22 = rotateWordLeft(i22, 13) - ((((~i23) & i21) + (i24 & i23)) + this.workingKey[i25 + 2]);
            i23 = rotateWordLeft(i23, 14) - ((((~i24) & i22) + (i21 & i24)) + this.workingKey[i25 + 1]);
            i24 = rotateWordLeft(i24, 15) - ((((~i21) & i23) + (i22 & i21)) + this.workingKey[i25]);
        }
        bArr2[i10 + 0] = (byte) i24;
        bArr2[i10 + 1] = (byte) (i24 >> 8);
        bArr2[i10 + 2] = (byte) i23;
        bArr2[i10 + 3] = (byte) (i23 >> 8);
        bArr2[i10 + 4] = (byte) i22;
        bArr2[i10 + 5] = (byte) (i22 >> 8);
        bArr2[i10 + 6] = (byte) i21;
        bArr2[i10 + 7] = (byte) (i21 >> 8);
    }

    private void encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = ((bArr[i4 + 7] & 255) << 8) + (bArr[i4 + 6] & 255);
        int i12 = ((bArr[i4 + 5] & 255) << 8) + (bArr[i4 + 4] & 255);
        int i13 = ((bArr[i4 + 3] & 255) << 8) + (bArr[i4 + 2] & 255);
        int i14 = ((bArr[i4 + 1] & 255) << 8) + (bArr[i4 + 0] & 255);
        for (int i15 = 0; i15 <= 16; i15 += 4) {
            i14 = rotateWordLeft(i14 + ((~i11) & i13) + (i12 & i11) + this.workingKey[i15], 1);
            i13 = rotateWordLeft(i13 + ((~i14) & i12) + (i11 & i14) + this.workingKey[i15 + 1], 2);
            i12 = rotateWordLeft(i12 + ((~i13) & i11) + (i14 & i13) + this.workingKey[i15 + 2], 3);
            i11 = rotateWordLeft(i11 + ((~i12) & i14) + (i13 & i12) + this.workingKey[i15 + 3], 5);
        }
        int[] iArr = this.workingKey;
        int i16 = i14 + iArr[i11 & 63];
        int i17 = i13 + iArr[i16 & 63];
        int i18 = i12 + iArr[i17 & 63];
        int i19 = i11 + iArr[i18 & 63];
        for (int i20 = 20; i20 <= 40; i20 += 4) {
            i16 = rotateWordLeft(i16 + ((~i19) & i17) + (i18 & i19) + this.workingKey[i20], 1);
            i17 = rotateWordLeft(i17 + ((~i16) & i18) + (i19 & i16) + this.workingKey[i20 + 1], 2);
            i18 = rotateWordLeft(i18 + ((~i17) & i19) + (i16 & i17) + this.workingKey[i20 + 2], 3);
            i19 = rotateWordLeft(i19 + ((~i18) & i16) + (i17 & i18) + this.workingKey[i20 + 3], 5);
        }
        int[] iArr2 = this.workingKey;
        int i21 = i16 + iArr2[i19 & 63];
        int i22 = i17 + iArr2[i21 & 63];
        int i23 = i18 + iArr2[i22 & 63];
        int i24 = i19 + iArr2[i23 & 63];
        for (int i25 = 44; i25 < 64; i25 += 4) {
            i21 = rotateWordLeft(i21 + ((~i24) & i22) + (i23 & i24) + this.workingKey[i25], 1);
            i22 = rotateWordLeft(i22 + ((~i21) & i23) + (i24 & i21) + this.workingKey[i25 + 1], 2);
            i23 = rotateWordLeft(i23 + ((~i22) & i24) + (i21 & i22) + this.workingKey[i25 + 2], 3);
            i24 = rotateWordLeft(i24 + ((~i23) & i21) + (i22 & i23) + this.workingKey[i25 + 3], 5);
        }
        bArr2[i10 + 0] = (byte) i21;
        bArr2[i10 + 1] = (byte) (i21 >> 8);
        bArr2[i10 + 2] = (byte) i22;
        bArr2[i10 + 3] = (byte) (i22 >> 8);
        bArr2[i10 + 4] = (byte) i23;
        bArr2[i10 + 5] = (byte) (i23 >> 8);
        bArr2[i10 + 6] = (byte) i24;
        bArr2[i10 + 7] = (byte) (i24 >> 8);
    }

    private int[] generateWorkingKey(byte[] bArr, int i4) {
        int[] iArr = new int[128];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            iArr[i10] = bArr[i10] & 255;
        }
        int length = bArr.length;
        if (length < 128) {
            int i11 = iArr[length - 1];
            int i12 = 0;
            while (true) {
                int i13 = i12 + 1;
                i11 = piTable[(i11 + iArr[i12]) & 255] & 255;
                int i14 = length + 1;
                iArr[length] = i11;
                if (i14 >= 128) {
                    break;
                }
                length = i14;
                i12 = i13;
            }
        }
        int i15 = (i4 + 7) >> 3;
        int i16 = 128 - i15;
        int i17 = piTable[(255 >> ((-i4) & 7)) & iArr[i16]] & 255;
        iArr[i16] = i17;
        for (int i18 = i16 - 1; i18 >= 0; i18--) {
            i17 = piTable[i17 ^ iArr[i18 + i15]] & 255;
            iArr[i18] = i17;
        }
        int[] iArr2 = new int[64];
        for (int i19 = 0; i19 != 64; i19++) {
            int i20 = i19 * 2;
            iArr2[i19] = iArr[i20] + (iArr[i20 + 1] << 8);
        }
        return iArr2;
    }

    private int rotateWordLeft(int i4, int i10) {
        int i11 = i4 & 65535;
        return (i11 >> (16 - i10)) | (i11 << i10);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.encrypting = z9;
        if (cipherParameters instanceof RC2Parameters) {
            RC2Parameters rC2Parameters = (RC2Parameters) cipherParameters;
            this.workingKey = generateWorkingKey(rC2Parameters.getKey(), rC2Parameters.getEffectiveKeyBits());
        } else if (cipherParameters instanceof KeyParameter) {
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            this.workingKey = generateWorkingKey(key, key.length * 8);
        } else {
            throw new IllegalArgumentException("invalid parameter passed to RC2 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        if (this.workingKey != null) {
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
        throw new IllegalStateException("RC2 engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
