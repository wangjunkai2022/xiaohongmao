package org.bouncycastle.crypto.macs;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.c;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithSBox;

/* loaded from: classes4.dex */
public class GOST28147Mac implements Mac {
    private int blockSize = 8;
    private int macSize = 4;
    private boolean firstStep = true;
    private int[] workingKey = null;
    private byte[] macIV = null;
    private byte[] S = {9, 6, 3, 2, 8, c.f32106m, 1, 7, 10, 4, c.f32109p, c.f32110q, c.f32107n, 0, c.f32108o, 5, 3, 7, c.f32109p, 9, 8, 10, c.f32110q, 0, 5, 2, 6, c.f32107n, c.f32106m, 4, c.f32108o, 1, c.f32109p, 4, 6, 2, c.f32106m, 3, c.f32108o, 8, c.f32107n, c.f32110q, 5, 10, 0, 7, 1, 9, c.f32109p, 7, 10, c.f32107n, c.f32108o, 1, 3, 9, 0, 2, c.f32106m, 4, c.f32110q, 8, 5, 6, c.f32106m, 5, 1, 9, 8, c.f32108o, c.f32110q, 0, c.f32109p, 4, 2, 3, c.f32107n, 7, 10, 6, 3, 10, c.f32108o, c.f32107n, 1, 2, 0, c.f32106m, 7, 5, 9, 4, 8, c.f32110q, c.f32109p, 6, 1, c.f32108o, 2, 9, 7, 10, 6, 0, 8, c.f32107n, 4, 5, c.f32110q, 3, c.f32106m, c.f32109p, c.f32106m, 10, c.f32110q, 5, 0, c.f32107n, c.f32109p, 8, 6, 2, 3, 9, 1, 7, c.f32108o, 4};
    private byte[] mac = new byte[8];
    private byte[] buf = new byte[8];
    private int bufOff = 0;

