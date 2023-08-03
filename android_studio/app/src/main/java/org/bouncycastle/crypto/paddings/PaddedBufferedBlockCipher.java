package org.bouncycastle.crypto.paddings;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithRandom;

/* loaded from: classes4.dex */
public class PaddedBufferedBlockCipher extends BufferedBlockCipher {
    BlockCipherPadding padding;

    public PaddedBufferedBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, new PKCS7Padding());
    }

    public PaddedBufferedBlockCipher(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this.cipher = blockCipher;
        this.padding = blockCipherPadding;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int padCount;
        int i10;
        int blockSize = this.cipher.getBlockSize();
        if (this.forEncryption) {
            if (this.bufOff != blockSize) {
                i10 = 0;
            } else if ((blockSize * 2) + i4 > bArr.length) {
                reset();
                throw new OutputLengthException("output buffer too short");
            } else {
                i10 = this.cipher.processBlock(this.buf, 0, bArr, i4);
                this.bufOff = 0;
            }
            this.padding.addPadding(this.buf, this.bufOff);
            padCount = i10 + this.cipher.processBlock(this.buf, 0, bArr, i4 + i10);
        } else if (this.bufOff != blockSize) {
            reset();
            throw new DataLengthException("last block incomplete in decryption");
        } else {
            BlockCipher blockCipher = this.cipher;
            byte[] bArr2 = this.buf;
            int processBlock = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            this.bufOff = 0;
            try {
                padCount = processBlock - this.padding.padCount(this.buf);
                System.arraycopy(this.buf, 0, bArr, i4, padCount);
            } finally {
                reset();
            }
        }
        return padCount;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i4) {
        int i10 = i4 + this.bufOff;
        byte[] bArr = this.buf;
        int length = i10 % bArr.length;
        if (length != 0) {
            i10 -= length;
        } else if (!this.forEncryption) {
            return i10;
        }
        return i10 + bArr.length;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i4) {
        int i10 = i4 + this.bufOff;
        byte[] bArr = this.buf;
        int length = i10 % bArr.length;
        return length == 0 ? Math.max(0, i10 - bArr.length) : i10 - length;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.forEncryption = z9;
        reset();
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.padding.init(parametersWithRandom.getRandom());
            blockCipher = this.cipher;
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            this.padding.init(null);
            blockCipher = this.cipher;
        }
        blockCipher.init(z9, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b10, byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        int i10 = this.bufOff;
        byte[] bArr2 = this.buf;
        int i11 = 0;
        if (i10 == bArr2.length) {
            int processBlock = this.cipher.processBlock(bArr2, 0, bArr, i4);
            this.bufOff = 0;
            i11 = processBlock;
        }
        byte[] bArr3 = this.buf;
        int i12 = this.bufOff;
        this.bufOff = i12 + 1;
        bArr3[i12] = b10;
        return i11;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (i10 >= 0) {
            int blockSize = getBlockSize();
            int updateOutputSize = getUpdateOutputSize(i10);
            if (updateOutputSize <= 0 || updateOutputSize + i11 <= bArr2.length) {
                byte[] bArr3 = this.buf;
                int length = bArr3.length;
                int i12 = this.bufOff;
                int i13 = length - i12;
                int i14 = 0;
                if (i10 > i13) {
                    System.arraycopy(bArr, i4, bArr3, i12, i13);
                    this.bufOff = 0;
                    i10 -= i13;
                    i4 += i13;
                    i14 = this.cipher.processBlock(this.buf, 0, bArr2, i11) + 0;
                    while (i10 > this.buf.length) {
                        i14 += this.cipher.processBlock(bArr, i4, bArr2, i11 + i14);
                        i10 -= blockSize;
                        i4 += blockSize;
                    }
                }
                System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
                this.bufOff += i10;
                return i14;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
