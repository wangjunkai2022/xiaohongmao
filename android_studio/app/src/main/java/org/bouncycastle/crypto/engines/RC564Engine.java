package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.RC5Parameters;

/* loaded from: classes4.dex */
public class RC564Engine implements BlockCipher {
    private static final long P64 = -5196783011329398165L;
    private static final long Q64 = -7046029254386353131L;
    private static final int bytesPerWord = 8;
    private static final int wordSize = 64;
    private boolean forEncryption;
    private int _noRounds = 12;
    private long[] _S = null;

    private long bytesToWord(byte[] bArr, int i4) {
        long j4 = 0;
        for (int i10 = 7; i10 >= 0; i10--) {
            j4 = (j4 << 8) + (bArr[i10 + i4] & 255);
        }
        return j4;
    }

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        long bytesToWord = bytesToWord(bArr, i4);
        long bytesToWord2 = bytesToWord(bArr, i4 + 8);
        for (int i11 = this._noRounds; i11 >= 1; i11--) {
            int i12 = i11 * 2;
            bytesToWord2 = rotateRight(bytesToWord2 - this._S[i12 + 1], bytesToWord) ^ bytesToWord;
            bytesToWord = rotateRight(bytesToWord - this._S[i12], bytesToWord2) ^ bytesToWord2;
        }
        wordToBytes(bytesToWord - this._S[0], bArr2, i10);
        wordToBytes(bytesToWord2 - this._S[1], bArr2, i10 + 8);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        long bytesToWord = bytesToWord(bArr, i4) + this._S[0];
        long bytesToWord2 = bytesToWord(bArr, i4 + 8) + this._S[1];
        for (int i11 = 1; i11 <= this._noRounds; i11++) {
            int i12 = i11 * 2;
            bytesToWord = rotateLeft(bytesToWord ^ bytesToWord2, bytesToWord2) + this._S[i12];
            bytesToWord2 = rotateLeft(bytesToWord2 ^ bytesToWord, bytesToWord) + this._S[i12 + 1];
        }
        wordToBytes(bytesToWord, bArr2, i10);
        wordToBytes(bytesToWord2, bArr2, i10 + 8);
        return 16;
    }

    private long rotateLeft(long j4, long j10) {
        long j11 = j10 & 63;
        return (j4 >>> ((int) (64 - j11))) | (j4 << ((int) j11));
    }

    private long rotateRight(long j4, long j10) {
        long j11 = j10 & 63;
        return (j4 << ((int) (64 - j11))) | (j4 >>> ((int) j11));
    }

    private void setKey(byte[] bArr) {
        long[] jArr;
        int length = (bArr.length + 7) / 8;
        long[] jArr2 = new long[length];
        for (int i4 = 0; i4 != bArr.length; i4++) {
            int i10 = i4 / 8;
            jArr2[i10] = jArr2[i10] + ((bArr[i4] & 255) << ((i4 % 8) * 8));
        }
        long[] jArr3 = new long[(this._noRounds + 1) * 2];
        this._S = jArr3;
        jArr3[0] = -5196783011329398165L;
        int i11 = 1;
        while (true) {
            jArr = this._S;
            if (i11 >= jArr.length) {
                break;
            }
            jArr[i11] = jArr[i11 - 1] + Q64;
            i11++;
        }
        int length2 = length > jArr.length ? length * 3 : jArr.length * 3;
        long j4 = 0;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length2; i14++) {
            long[] jArr4 = this._S;
            j4 = rotateLeft(jArr4[i12] + j4 + j10, 3L);
            jArr4[i12] = j4;
            j10 = rotateLeft(jArr2[i13] + j4 + j10, j10 + j4);
            jArr2[i13] = j10;
            i12 = (i12 + 1) % this._S.length;
            i13 = (i13 + 1) % length;
        }
    }

    private void wordToBytes(long j4, byte[] bArr, int i4) {
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i10 + i4] = (byte) j4;
            j4 >>>= 8;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-64";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof RC5Parameters)) {
            throw new IllegalArgumentException("invalid parameter passed to RC564 init - " + cipherParameters.getClass().getName());
        }
        RC5Parameters rC5Parameters = (RC5Parameters) cipherParameters;
        this.forEncryption = z9;
        this._noRounds = rC5Parameters.getRounds();
        setKey(rC5Parameters.getKey());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        return this.forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
