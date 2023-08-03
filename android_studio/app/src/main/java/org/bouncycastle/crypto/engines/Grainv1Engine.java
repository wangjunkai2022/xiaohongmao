package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes4.dex */
public class Grainv1Engine implements StreamCipher {
    private static final int STATE_SIZE = 5;
    private int index = 2;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 1) {
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
        int i4 = (iArr[0] >>> 1) | (iArr[1] << 15);
        int i10 = (iArr[0] >>> 2) | (iArr[1] << 14);
        int i11 = (iArr[0] >>> 4) | (iArr[1] << 12);
        int i12 = (iArr[0] >>> 10) | (iArr[1] << 6);
        int i13 = (iArr[1] >>> 15) | (iArr[2] << 1);
        int i14 = (iArr[2] >>> 11) | (iArr[3] << 5);
        int i15 = (iArr[3] >>> 8) | (iArr[4] << 8);
        int i16 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int[] iArr2 = this.lfsr;
        int i17 = (iArr2[0] >>> 3) | (iArr2[1] << 13);
        int i18 = (iArr2[1] >>> 9) | (iArr2[2] << 7);
        int i19 = (iArr2[3] << 2) | (iArr2[2] >>> 14);
        int i20 = iArr2[4];
        int i21 = (i18 ^ i16) ^ (i17 & i20);
        int i22 = i19 & i20;
        int i23 = i17 & i19;
        int i24 = i20 & i23;
        int i25 = i23 & i16;
        return (((((((((i16 & i22) ^ ((i25 ^ (i24 ^ (((i21 ^ i22) ^ (i20 & i16)) ^ ((i17 & i18) & i19)))) ^ ((i18 & i19) & i16))) ^ i4) ^ i10) ^ i11) ^ i12) ^ i13) ^ i14) ^ i15) & 65535;
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        int i4 = iArr[0];
        int i10 = (iArr[1] >>> 7) | (iArr[2] << 9);
        int i11 = (iArr[2] >>> 6) | (iArr[3] << 10);
        return (((iArr[4] << 2) | (iArr[3] >>> 14)) ^ ((((((iArr[0] >>> 13) | (iArr[1] << 3)) ^ i4) ^ i10) ^ i11) ^ ((iArr[3] >>> 3) | (iArr[4] << 13)))) & 65535;
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i4 = iArr[0];
        int i10 = (iArr[0] >>> 9) | (iArr[1] << 7);
        int i11 = (iArr[0] >>> 14) | (iArr[1] << 2);
        int i12 = (iArr[0] >>> 15) | (iArr[1] << 1);
        int i13 = (iArr[1] >>> 5) | (iArr[2] << 11);
        int i14 = (iArr[1] >>> 12) | (iArr[2] << 4);
        int i15 = (iArr[2] >>> 1) | (iArr[3] << 15);
        int i16 = (iArr[2] >>> 5) | (iArr[3] << 11);
        int i17 = (iArr[2] >>> 13) | (iArr[3] << 3);
        int i18 = (iArr[3] >>> 4) | (iArr[4] << 12);
        int i19 = (iArr[3] >>> 12) | (iArr[4] << 4);
        int i20 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int i21 = i20 & i19;
        int i22 = i19 & i18;
        int i23 = ((((i4 ^ (((((((((((iArr[3] >>> 14) | (iArr[4] << 2)) ^ i19) ^ i18) ^ i17) ^ i16) ^ i15) ^ i14) ^ i13) ^ i11) ^ i10)) ^ i21) ^ (i16 & i15)) ^ (i12 & i10)) ^ (i22 & i17);
        int i24 = i15 & i14 & i13;
        return (((((((((i20 & i17) & i14) & i10) ^ (i23 ^ i24)) ^ ((i22 & i16) & i15)) ^ ((i21 & i13) & i12)) ^ (((i21 & i18) & i17) & i16)) ^ ((i12 & i24) & i10)) ^ (((((i18 & i17) & i16) & i15) & i14) & i13)) & 65535;
    }

    private void initGrain() {
        for (int i4 = 0; i4 < 10; i4++) {
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
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[8] = -1;
        bArr2[9] = -1;
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
            int i11 = i10 + 1;
            iArr[i4] = ((bArr3[i10] & 255) | (bArr3[i11] << 8)) & 65535;
            int[] iArr2 = this.lfsr;
            byte[] bArr4 = this.workingIV;
            iArr2[i4] = ((bArr4[i10] & 255) | (bArr4[i11] << 8)) & 65535;
            i10 += 2;
            i4++;
        }
    }

    private int[] shift(int[] iArr, int i4) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = i4;
        return iArr;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain v1";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 8) {
            throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include a key");
        }
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        this.workingIV = new byte[keyParameter.getKey().length];
        this.workingKey = new byte[keyParameter.getKey().length];
        this.lfsr = new int[5];
        this.nfsr = new int[5];
        this.out = new byte[2];
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
        this.index = 2;
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
