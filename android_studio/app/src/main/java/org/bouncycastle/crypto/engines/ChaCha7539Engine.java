package org.bouncycastle.crypto.engines;

import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class ChaCha7539Engine extends Salsa20Engine {
    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void advanceCounter() {
        int[] iArr = this.engineState;
        int i4 = iArr[12] + 1;
        iArr[12] = i4;
        if (i4 == 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void advanceCounter(long j4) {
        int i4 = (int) j4;
        if (((int) (j4 >>> 32)) > 0) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
        int[] iArr = this.engineState;
        int i10 = iArr[12];
        iArr[12] = iArr[12] + i4;
        if (i10 != 0 && iArr[12] < i10) {
            throw new IllegalStateException("attempt to increase counter past 2^32.");
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void generateKeyStream(byte[] bArr) {
        ChaChaEngine.chachaCore(this.rounds, this.engineState, this.f91240x);
        Pack.intToLittleEndian(this.f91240x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha7539";
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected long getCounter() {
        return this.engineState[12] & 4294967295L;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected int getNonceSize() {
        return 12;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void resetCounter() {
        this.engineState[12] = 0;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void retreatCounter() {
        int[] iArr = this.engineState;
        if (iArr[12] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = iArr[12] - 1;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void retreatCounter(long j4) {
        int i4 = (int) j4;
        if (((int) (j4 >>> 32)) != 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int[] iArr = this.engineState;
        if ((iArr[12] & 4294967295L) < (4294967295L & i4)) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        iArr[12] = iArr[12] - i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 256 bit key");
            }
            packTauOrSigma(bArr.length, this.engineState, 0);
            Pack.littleEndianToInt(bArr, 0, this.engineState, 4, 8);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 13, 3);
    }
}
