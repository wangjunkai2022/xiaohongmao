package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class PGPCFBBlockCipher implements BlockCipher {
    private byte[] FR;
    private byte[] FRE;
    private byte[] IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;
    private boolean inlineIv;
    private byte[] tmp;

    public PGPCFBBlockCipher(BlockCipher blockCipher, boolean z9) {
        this.cipher = blockCipher;
        this.inlineIv = z9;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
        this.tmp = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.blockSize;
        if (i4 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + i10 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i12 = 0;
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        for (int i13 = 0; i13 < this.blockSize; i13++) {
            bArr2[i10 + i13] = encryptByte(bArr[i4 + i13], i13);
        }
        while (true) {
            int i14 = this.blockSize;
            if (i12 >= i14) {
                return i14;
            }
            this.FR[i12] = bArr[i4 + i12];
            i12++;
        }
    }

    private int decryptBlockWithIV(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11;
        int i12 = this.blockSize;
        if (i4 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i10 + i12 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i13 = this.count;
        if (i13 == 0) {
            for (int i14 = 0; i14 < this.blockSize; i14++) {
                this.FR[i14] = bArr[i4 + i14];
            }
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            this.count += this.blockSize;
            return 0;
        } else if (i13 != i12) {
            if (i13 >= i12 + 2) {
                System.arraycopy(bArr, i4, this.tmp, 0, i12);
                bArr2[i10 + 0] = encryptByte(this.tmp[0], this.blockSize - 2);
                bArr2[i10 + 1] = encryptByte(this.tmp[1], this.blockSize - 1);
                System.arraycopy(this.tmp, 0, this.FR, this.blockSize - 2, 2);
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                int i15 = 0;
                while (true) {
                    i11 = this.blockSize;
                    if (i15 >= i11 - 2) {
                        break;
                    }
                    bArr2[i10 + i15 + 2] = encryptByte(this.tmp[i15 + 2], i15);
                    i15++;
                }
                System.arraycopy(this.tmp, 2, this.FR, 0, i11 - 2);
            }
            return this.blockSize;
        } else {
            System.arraycopy(bArr, i4, this.tmp, 0, i12);
            byte[] bArr3 = this.FR;
            System.arraycopy(bArr3, 2, bArr3, 0, this.blockSize - 2);
            byte[] bArr4 = this.FR;
            int i16 = this.blockSize;
            byte[] bArr5 = this.tmp;
            bArr4[i16 - 2] = bArr5[0];
            bArr4[i16 - 1] = bArr5[1];
            this.cipher.processBlock(bArr4, 0, this.FRE, 0);
            int i17 = 0;
            while (true) {
                int i18 = this.blockSize;
                if (i17 >= i18 - 2) {
                    System.arraycopy(this.tmp, 2, this.FR, 0, i18 - 2);
                    this.count += 2;
                    return this.blockSize - 2;
                }
                bArr2[i10 + i17] = encryptByte(this.tmp[i17 + 2], i17);
                i17++;
            }
        }
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.blockSize;
        if (i4 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + i10 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i12 = 0;
        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
        for (int i13 = 0; i13 < this.blockSize; i13++) {
            bArr2[i10 + i13] = encryptByte(bArr[i4 + i13], i13);
        }
        while (true) {
            int i14 = this.blockSize;
            if (i12 >= i14) {
                return i14;
            }
            this.FR[i12] = bArr2[i10 + i12];
            i12++;
        }
    }

    private int encryptBlockWithIV(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11;
        int i12;
        int i13 = this.blockSize;
        if (i4 + i13 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        int i14 = this.count;
        if (i14 != 0) {
            if (i14 >= i13 + 2) {
                if (i13 + i10 > bArr2.length) {
                    throw new OutputLengthException("output buffer too short");
                }
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                int i15 = 0;
                while (true) {
                    i11 = this.blockSize;
                    if (i15 >= i11) {
                        break;
                    }
                    bArr2[i10 + i15] = encryptByte(bArr[i4 + i15], i15);
                    i15++;
                }
                System.arraycopy(bArr2, i10, this.FR, 0, i11);
            }
            return this.blockSize;
        } else if ((i13 * 2) + i10 + 2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            int i16 = 0;
            while (true) {
                i12 = this.blockSize;
                if (i16 >= i12) {
                    break;
                }
                bArr2[i10 + i16] = encryptByte(this.IV[i16], i16);
                i16++;
            }
            System.arraycopy(bArr2, i10, this.FR, 0, i12);
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            int i17 = this.blockSize;
            bArr2[i10 + i17] = encryptByte(this.IV[i17 - 2], 0);
            int i18 = this.blockSize;
            bArr2[i10 + i18 + 1] = encryptByte(this.IV[i18 - 1], 1);
            System.arraycopy(bArr2, i10 + 2, this.FR, 0, this.blockSize);
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            int i19 = 0;
            while (true) {
                int i20 = this.blockSize;
                if (i19 >= i20) {
                    System.arraycopy(bArr2, i10 + i20 + 2, this.FR, 0, i20);
                    int i21 = this.count;
                    int i22 = this.blockSize;
                    this.count = i21 + (i22 * 2) + 2;
                    return (i22 * 2) + 2;
                }
                bArr2[i20 + i10 + 2 + i19] = encryptByte(bArr[i4 + i19], i19);
                i19++;
            }
        }
    }

    private byte encryptByte(byte b10, int i4) {
        return (byte) (b10 ^ this.FRE[i4]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        StringBuilder sb;
        String str;
        if (this.inlineIv) {
            sb = new StringBuilder();
            sb.append(this.cipher.getAlgorithmName());
            str = "/PGPCFBwithIV";
        } else {
            sb = new StringBuilder();
            sb.append(this.cipher.getAlgorithmName());
            str = "/PGPCFB";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.forEncryption = z9;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            int length = iv.length;
            byte[] bArr = this.IV;
            if (length < bArr.length) {
                System.arraycopy(iv, 0, bArr, bArr.length - iv.length, iv.length);
                int i4 = 0;
                while (true) {
                    byte[] bArr2 = this.IV;
                    if (i4 >= bArr2.length - iv.length) {
                        break;
                    }
                    bArr2[i4] = 0;
                    i4++;
                }
            } else {
                System.arraycopy(iv, 0, bArr, 0, bArr.length);
            }
            reset();
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            blockCipher = this.cipher;
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        return this.inlineIv ? this.forEncryption ? encryptBlockWithIV(bArr, i4, bArr2, i10) : decryptBlockWithIV(bArr, i4, bArr2, i10) : this.forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        int i4 = 0;
        while (true) {
            byte[] bArr = this.FR;
            if (i4 == bArr.length) {
                this.cipher.reset();
                return;
            }
            if (this.inlineIv) {
                bArr[i4] = 0;
            } else {
                bArr[i4] = this.IV[i4];
            }
            i4++;
        }
    }
}
