package org.bouncycastle.crypto.engines;

import androidx.core.view.MotionEventCompat;
import com.google.common.base.c;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class Grain128Engine implements StreamCipher {
    private static final int STATE_SIZE = 4;
    private int index = 4;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 3) {
            oneRound();
            this.index = 0;
        }
        byte[] bArr = this.out;
        int i4 = this.index;
        this.index = i4 + 1;
        return bArr[i4];
    }

    private int getOutput() {
        int[] iArr = this.nfsr;
        int i4 = (iArr[0] >>> 2) | (iArr[1] << 30);
        int i10 = (iArr[0] >>> 12) | (iArr[1] << 20);
        int i11 = (iArr[0] >>> 15) | (iArr[1] << 17);
        int i12 = (iArr[1] >>> 4) | (iArr[2] << 28);
        int i13 = (iArr[1] >>> 13) | (iArr[2] << 19);
        int i14 = iArr[2];
        int i15 = (iArr[2] >>> 9) | (iArr[3] << 23);
        int i16 = (iArr[2] >>> 25) | (iArr[3] << 7);
        int i17 = (iArr[3] << 1) | (iArr[2] >>> 31);
        int[] iArr2 = this.lfsr;
        int i18 = (iArr2[0] >>> 8) | (iArr2[1] << 24);
        int i19 = (iArr2[0] >>> 13) | (iArr2[1] << 19);
        int i20 = (iArr2[0] >>> 20) | (iArr2[1] << 12);
        int i21 = (iArr2[1] >>> 10) | (iArr2[2] << 22);
        int i22 = (iArr2[1] >>> 28) | (iArr2[2] << 4);
        int i23 = (iArr2[2] >>> 15) | (iArr2[3] << 17);
        int i24 = i17 & i10 & ((iArr2[2] >>> 31) | (iArr2[3] << 1));
        return ((((((((i24 ^ ((((i19 & i20) ^ (i10 & i18)) ^ (i17 & i21)) ^ (i22 & i23))) ^ ((iArr2[2] >>> 29) | (iArr2[3] << 3))) ^ i4) ^ i11) ^ i12) ^ i13) ^ i14) ^ i15) ^ i16;
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        int i4 = iArr[0];
        int i10 = (iArr[0] >>> 7) | (iArr[1] << 25);
        int i11 = (iArr[1] >>> 6) | (iArr[2] << 26);
        return iArr[3] ^ ((((i10 ^ i4) ^ i11) ^ ((iArr[2] >>> 6) | (iArr[3] << 26))) ^ ((iArr[2] >>> 17) | (iArr[3] << 15)));
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i4 = iArr[0];
        int i10 = (iArr[0] >>> 3) | (iArr[1] << 29);
        int i11 = (iArr[0] >>> 11) | (iArr[1] << 21);
        int i12 = (iArr[0] >>> 13) | (iArr[1] << 19);
        int i13 = (iArr[0] >>> 17) | (iArr[1] << 15);
        int i14 = (iArr[0] >>> 18) | (iArr[1] << 14);
        int i15 = (iArr[0] >>> 26) | (iArr[1] << 6);
        int i16 = (iArr[0] >>> 27) | (iArr[1] << 5);
        int i17 = (iArr[1] >>> 8) | (iArr[2] << 24);
        int i18 = (iArr[1] >>> 16) | (iArr[2] << 16);
        int i19 = (iArr[1] >>> 24) | (iArr[2] << 8);
        int i20 = (iArr[1] >>> 27) | (iArr[2] << 5);
        int i21 = (iArr[1] >>> 29) | (iArr[2] << 3);
        int i22 = (iArr[2] >>> 1) | (iArr[3] << 31);
        return (((((((iArr[3] ^ (((i4 ^ i15) ^ i19) ^ ((iArr[2] >>> 27) | (iArr[3] << 5)))) ^ (i10 & ((iArr[2] >>> 3) | (iArr[3] << 29)))) ^ (i11 & i12)) ^ (i13 & i14)) ^ (i16 & i20)) ^ (i17 & i18)) ^ (i21 & i22)) ^ (((iArr[2] >>> 4) | (iArr[3] << 28)) & ((iArr[2] >>> 20) | (iArr[3] << 12)));
    }

    private void initGrain() {
        for (int i4 = 0; i4 < 8; i4++) {
            this.output = getOutput();
            this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) ^ this.output);
            this.lfsr = shift(this.lfsr, getOutputLFSR() ^ this.output);
        }
        this.initialised = true;
    }

    private void oneRound() {
        int output = getOutput();
        this.output = output;
        byte[] bArr = this.out;
        bArr[0] = (byte) output;
        bArr[1] = (byte) (output >> 8);
        bArr[2] = (byte) (output >> 16);
        bArr[3] = (byte) (output >> 24);
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[12] = -1;
        bArr2[13] = -1;
        bArr2[14] = -1;
        bArr2[15] = -1;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int i4 = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.nfsr;
            if (i4 >= iArr.length) {
                return;
            }
            byte[] bArr3 = this.workingKey;
            int i11 = i10 + 3;
            int i12 = i10 + 2;
            int i13 = (bArr3[i11] << c.B) | ((bArr3[i12] << 16) & 16711680);
            int i14 = i10 + 1;
            iArr[i4] = (bArr3[i10] & 255) | i13 | ((bArr3[i14] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            int[] iArr2 = this.lfsr;
            byte[] bArr4 = this.workingIV;
            iArr2[i4] = (bArr4[i10] & 255) | (bArr4[i11] << c.B) | ((bArr4[i12] << 16) & 16711680) | ((bArr4[i14] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            i10 += 4;
            i4++;
        }
    }

    private int[] shift(int[] iArr, int i4) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = i4;
        return iArr;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 12) {
            throw new IllegalArgumentException("Grain-128  requires exactly 12 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include a key");
        }
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        this.workingIV = new byte[keyParameter.getKey().length];
        this.workingKey = new byte[keyParameter.getKey().length];
        this.lfsr = new int[4];
        this.nfsr = new int[4];
        this.out = new byte[4];
        System.arraycopy(iv, 0, this.workingIV, 0, iv.length);
        System.arraycopy(keyParameter.getKey(), 0, this.workingKey, 0, keyParameter.getKey().length);
        reset();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i4 + i10 <= bArr.length) {
            if (i11 + i10 <= bArr2.length) {
                for (int i12 = 0; i12 < i10; i12++) {
                    bArr2[i11 + i12] = (byte) (bArr[i4 + i12] ^ getKeyStream());
                }
                return i10;
            }
            throw new OutputLengthException("output buffer too short");
        } else {
            throw new DataLengthException("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 4;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b10) {
        if (this.initialised) {
            return (byte) (b10 ^ getKeyStream());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
