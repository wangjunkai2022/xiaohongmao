package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public class BufferedBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    protected BlockCipher cipher;
    protected boolean forEncryption;
    protected boolean partialBlockOkay;
    protected boolean pgpCFB;

    /* JADX INFO: Access modifiers changed from: protected */
    public BufferedBlockCipher() {
    }

    public BufferedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.buf = new byte[blockCipher.getBlockSize()];
        boolean z9 = false;
        this.bufOff = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int indexOf = algorithmName.indexOf(47) + 1;
        boolean z10 = indexOf > 0 && algorithmName.startsWith("PGP", indexOf);
        this.pgpCFB = z10;
        if (z10 || (blockCipher instanceof StreamCipher)) {
            this.partialBlockOkay = true;
            return;
        }
        if (indexOf > 0 && algorithmName.startsWith("OpenPGP", indexOf)) {
            z9 = true;
        }
        this.partialBlockOkay = z9;
    }

    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        try {
            int i10 = this.bufOff;
            if (i4 + i10 <= bArr.length) {
                int i11 = 0;
                if (i10 != 0) {
                    if (!this.partialBlockOkay) {
                        throw new DataLengthException("data not block size aligned");
                    }
                    BlockCipher blockCipher = this.cipher;
                    byte[] bArr2 = this.buf;
                    blockCipher.processBlock(bArr2, 0, bArr2, 0);
                    int i12 = this.bufOff;
                    this.bufOff = 0;
                    System.arraycopy(this.buf, 0, bArr, i4, i12);
                    i11 = i12;
                }
                return i11;
            }
            throw new OutputLengthException("output buffer too short for doFinal()");
        } finally {
            reset();
        }
    }

    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public int getOutputSize(int i4) {
        return i4 + this.bufOff;
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public int getUpdateOutputSize(int i4) {
        int length;
        int i10;
        int i11 = i4 + this.bufOff;
        if (!this.pgpCFB) {
            length = this.buf.length;
        } else if (this.forEncryption) {
            i10 = (i11 % this.buf.length) - (this.cipher.getBlockSize() + 2);
            return i11 - i10;
        } else {
            length = this.buf.length;
        }
        i10 = i11 % length;
        return i11 - i10;
    }

    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z9;
        reset();
        this.cipher.init(z9, cipherParameters);
    }

    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        byte[] bArr2 = this.buf;
        int i10 = this.bufOff;
        int i11 = i10 + 1;
        this.bufOff = i11;
        bArr2[i10] = b10;
        if (i11 == bArr2.length) {
            int processBlock = this.cipher.processBlock(bArr2, 0, bArr, i4);
            this.bufOff = 0;
            return processBlock;
        }
        return 0;
    }

    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        if (i10 >= 0) {
            int blockSize = getBlockSize();
            int updateOutputSize = getUpdateOutputSize(i10);
            if (updateOutputSize <= 0 || updateOutputSize + i11 <= bArr2.length) {
                byte[] bArr3 = this.buf;
                int length = bArr3.length;
                int i13 = this.bufOff;
                int i14 = length - i13;
                if (i10 > i14) {
                    System.arraycopy(bArr, i4, bArr3, i13, i14);
                    i12 = this.cipher.processBlock(this.buf, 0, bArr2, i11) + 0;
                    this.bufOff = 0;
                    i10 -= i14;
                    i4 += i14;
                    while (i10 > this.buf.length) {
                        i12 += this.cipher.processBlock(bArr, i4, bArr2, i11 + i12);
                        i10 -= blockSize;
                        i4 += blockSize;
                    }
                } else {
                    i12 = 0;
                }
                System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
                int i15 = this.bufOff + i10;
                this.bufOff = i15;
                byte[] bArr4 = this.buf;
                if (i15 == bArr4.length) {
                    int processBlock = i12 + this.cipher.processBlock(bArr4, 0, bArr2, i11 + i12);
                    this.bufOff = 0;
                    return processBlock;
                }
                return i12;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }

    public void reset() {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (i4 >= bArr.length) {
                this.bufOff = 0;
                this.cipher.reset();
                return;
            }
            bArr[i4] = 0;
            i4++;
        }
    }
}
