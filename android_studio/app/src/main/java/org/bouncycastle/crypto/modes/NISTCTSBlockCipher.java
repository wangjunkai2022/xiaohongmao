package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes4.dex */
public class NISTCTSBlockCipher extends BufferedBlockCipher {
    public static final int CS1 = 1;
    public static final int CS2 = 2;
    public static final int CS3 = 3;
    private final int blockSize;
    private final int type;

    public NISTCTSBlockCipher(int i4, BlockCipher blockCipher) {
        this.type = i4;
        this.cipher = new CBCBlockCipher(blockCipher);
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buf = new byte[blockSize * 2];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        if (this.bufOff + i4 <= bArr.length) {
            int blockSize = this.cipher.getBlockSize();
            int i10 = this.bufOff;
            int i11 = i10 - blockSize;
            byte[] bArr2 = new byte[blockSize];
            if (this.forEncryption) {
                if (i10 < blockSize) {
                    throw new DataLengthException("need at least one block of input for NISTCTS");
                }
                if (i10 > blockSize) {
                    byte[] bArr3 = new byte[blockSize];
                    int i12 = this.type;
                    if (i12 == 2 || i12 == 3) {
                        this.cipher.processBlock(this.buf, 0, bArr2, 0);
                        System.arraycopy(this.buf, blockSize, bArr3, 0, i11);
                        this.cipher.processBlock(bArr3, 0, bArr3, 0);
                        if (this.type == 2 && i11 == blockSize) {
                            System.arraycopy(bArr2, 0, bArr, i4, blockSize);
                            System.arraycopy(bArr3, 0, bArr, i4 + blockSize, i11);
                        } else {
                            System.arraycopy(bArr3, 0, bArr, i4, blockSize);
                            System.arraycopy(bArr2, 0, bArr, i4 + blockSize, i11);
                        }
                    } else {
                        System.arraycopy(this.buf, 0, bArr2, 0, blockSize);
                        this.cipher.processBlock(bArr2, 0, bArr2, 0);
                        System.arraycopy(bArr2, 0, bArr, i4, i11);
                        System.arraycopy(this.buf, this.bufOff - i11, bArr3, 0, i11);
                        this.cipher.processBlock(bArr3, 0, bArr3, 0);
                        System.arraycopy(bArr3, 0, bArr, i4 + i11, blockSize);
                    }
                } else {
                    this.cipher.processBlock(this.buf, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i4, blockSize);
                }
            } else if (i10 < blockSize) {
                throw new DataLengthException("need at least one block of input for CTS");
            } else {
                byte[] bArr4 = new byte[blockSize];
                if (i10 > blockSize) {
                    int i13 = this.type;
                    if (i13 == 3 || (i13 == 2 && (this.buf.length - i10) % blockSize != 0)) {
                        BlockCipher blockCipher = this.cipher;
                        if (blockCipher instanceof CBCBlockCipher) {
                            ((CBCBlockCipher) blockCipher).getUnderlyingCipher().processBlock(this.buf, 0, bArr2, 0);
                        } else {
                            blockCipher.processBlock(this.buf, 0, bArr2, 0);
                        }
                        for (int i14 = blockSize; i14 != this.bufOff; i14++) {
                            int i15 = i14 - blockSize;
                            bArr4[i15] = (byte) (bArr2[i15] ^ this.buf[i14]);
                        }
                        System.arraycopy(this.buf, blockSize, bArr2, 0, i11);
                        this.cipher.processBlock(bArr2, 0, bArr, i4);
                    } else {
                        ((CBCBlockCipher) this.cipher).getUnderlyingCipher().processBlock(this.buf, this.bufOff - blockSize, bArr4, 0);
                        System.arraycopy(this.buf, 0, bArr2, 0, blockSize);
                        if (i11 != blockSize) {
                            System.arraycopy(bArr4, i11, bArr2, i11, blockSize - i11);
                        }
                        this.cipher.processBlock(bArr2, 0, bArr2, 0);
                        System.arraycopy(bArr2, 0, bArr, i4, blockSize);
                        for (int i16 = 0; i16 != i11; i16++) {
                            bArr4[i16] = (byte) (bArr4[i16] ^ this.buf[i16]);
                        }
                    }
                    System.arraycopy(bArr4, 0, bArr, i4 + blockSize, i11);
                } else {
                    this.cipher.processBlock(this.buf, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i4, blockSize);
                }
            }
            int i17 = this.bufOff;
            reset();
            return i17;
        }
        throw new OutputLengthException("output buffer to small in doFinal");
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i4) {
        return i4 + this.bufOff;
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
            byte[] bArr3 = this.buf;
            int i12 = this.blockSize;
            System.arraycopy(bArr3, i12, bArr3, 0, i12);
            this.bufOff = this.blockSize;
            i11 = processBlock;
        }
        byte[] bArr4 = this.buf;
        int i13 = this.bufOff;
        this.bufOff = i13 + 1;
        bArr4[i13] = b10;
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
                    int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i11) + 0;
                    byte[] bArr4 = this.buf;
                    System.arraycopy(bArr4, blockSize, bArr4, 0, blockSize);
                    this.bufOff = blockSize;
                    i10 -= i13;
                    i4 += i13;
                    while (i10 > blockSize) {
                        System.arraycopy(bArr, i4, this.buf, this.bufOff, blockSize);
                        processBlock += this.cipher.processBlock(this.buf, 0, bArr2, i11 + processBlock);
                        byte[] bArr5 = this.buf;
                        System.arraycopy(bArr5, blockSize, bArr5, 0, blockSize);
                        i10 -= blockSize;
                        i4 += blockSize;
                    }
                    i14 = processBlock;
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