    private byte[] CM5func(byte[] bArr, int i4, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length - i4];
        System.arraycopy(bArr, i4, bArr3, 0, bArr2.length);
        for (int i10 = 0; i10 != bArr2.length; i10++) {
            bArr3[i10] = (byte) (bArr3[i10] ^ bArr2[i10]);
        }
        return bArr3;
    }

    private int bytesToint(byte[] bArr, int i4) {
        return ((bArr[i4 + 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i4 + 2] << 16) & 16711680) + ((bArr[i4 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i4] & 255);
    }

    private int[] generateWorkingKey(byte[] bArr) {
        if (bArr.length == 32) {
            int[] iArr = new int[8];
            for (int i4 = 0; i4 != 8; i4++) {
                iArr[i4] = bytesToint(bArr, i4 * 4);
            }
            return iArr;
        }
        throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
    }

    private void gost28147MacFunc(int[] iArr, byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bytesToint = bytesToint(bArr, i4);
        int bytesToint2 = bytesToint(bArr, i4 + 4);
        for (int i11 = 0; i11 < 2; i11++) {
            int i12 = 0;
            while (i12 < 8) {
                i12++;
                int i13 = bytesToint;
                bytesToint = bytesToint2 ^ gost28147_mainStep(bytesToint, iArr[i12]);
                bytesToint2 = i13;
            }
        }
        intTobytes(bytesToint, bArr2, i10);
        intTobytes(bytesToint2, bArr2, i10 + 4);
    }

    private int gost28147_mainStep(int i4, int i10) {
        int i11 = i10 + i4;
        byte[] bArr = this.S;
        int i12 = (bArr[((i11 >> 0) & 15) + 0] << 0) + (bArr[((i11 >> 4) & 15) + 16] << 4) + (bArr[((i11 >> 8) & 15) + 32] << 8) + (bArr[((i11 >> 12) & 15) + 48] << c.f32107n) + (bArr[((i11 >> 16) & 15) + 64] << 16) + (bArr[((i11 >> 20) & 15) + 80] << c.f32117x) + (bArr[((i11 >> 24) & 15) + 96] << c.B) + (bArr[((i11 >> 28) & 15) + 112] << c.F);
        return (i12 << 11) | (i12 >>> 21);
    }

    private void intTobytes(int i4, byte[] bArr, int i10) {
        bArr[i10 + 3] = (byte) (i4 >>> 24);
        bArr[i10 + 2] = (byte) (i4 >>> 16);
        bArr[i10 + 1] = (byte) (i4 >>> 8);
        bArr[i10] = (byte) i4;
    }

    private void recursiveInit(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters == null) {
            return;
        }
        CipherParameters cipherParameters2 = null;
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            System.arraycopy(parametersWithSBox.getSBox(), 0, this.S, 0, parametersWithSBox.getSBox().length);
            cipherParameters2 = parametersWithSBox.getParameters();
        } else if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey());
        } else if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        } else {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            byte[] bArr = this.mac;
            System.arraycopy(iv, 0, bArr, 0, bArr.length);
            this.macIV = parametersWithIV.getIV();
            cipherParameters2 = parametersWithIV.getParameters();
        }
        recursiveInit(cipherParameters2);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        while (true) {
            int i10 = this.bufOff;
            if (i10 >= this.blockSize) {
                break;
            }
            this.buf[i10] = 0;
            this.bufOff = i10 + 1;
        }
        byte[] bArr2 = this.buf;
        byte[] bArr3 = new byte[bArr2.length];
        System.arraycopy(bArr2, 0, bArr3, 0, this.mac.length);
        if (this.firstStep) {
            this.firstStep = false;
        } else {
            bArr3 = CM5func(this.buf, 0, this.mac);
        }
        gost28147MacFunc(this.workingKey, bArr3, 0, this.mac, 0);
        byte[] bArr4 = this.mac;
        int i11 = this.macSize;
        System.arraycopy(bArr4, (bArr4.length / 2) - i11, bArr, i4, i11);
        reset();
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "GOST28147Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.buf = new byte[this.blockSize];
        this.macIV = null;
        recursiveInit(cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i4 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (i4 >= bArr.length) {
                this.bufOff = 0;
                this.firstStep = true;
                return;
            }
            bArr[i4] = 0;
            i4++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        int i4 = this.bufOff;
        byte[] bArr = this.buf;
        if (i4 == bArr.length) {
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, this.mac.length);
            if (this.firstStep) {
                this.firstStep = false;
                byte[] bArr3 = this.macIV;
                if (bArr3 != null) {
                    bArr2 = CM5func(this.buf, 0, bArr3);
                }
            } else {
                bArr2 = CM5func(this.buf, 0, this.mac);
            }
            gost28147MacFunc(this.workingKey, bArr2, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr4 = this.buf;
        int i10 = this.bufOff;
        this.bufOff = i10 + 1;
        bArr4[i10] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        if (i10 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i11 = this.blockSize;
        int i12 = this.bufOff;
        int i13 = i11 - i12;
        if (i10 > i13) {
            System.arraycopy(bArr, i4, this.buf, i12, i13);
            byte[] bArr2 = this.buf;
            byte[] bArr3 = new byte[bArr2.length];
            System.arraycopy(bArr2, 0, bArr3, 0, this.mac.length);
            if (this.firstStep) {
                this.firstStep = false;
                byte[] bArr4 = this.macIV;
                if (bArr4 != null) {
                    bArr3 = CM5func(this.buf, 0, bArr4);
                }
            } else {
                bArr3 = CM5func(this.buf, 0, this.mac);
            }
            gost28147MacFunc(this.workingKey, bArr3, 0, this.mac, 0);
            this.bufOff = 0;
            while (true) {
                i10 -= i13;
                i4 += i13;
                if (i10 <= this.blockSize) {
                    break;
                }
                gost28147MacFunc(this.workingKey, CM5func(bArr, i4, this.mac), 0, this.mac, 0);
                i13 = this.blockSize;
            }
        }
        System.arraycopy(bArr, i4, this.buf, this.bufOff, i10);
        this.bufOff += i10;
    }
}
