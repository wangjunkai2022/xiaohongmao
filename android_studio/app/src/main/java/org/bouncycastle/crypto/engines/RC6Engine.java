package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes4.dex */
public class RC6Engine implements BlockCipher {
    private static final int LGW = 5;
    private static final int P32 = -1209970333;
    private static final int Q32 = -1640531527;
    private static final int _noRounds = 20;
    private static final int bytesPerWord = 4;
    private static final int wordSize = 32;
    private int[] _S = null;
    private boolean forEncryption;

    private int bytesToWord(byte[] bArr, int i4) {
        int i10 = 0;
        for (int i11 = 3; i11 >= 0; i11--) {
            i10 = (i10 << 8) + (bArr[i11 + i4] & 255);
        }
        return i10;
    }

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToWord = bytesToWord(bArr, i4);
        int bytesToWord2 = bytesToWord(bArr, i4 + 4);
        int bytesToWord3 = bytesToWord(bArr, i4 + 8);
        int bytesToWord4 = bytesToWord(bArr, i4 + 12);
        int[] iArr = this._S;
        int i11 = bytesToWord3 - iArr[43];
        int i12 = bytesToWord - iArr[42];
        int i13 = 20;
        while (i13 >= 1) {
            int rotateLeft = rotateLeft(((i12 * 2) + 1) * i12, 5);
            int rotateLeft2 = rotateLeft(((i11 * 2) + 1) * i11, 5);
            int i14 = i13 * 2;
            i13--;
            int i15 = i12;
            i12 = rotateRight(bytesToWord4 - this._S[i14], rotateLeft2) ^ rotateLeft;
            bytesToWord4 = i11;
            i11 = rotateRight(bytesToWord2 - this._S[i14 + 1], rotateLeft) ^ rotateLeft2;
            bytesToWord2 = i15;
        }
        int[] iArr2 = this._S;
        wordToBytes(i12, bArr2, i10);
        wordToBytes(bytesToWord2 - iArr2[0], bArr2, i10 + 4);
        wordToBytes(i11, bArr2, i10 + 8);
        wordToBytes(bytesToWord4 - iArr2[1], bArr2, i10 + 12);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToWord = bytesToWord(bArr, i4);
        int bytesToWord2 = bytesToWord(bArr, i4 + 4);
        int bytesToWord3 = bytesToWord(bArr, i4 + 8);
        int bytesToWord4 = bytesToWord(bArr, i4 + 12);
        int[] iArr = this._S;
        int i11 = bytesToWord2 + iArr[0];
        int i12 = bytesToWord4 + iArr[1];
        int i13 = 1;
        while (i13 <= 20) {
            int rotateLeft = rotateLeft(((i11 * 2) + 1) * i11, 5);
            int rotateLeft2 = rotateLeft(((i12 * 2) + 1) * i12, 5);
            int i14 = i13 * 2;
            int rotateLeft3 = rotateLeft(bytesToWord3 ^ rotateLeft2, rotateLeft) + this._S[i14 + 1];
            i13++;
            bytesToWord3 = i12;
            i12 = rotateLeft(bytesToWord ^ rotateLeft, rotateLeft2) + this._S[i14];
            bytesToWord = i11;
            i11 = rotateLeft3;
        }
        int[] iArr2 = this._S;
        int i15 = bytesToWord3 + iArr2[43];
        wordToBytes(bytesToWord + iArr2[42], bArr2, i10);
        wordToBytes(i11, bArr2, i10 + 4);
        wordToBytes(i15, bArr2, i10 + 8);
        wordToBytes(i12, bArr2, i10 + 12);
        return 16;
    }

    private int rotateLeft(int i4, int i10) {
        return (i4 >>> (-i10)) | (i4 << i10);
    }

    private int rotateRight(int i4, int i10) {
        return (i4 << (-i10)) | (i4 >>> i10);
    }

    private void setKey(byte[] bArr) {
        int[] iArr;
        int length = (bArr.length + 3) / 4;
        int length2 = ((bArr.length + 4) - 1) / 4;
        int[] iArr2 = new int[length2];
        for (int length3 = bArr.length - 1; length3 >= 0; length3--) {
            int i4 = length3 / 4;
            iArr2[i4] = (iArr2[i4] << 8) + (bArr[length3] & 255);
        }
        int[] iArr3 = new int[44];
        this._S = iArr3;
        iArr3[0] = P32;
        int i10 = 1;
        while (true) {
            iArr = this._S;
            if (i10 >= iArr.length) {
                break;
            }
            iArr[i10] = iArr[i10 - 1] + Q32;
            i10++;
        }
        int length4 = length2 > iArr.length ? length2 * 3 : iArr.length * 3;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length4; i15++) {
            int[] iArr4 = this._S;
            i12 = rotateLeft(iArr4[i11] + i12 + i13, 3);
            iArr4[i11] = i12;
            i13 = rotateLeft(iArr2[i14] + i12 + i13, i13 + i12);
            iArr2[i14] = i13;
            i11 = (i11 + 1) % this._S.length;
            i14 = (i14 + 1) % length2;
        }
    }

    private void wordToBytes(int i4, byte[] bArr, int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            bArr[i11 + i10] = (byte) i4;
            i4 >>>= 8;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC6";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.forEncryption = z9;
            setKey(((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int blockSize = getBlockSize();
        if (this._S != null) {
            if (i4 + blockSize <= bArr.length) {
                if (blockSize + i10 <= bArr2.length) {
                    return this.forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("RC6 engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
