package org.bouncycastle.crypto.engines;

import androidx.core.view.MotionEventCompat;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class IDEAEngine implements BlockCipher {
    private static final int BASE = 65537;
    protected static final int BLOCK_SIZE = 8;
    private static final int MASK = 65535;
    private int[] workingKey = null;

    private int bytesToWord(byte[] bArr, int i4) {
        return ((bArr[i4] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i4 + 1] & 255);
    }

    private int[] expandKey(byte[] bArr) {
        int i4;
        int[] iArr = new int[52];
        int i10 = 0;
        if (bArr.length < 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
            bArr = bArr2;
        }
        while (true) {
            if (i10 >= 8) {
                break;
            }
            iArr[i10] = bytesToWord(bArr, i10 * 2);
            i10++;
        }
        for (i4 = 8; i4 < 52; i4++) {
            int i11 = i4 & 7;
            if (i11 < 6) {
                iArr[i4] = (((iArr[i4 - 7] & 127) << 9) | (iArr[i4 - 6] >> 7)) & 65535;
            } else if (i11 == 6) {
                iArr[i4] = (((iArr[i4 - 7] & 127) << 9) | (iArr[i4 - 14] >> 7)) & 65535;
            } else {
                iArr[i4] = (((iArr[i4 - 15] & 127) << 9) | (iArr[i4 - 14] >> 7)) & 65535;
            }
        }
        return iArr;
    }

    private int[] generateWorkingKey(boolean z9, byte[] bArr) {
        return z9 ? expandKey(bArr) : invertKey(expandKey(bArr));
    }

    private void ideaFunc(int[] iArr, byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToWord = bytesToWord(bArr, i4);
        int bytesToWord2 = bytesToWord(bArr, i4 + 2);
        int bytesToWord3 = bytesToWord(bArr, i4 + 4);
        int bytesToWord4 = bytesToWord(bArr, i4 + 6);
        int i11 = 0;
        int i12 = bytesToWord3;
        int i13 = bytesToWord2;
        int i14 = bytesToWord;
        int i15 = 0;
        while (i11 < 8) {
            int i16 = i15 + 1;
            int mul = mul(i14, iArr[i15]);
            int i17 = i16 + 1;
            int i18 = (i13 + iArr[i16]) & 65535;
            int i19 = i17 + 1;
            int i20 = (i12 + iArr[i17]) & 65535;
            int i21 = i19 + 1;
            int mul2 = mul(bytesToWord4, iArr[i19]);
            int i22 = i21 + 1;
            int mul3 = mul(i20 ^ mul, iArr[i21]);
            int mul4 = mul(((i18 ^ mul2) + mul3) & 65535, iArr[i22]);
            int i23 = (mul3 + mul4) & 65535;
            bytesToWord4 = mul2 ^ i23;
            i12 = i23 ^ i18;
            i11++;
            i13 = i20 ^ mul4;
            i14 = mul ^ mul4;
            i15 = i22 + 1;
        }
        int i24 = i15 + 1;
        wordToBytes(mul(i14, iArr[i15]), bArr2, i10);
        int i25 = i24 + 1;
        wordToBytes(i12 + iArr[i24], bArr2, i10 + 2);
        wordToBytes(i13 + iArr[i25], bArr2, i10 + 4);
        wordToBytes(mul(bytesToWord4, iArr[i25 + 1]), bArr2, i10 + 6);
    }

    private int[] invertKey(int[] iArr) {
        int[] iArr2 = new int[52];
        int mulInv = mulInv(iArr[0]);
        int i4 = 1;
        int addInv = addInv(iArr[1]);
        int addInv2 = addInv(iArr[2]);
        iArr2[51] = mulInv(iArr[3]);
        iArr2[50] = addInv2;
        iArr2[49] = addInv;
        int i10 = 48;
        iArr2[48] = mulInv;
        int i11 = 4;
        while (i4 < 8) {
            int i12 = i11 + 1;
            int i13 = iArr[i11];
            int i14 = i12 + 1;
            int i15 = i10 - 1;
            iArr2[i15] = iArr[i12];
            int i16 = i15 - 1;
            iArr2[i16] = i13;
            int i17 = i14 + 1;
            int mulInv2 = mulInv(iArr[i14]);
            int i18 = i17 + 1;
            int addInv3 = addInv(iArr[i17]);
            int i19 = i18 + 1;
            int addInv4 = addInv(iArr[i18]);
            int i20 = i16 - 1;
            iArr2[i20] = mulInv(iArr[i19]);
            int i21 = i20 - 1;
            iArr2[i21] = addInv3;
            int i22 = i21 - 1;
            iArr2[i22] = addInv4;
            i10 = i22 - 1;
            iArr2[i10] = mulInv2;
            i4++;
            i11 = i19 + 1;
        }
        int i23 = i11 + 1;
        int i24 = iArr[i11];
        int i25 = i23 + 1;
        int i26 = i10 - 1;
        iArr2[i26] = iArr[i23];
        int i27 = i26 - 1;
        iArr2[i27] = i24;
        int i28 = i25 + 1;
        int mulInv3 = mulInv(iArr[i25]);
        int i29 = i28 + 1;
        int addInv5 = addInv(iArr[i28]);
        int i30 = i29 + 1;
        int addInv6 = addInv(iArr[i29]);
        int i31 = i27 - 1;
        iArr2[i31] = mulInv(iArr[i30]);
        int i32 = i31 - 1;
        iArr2[i32] = addInv6;
        int i33 = i32 - 1;
        iArr2[i33] = addInv5;
        iArr2[i33 - 1] = mulInv3;
        return iArr2;
    }

    private int mul(int i4, int i10) {
        int i11;
        if (i4 == 0) {
            i11 = 65537 - i10;
        } else if (i10 == 0) {
            i11 = 65537 - i4;
        } else {
            int i12 = i4 * i10;
            int i13 = i12 & 65535;
            int i14 = i12 >>> 16;
            i11 = (i13 - i14) + (i13 < i14 ? 1 : 0);
        }
        return i11 & 65535;
    }

    private int mulInv(int i4) {
        if (i4 < 2) {
            return i4;
        }
        int i10 = 65537 / i4;
        int i11 = 65537 % i4;
        int i12 = 1;
        while (i11 != 1) {
            int i13 = i4 / i11;
            i4 %= i11;
            i12 = (i12 + (i13 * i10)) & 65535;
            if (i4 == 1) {
                return i12;
            }
            int i14 = i11 / i4;
            i11 %= i4;
            i10 = (i10 + (i14 * i12)) & 65535;
        }
        return (1 - i10) & 65535;
    }

    private void wordToBytes(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) (i4 >>> 8);
        bArr[i10 + 1] = (byte) i4;
    }

    int addInv(int i4) {
        return (0 - i4) & 65535;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "IDEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z9, ((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to IDEA init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[] iArr = this.workingKey;
        if (iArr != null) {
            if (i4 + 8 <= bArr.length) {
                if (i10 + 8 <= bArr2.length) {
                    ideaFunc(iArr, bArr, i4, bArr2, i10);
                    return 8;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("IDEA engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
