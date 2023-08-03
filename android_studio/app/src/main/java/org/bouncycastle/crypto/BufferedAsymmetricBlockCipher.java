package org.bouncycastle.crypto;

/* loaded from: classes4.dex */
public class BufferedAsymmetricBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    private final AsymmetricBlockCipher cipher;

    public BufferedAsymmetricBlockCipher(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.cipher = asymmetricBlockCipher;
    }

    public byte[] doFinal() throws InvalidCipherTextException {
        byte[] processBlock = this.cipher.processBlock(this.buf, 0, this.bufOff);
        reset();
        return processBlock;
    }

    public int getBufferPosition() {
        return this.bufOff;
    }

    public int getInputBlockSize() {
        return this.cipher.getInputBlockSize();
    }

    public int getOutputBlockSize() {
        return this.cipher.getOutputBlockSize();
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public void init(boolean z9, CipherParameters cipherParameters) {
        reset();
        this.cipher.init(z9, cipherParameters);
        this.buf = new byte[this.cipher.getInputBlockSize() + (z9 ? 1 : 0)];
        this.bufOff = 0;
    }

    public void processByte(byte b10) {
        int i4 = this.bufOff;
        byte[] bArr = this.buf;
        if (i4 >= bArr.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        this.bufOff = i4 + 1;
        bArr[i4] = b10;
    }

    public void processBytes(byte[] bArr, int i4, int i10) {
        if (i10 == 0) {
            return;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i11 = this.bufOff;
        int i12 = i11 + i10;
        byte[] bArr2 = this.buf;
        if (i12 > bArr2.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        System.arraycopy(bArr, i4, bArr2, i11, i10);
        this.bufOff += i10;
    }

    public void reset() {
        if (this.buf != null) {
            int i4 = 0;
            while (true) {
                byte[] bArr = this.buf;
                if (i4 >= bArr.length) {
                    break;
                }
                bArr[i4] = 0;
                i4++;
            }
        }
        this.bufOff = 0;
    }
}
