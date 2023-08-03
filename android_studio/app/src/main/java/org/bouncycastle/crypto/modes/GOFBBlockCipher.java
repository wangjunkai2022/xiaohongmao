package org.bouncycastle.crypto.modes;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.c;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class GOFBBlockCipher extends StreamBlockCipher {
    static final int C1 = 16843012;
    static final int C2 = 16843009;
    private byte[] IV;
    int N3;
    int N4;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    boolean firstStep;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public GOFBBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.firstStep = true;
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        if (blockSize != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.IV = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private int bytesToint(byte[] bArr, int i4) {
        return ((bArr[i4 + 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i4 + 2] << 16) & 16711680) + ((bArr[i4 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i4] & 255);
    }

    private void intTobytes(int i4, byte[] bArr, int i10) {
        bArr[i10 + 3] = (byte) (i4 >>> 24);
        bArr[i10 + 2] = (byte) (i4 >>> 16);
        bArr[i10 + 1] = (byte) (i4 >>> 8);
        bArr[i10] = (byte) i4;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    protected byte calculateByte(byte b10) {
        if (this.byteCount == 0) {
            if (this.firstStep) {
                this.firstStep = false;
                this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
                this.N3 = bytesToint(this.ofbOutV, 0);
                this.N4 = bytesToint(this.ofbOutV, 4);
            }
            int i4 = this.N3 + C2;
            this.N3 = i4;
            int i10 = this.N4 + C1;
            this.N4 = i10;
            if (i10 < C1 && i10 > 0) {
                this.N4 = i10 + 1;
            }
            intTobytes(i4, this.ofbV, 0);
            intTobytes(this.N4, this.ofbV, 4);
            this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
        }
        byte[] bArr = this.ofbOutV;
        int i11 = this.byteCount;
        int i12 = i11 + 1;
        this.byteCount = i12;
        byte b11 = (byte) (b10 ^ bArr[i11]);
        int i13 = this.blockSize;
        if (i12 == i13) {
            this.byteCount = 0;
            byte[] bArr2 = this.ofbV;
            System.arraycopy(bArr2, i13, bArr2, 0, bArr2.length - i13);
            byte[] bArr3 = this.ofbOutV;
            byte[] bArr4 = this.ofbV;
            int length = bArr4.length;
            int i14 = this.blockSize;
            System.arraycopy(bArr3, 0, bArr4, length - i14, i14);
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
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
            if (parametersWithIV.getParameters() == null) {
                return;
            }
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            }
            blockCipher = this.cipher;
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        processBytes(bArr, i4, this.blockSize, bArr2, i10);
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.ofbV, 0, bArr.length);
        this.byteCount = 0;
        this.cipher.reset();
    }
}
