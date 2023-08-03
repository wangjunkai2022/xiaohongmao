package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes4.dex */
public class PaddedBlockCipher extends BufferedBlockCipher {
    public PaddedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int i10;
        int i11;
        int blockSize = this.cipher.getBlockSize();
        if (this.forEncryption) {
            if (this.bufOff != blockSize) {
                i11 = 0;
            } else if ((blockSize * 2) + i4 > bArr.length) {
                throw new OutputLengthException("output buffer too short");
            } else {
                i11 = this.cipher.processBlock(this.buf, 0, bArr, i4);
                this.bufOff = 0;
            }
            byte b10 = (byte) (blockSize - this.bufOff);
            while (true) {
                int i12 = this.bufOff;
                if (i12 >= blockSize) {
                    break;
                }
                this.buf[i12] = b10;
                this.bufOff = i12 + 1;
            }
            i10 = i11 + this.cipher.processBlock(this.buf, 0, bArr, i4 + i11);
        } else if (this.bufOff != blockSize) {
            throw new DataLengthException("last block incomplete in decryption");
        } else {
            BlockCipher blockCipher = this.cipher;
            byte[] bArr2 = this.buf;
            int processBlock = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            this.bufOff = 0;
            byte[] bArr3 = this.buf;
            int i13 = bArr3[blockSize - 1] & 255;
            if (i13 > blockSize) {
                throw new InvalidCipherTextException("pad block corrupted");
            }
            i10 = processBlock - i13;
            System.arraycopy(bArr3, 0, bArr, i4, i10);
        }
        reset();
        return i10;
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
        return length == 0 ? i10 - bArr.length : i10 - length;
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
