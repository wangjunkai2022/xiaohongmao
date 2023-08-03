package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes4.dex */
public class OpenPGPCFBBlockCipher implements BlockCipher {
    private byte[] FR;
    private byte[] FRE;
    private byte[] IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11;
        int i12;
        int i13;
        int i14 = this.blockSize;
        if (i4 + i14 <= bArr.length) {
            if (i10 + i14 <= bArr2.length) {
                int i15 = this.count;
                int i16 = 2;
                int i17 = 0;
                if (i15 > i14) {
                    byte b10 = bArr[i4];
                    this.FR[i14 - 2] = b10;
                    bArr2[i10] = encryptByte(b10, i14 - 2);
                    byte b11 = bArr[i4 + 1];
                    byte[] bArr3 = this.FR;
                    int i18 = this.blockSize;
                    bArr3[i18 - 1] = b11;
                    bArr2[i10 + 1] = encryptByte(b11, i18 - 1);
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    while (i16 < this.blockSize) {
                        byte b12 = bArr[i4 + i16];
                        int i19 = i16 - 2;
                        this.FR[i19] = b12;
                        bArr2[i10 + i16] = encryptByte(b12, i19);
                        i16++;
                    }
                } else {
                    if (i15 == 0) {
                        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                        while (true) {
                            i13 = this.blockSize;
                            if (i17 >= i13) {
                                break;
                            }
                            int i20 = i4 + i17;
                            this.FR[i17] = bArr[i20];
                            bArr2[i17] = encryptByte(bArr[i20], i17);
                            i17++;
                        }
                        i12 = this.count + i13;
                    } else if (i15 == i14) {
                        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                        byte b13 = bArr[i4];
                        byte b14 = bArr[i4 + 1];
                        bArr2[i10] = encryptByte(b13, 0);
                        bArr2[i10 + 1] = encryptByte(b14, 1);
                        byte[] bArr4 = this.FR;
                        System.arraycopy(bArr4, 2, bArr4, 0, this.blockSize - 2);
                        byte[] bArr5 = this.FR;
                        int i21 = this.blockSize;
                        bArr5[i21 - 2] = b13;
                        bArr5[i21 - 1] = b14;
                        this.cipher.processBlock(bArr5, 0, this.FRE, 0);
                        while (true) {
                            i11 = this.blockSize;
                            if (i16 >= i11) {
                                break;
                            }
                            byte b15 = bArr[i4 + i16];
                            int i22 = i16 - 2;
                            this.FR[i22] = b15;
                            bArr2[i10 + i16] = encryptByte(b15, i22);
                            i16++;
                        }
                        i12 = this.count + i11;
                    }
                    this.count = i12;
                }
                return this.blockSize;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too short");
    }

    private int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11;
        int i12 = this.blockSize;
        if (i4 + i12 <= bArr.length) {
            if (i10 + i12 <= bArr2.length) {
                int i13 = this.count;
                int i14 = 2;
                int i15 = 0;
                if (i13 > i12) {
                    byte[] bArr3 = this.FR;
                    int i16 = i12 - 2;
                    byte encryptByte = encryptByte(bArr[i4], i12 - 2);
                    bArr2[i10] = encryptByte;
                    bArr3[i16] = encryptByte;
                    byte[] bArr4 = this.FR;
                    int i17 = this.blockSize;
                    int i18 = i17 - 1;
                    byte encryptByte2 = encryptByte(bArr[i4 + 1], i17 - 1);
                    bArr2[i10 + 1] = encryptByte2;
                    bArr4[i18] = encryptByte2;
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    while (i14 < this.blockSize) {
                        byte[] bArr5 = this.FR;
                        int i19 = i14 - 2;
                        byte encryptByte3 = encryptByte(bArr[i4 + i14], i19);
                        bArr2[i10 + i14] = encryptByte3;
                        bArr5[i19] = encryptByte3;
                        i14++;
                    }
                } else {
                    if (i13 != 0) {
                        if (i13 == i12) {
                            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                            bArr2[i10] = encryptByte(bArr[i4], 0);
                            bArr2[i10 + 1] = encryptByte(bArr[i4 + 1], 1);
                            byte[] bArr6 = this.FR;
                            System.arraycopy(bArr6, 2, bArr6, 0, this.blockSize - 2);
                            System.arraycopy(bArr2, i10, this.FR, this.blockSize - 2, 2);
                            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                            while (true) {
                                i11 = this.blockSize;
                                if (i14 >= i11) {
                                    break;
                                }
                                byte[] bArr7 = this.FR;
                                int i20 = i14 - 2;
                                byte encryptByte4 = encryptByte(bArr[i4 + i14], i20);
                                bArr2[i10 + i14] = encryptByte4;
                                bArr7[i20] = encryptByte4;
                                i14++;
                            }
                        }
                    } else {
                        this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                        while (true) {
                            i11 = this.blockSize;
                            if (i15 >= i11) {
                                break;
                            }
                            byte[] bArr8 = this.FR;
                            byte encryptByte5 = encryptByte(bArr[i4 + i15], i15);
                            bArr2[i10 + i15] = encryptByte5;
                            bArr8[i15] = encryptByte5;
                            i15++;
                        }
                    }
                    this.count += i11;
                }
                return this.blockSize;
            }
            throw new OutputLengthException("output buffer too short");
        }
        throw new DataLengthException("input buffer too short");
    }

    private byte encryptByte(byte b10, int i4) {
        return (byte) (b10 ^ this.FRE[i4]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
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
        this.forEncryption = z9;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        return this.forEncryption ? encryptBlock(bArr, i4, bArr2, i10) : decryptBlock(bArr, i4, bArr2, i10);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        byte[] bArr = this.IV;
        byte[] bArr2 = this.FR;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.cipher.reset();
    }
}
