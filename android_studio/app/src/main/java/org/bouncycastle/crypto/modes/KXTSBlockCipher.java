package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class KXTSBlockCipher extends BufferedBlockCipher {
    private static final long RED_POLY_128 = 135;
    private static final long RED_POLY_256 = 1061;
    private static final long RED_POLY_512 = 293;
    private final int blockSize;
    private int counter;
    private final long reductionPolynomial;
    private final long[] tw_current;
    private final long[] tw_init;

    public KXTSBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.reductionPolynomial = getReductionPolynomial(blockSize);
        this.tw_init = new long[blockSize >>> 3];
        this.tw_current = new long[blockSize >>> 3];
        this.counter = -1;
    }

    private static void GF_double(long j4, long[] jArr) {
        long j10 = 0;
        int i4 = 0;
        while (i4 < jArr.length) {
            long j11 = jArr[i4];
            jArr[i4] = j10 ^ (j11 << 1);
            i4++;
            j10 = j11 >>> 63;
        }
        jArr[0] = (j4 & (-j10)) ^ jArr[0];
    }

    protected static long getReductionPolynomial(int i4) {
        if (i4 != 16) {
            if (i4 != 32) {
                if (i4 == 64) {
                    return RED_POLY_512;
                }
                throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
            }
            return RED_POLY_256;
        }
        return RED_POLY_128;
    }

    private void processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int i11 = this.counter;
        if (i11 == -1) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.counter = i11 + 1;
        GF_double(this.reductionPolynomial, this.tw_current);
        byte[] bArr3 = new byte[this.blockSize];
        Pack.longToLittleEndian(this.tw_current, bArr3, 0);
        int i12 = this.blockSize;
        byte[] bArr4 = new byte[i12];
        System.arraycopy(bArr3, 0, bArr4, 0, i12);
        for (int i13 = 0; i13 < this.blockSize; i13++) {
            bArr4[i13] = (byte) (bArr4[i13] ^ bArr[i4 + i13]);
        }
        this.cipher.processBlock(bArr4, 0, bArr4, 0);
        for (int i14 = 0; i14 < this.blockSize; i14++) {
            bArr2[i10 + i14] = (byte) (bArr4[i14] ^ bArr3[i14]);
        }
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i4) {
        reset();
        return 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i4) {
        return i4;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i4) {
        return i4;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Invalid parameters passed");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        CipherParameters parameters = parametersWithIV.getParameters();
        byte[] iv = parametersWithIV.getIV();
        int length = iv.length;
        int i4 = this.blockSize;
        if (length != i4) {
            throw new IllegalArgumentException("Currently only support IVs of exactly one block");
        }
        byte[] bArr = new byte[i4];
        System.arraycopy(iv, 0, bArr, 0, i4);
        this.cipher.init(true, parameters);
        this.cipher.processBlock(bArr, 0, bArr, 0);
        this.cipher.init(z9, parameters);
        Pack.littleEndianToLong(bArr, 0, this.tw_init);
        long[] jArr = this.tw_init;
        System.arraycopy(jArr, 0, this.tw_current, 0, jArr.length);
        this.counter = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b10, byte[] bArr, int i4) {
        throw new IllegalStateException("unsupported operation");
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) {
        if (bArr.length - i4 >= i10) {
            if (bArr2.length - i4 >= i10) {
                if (i10 % this.blockSize == 0) {
                    int i12 = 0;
                    while (i12 < i10) {
                        processBlock(bArr, i4 + i12, bArr2, i11 + i12);
                        i12 += this.blockSize;
                    }
                    return i10;
                }
                throw new IllegalArgumentException("Partial blocks not supported");
            }
            throw new OutputLengthException("Output buffer too short");
        }
        throw new DataLengthException("Input buffer too short");
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void reset() {
        this.cipher.reset();
        long[] jArr = this.tw_init;
        System.arraycopy(jArr, 0, this.tw_current, 0, jArr.length);
        this.counter = 0;
    }
}
