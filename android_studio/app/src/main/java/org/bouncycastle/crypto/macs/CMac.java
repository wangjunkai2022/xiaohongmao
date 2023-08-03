package org.bouncycastle.crypto.macs;

import com.facebook.imagepipeline.memory.c;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.qennnsad.aknkaksd.util.a1;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class CMac implements Mac {
    private byte[] Lu;
    private byte[] Lu2;
    private byte[] ZEROES;
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;
    private byte[] poly;

    public CMac(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public CMac(BlockCipher blockCipher, int i4) {
        if (i4 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (i4 > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("MAC size must be less or equal to " + (blockCipher.getBlockSize() * 8));
        }
        this.cipher = new CBCBlockCipher(blockCipher);
        this.macSize = i4 / 8;
        this.poly = lookupPoly(blockCipher.getBlockSize());
        this.mac = new byte[blockCipher.getBlockSize()];
        this.buf = new byte[blockCipher.getBlockSize()];
        this.ZEROES = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    private byte[] doubleLu(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i4 = (-shiftLeft(bArr, bArr2)) & 255;
        int length = bArr.length - 3;
        byte b10 = bArr2[length];
        byte[] bArr3 = this.poly;
        bArr2[length] = (byte) (b10 ^ (bArr3[1] & i4));
        int length2 = bArr.length - 2;
        bArr2[length2] = (byte) ((bArr3[2] & i4) ^ bArr2[length2]);
        int length3 = bArr.length - 1;
        bArr2[length3] = (byte) ((i4 & bArr3[3]) ^ bArr2[length3]);
        return bArr2;
    }

    private static byte[] lookupPoly(int i4) {
        int i10 = i4 * 8;
        int i11 = h0.J;
        switch (i10) {
            case 64:
            case 320:
                i11 = 27;
                break;
            case 128:
            case 192:
                break;
            case a1.f54532a /* 160 */:
                i11 = 45;
                break;
            case 224:
                i11 = 777;
                break;
            case 256:
                i11 = 1061;
                break;
            case c.f12563b /* 384 */:
                i11 = 4109;
                break;
            case 448:
                i11 = 2129;
                break;
            case 512:
                i11 = 293;
                break;
            case 768:
                i11 = 655377;
                break;
            case 1024:
                i11 = 524355;
                break;
            case 2048:
                i11 = 548865;
                break;
            default:
                throw new IllegalArgumentException("Unknown block size for CMAC: " + i10);
        }
        return Pack.intToBigEndian(i11);
    }

    private static int shiftLeft(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i4 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i4;
            }
            int i10 = bArr[length] & 255;
            bArr2[length] = (byte) (i4 | (i10 << 1));
            i4 = (i10 >>> 7) & 1;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) {
        byte[] bArr2;
        if (this.bufOff == this.cipher.getBlockSize()) {
            bArr2 = this.Lu;
        } else {
            new ISO7816d4Padding().addPadding(this.buf, this.bufOff);
            bArr2 = this.Lu2;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr3 = this.mac;
            if (i10 >= bArr3.length) {
                this.cipher.processBlock(this.buf, 0, bArr3, 0);
                System.arraycopy(this.mac, 0, bArr, i4, this.macSize);
                reset();
                return this.macSize;
            }
            byte[] bArr4 = this.buf;
            bArr4[i10] = (byte) (bArr4[i10] ^ bArr2[i10]);
            i10++;
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
        validate(cipherParameters);
        this.cipher.init(true, cipherParameters);
        byte[] bArr = this.ZEROES;
        byte[] bArr2 = new byte[bArr.length];
        this.cipher.processBlock(bArr, 0, bArr2, 0);
        byte[] doubleLu = doubleLu(bArr2);
        this.Lu = doubleLu;
        this.Lu2 = doubleLu(doubleLu);
        reset();
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

    void validate(CipherParameters cipherParameters) {
        if (cipherParameters != null && !(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("CMac mode only permits key to be set.");
        }
    }
}
