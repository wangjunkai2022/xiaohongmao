package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;

/* loaded from: classes4.dex */
public class BlockCipherMac implements Mac {
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;

    public BlockCipherMac(BlockCipher blockCipher) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2);
    }

    public BlockCipherMac(BlockCipher blockCipher, int i4) {
        if (i4 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.cipher = new CBCBlockCipher(blockCipher);
        this.macSize = i4 / 8;
        this.mac = new byte[blockCipher.getBlockSize()];
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) {
        int blockSize = this.cipher.getBlockSize();
        while (true) {
            int i10 = this.bufOff;
            if (i10 >= blockSize) {
                this.cipher.processBlock(this.buf, 0, this.mac, 0);
                System.arraycopy(this.mac, 0, bArr, i4, this.macSize);
                reset();
                return this.macSize;
            }
            this.buf[i10] = 0;
            this.bufOff = i10 + 1;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
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

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        int i4 = this.bufOff;
        byte[] bArr = this.buf;
        if (i4 == bArr.length) {
            this.cipher.processBlock(bArr, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int i10 = this.bufOff;
        this.bufOff = i10 + 1;
        bArr2[i10] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.cipher.getBlockSize();
        int i11 = this.bufOff;
        int i12 = blockSize - i11;
        if (i10 > i12) {
            System.arraycopy(bArr, i4, this.buf, i11, i12);
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
            i10 -= i12;
            i4 += i12;
            while (i10 > blockSize) {
                this.cipher.processBlock(bArr, i4, this.mac, 0);
                i10 -= blockSize;
                i4 += blockSize;
            }
        }
        System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
        this.bufOff += i10;
    }
}
