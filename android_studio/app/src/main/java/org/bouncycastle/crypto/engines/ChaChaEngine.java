package org.bouncycastle.crypto.engines;

import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class ChaChaEngine extends Salsa20Engine {
    public ChaChaEngine() {
    }

    public ChaChaEngine(int i4) {
        super(i4);
    }

    public static void chachaCore(int i4, int[] iArr, int[] iArr2) {
        int i10 = 16;
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        }
        if (i4 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c10 = 0;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = 7;
        int i19 = iArr[7];
        int i20 = 8;
        int i21 = iArr[8];
        int i22 = iArr[9];
        int i23 = iArr[10];
        int i24 = iArr[11];
        int i25 = 12;
        int i26 = iArr[12];
        int i27 = iArr[13];
        int i28 = iArr[14];
        int i29 = iArr[15];
        int i30 = i28;
        int i31 = i27;
        int i32 = i26;
        int i33 = i24;
        int i34 = i23;
        int i35 = i22;
        int i36 = i21;
        int i37 = i19;
        int i38 = i17;
        int i39 = i16;
        int i40 = i15;
        int i41 = i14;
        int i42 = i13;
        int i43 = i12;
        int i44 = i11;
        int i45 = i4;
        while (i45 > 0) {
            int i46 = i44 + i40;
            int rotateLeft = Integers.rotateLeft(i32 ^ i46, i10);
            int i47 = i36 + rotateLeft;
            int rotateLeft2 = Integers.rotateLeft(i40 ^ i47, i25);
            int i48 = i46 + rotateLeft2;
            int rotateLeft3 = Integers.rotateLeft(rotateLeft ^ i48, i20);
            int i49 = i47 + rotateLeft3;
            int rotateLeft4 = Integers.rotateLeft(rotateLeft2 ^ i49, i18);
            int i50 = i43 + i39;
            int rotateLeft5 = Integers.rotateLeft(i31 ^ i50, i10);
            int i51 = i35 + rotateLeft5;
            int rotateLeft6 = Integers.rotateLeft(i39 ^ i51, i25);
            int i52 = i50 + rotateLeft6;
            int rotateLeft7 = Integers.rotateLeft(rotateLeft5 ^ i52, i20);
            int i53 = i51 + rotateLeft7;
            int rotateLeft8 = Integers.rotateLeft(rotateLeft6 ^ i53, i18);
            int i54 = i42 + i38;
            int rotateLeft9 = Integers.rotateLeft(i30 ^ i54, i10);
            int i55 = i34 + rotateLeft9;
            int rotateLeft10 = Integers.rotateLeft(i38 ^ i55, i25);
            int i56 = i54 + rotateLeft10;
            int rotateLeft11 = Integers.rotateLeft(rotateLeft9 ^ i56, i20);
            int i57 = i55 + rotateLeft11;
            int rotateLeft12 = Integers.rotateLeft(rotateLeft10 ^ i57, i18);
            int i58 = i41 + i37;
            int rotateLeft13 = Integers.rotateLeft(i29 ^ i58, 16);
            int i59 = i33 + rotateLeft13;
            int rotateLeft14 = Integers.rotateLeft(i37 ^ i59, i25);
            int i60 = i58 + rotateLeft14;
            int rotateLeft15 = Integers.rotateLeft(rotateLeft13 ^ i60, 8);
            int i61 = i59 + rotateLeft15;
            int rotateLeft16 = Integers.rotateLeft(rotateLeft14 ^ i61, 7);
            int i62 = i48 + rotateLeft8;
            int rotateLeft17 = Integers.rotateLeft(rotateLeft15 ^ i62, 16);
            int i63 = i57 + rotateLeft17;
            int rotateLeft18 = Integers.rotateLeft(rotateLeft8 ^ i63, 12);
            i44 = i62 + rotateLeft18;
            i29 = Integers.rotateLeft(rotateLeft17 ^ i44, 8);
            i34 = i63 + i29;
            i39 = Integers.rotateLeft(rotateLeft18 ^ i34, 7);
            int i64 = i52 + rotateLeft12;
            int rotateLeft19 = Integers.rotateLeft(rotateLeft3 ^ i64, 16);
            int i65 = i61 + rotateLeft19;
            int rotateLeft20 = Integers.rotateLeft(rotateLeft12 ^ i65, 12);
            i43 = i64 + rotateLeft20;
            i32 = Integers.rotateLeft(rotateLeft19 ^ i43, 8);
            i33 = i65 + i32;
            i38 = Integers.rotateLeft(rotateLeft20 ^ i33, 7);
            int i66 = i56 + rotateLeft16;
            int rotateLeft21 = Integers.rotateLeft(rotateLeft7 ^ i66, 16);
            int i67 = i49 + rotateLeft21;
            int rotateLeft22 = Integers.rotateLeft(rotateLeft16 ^ i67, 12);
            i42 = i66 + rotateLeft22;
            i31 = Integers.rotateLeft(rotateLeft21 ^ i42, 8);
            i36 = i67 + i31;
            i37 = Integers.rotateLeft(rotateLeft22 ^ i36, 7);
            int i68 = i60 + rotateLeft4;
            i10 = 16;
            int rotateLeft23 = Integers.rotateLeft(rotateLeft11 ^ i68, 16);
            int i69 = i53 + rotateLeft23;
            int rotateLeft24 = Integers.rotateLeft(rotateLeft4 ^ i69, 12);
            i41 = i68 + rotateLeft24;
            i30 = Integers.rotateLeft(rotateLeft23 ^ i41, 8);
            i35 = i69 + i30;
            i40 = Integers.rotateLeft(rotateLeft24 ^ i35, 7);
            i45 -= 2;
            c10 = 0;
            i25 = 12;
            i20 = 8;
            i18 = 7;
        }
        iArr2[c10] = i44 + iArr[c10];
        iArr2[1] = i43 + iArr[1];
        iArr2[2] = i42 + iArr[2];
        iArr2[3] = i41 + iArr[3];
        iArr2[4] = i40 + iArr[4];
        iArr2[5] = i39 + iArr[5];
        iArr2[6] = i38 + iArr[6];
        iArr2[7] = i37 + iArr[7];
        iArr2[8] = i36 + iArr[8];
        iArr2[9] = i35 + iArr[9];
        iArr2[10] = i34 + iArr[10];
        iArr2[11] = i33 + iArr[11];
        iArr2[12] = i32 + iArr[12];
        iArr2[13] = i31 + iArr[13];
        iArr2[14] = i30 + iArr[14];
        iArr2[15] = i29 + iArr[15];
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void advanceCounter() {
        int[] iArr = this.engineState;
        int i4 = iArr[12] + 1;
        iArr[12] = i4;
        if (i4 == 0) {
            iArr[13] = iArr[13] + 1;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void advanceCounter(long j4) {
        int i4 = (int) (j4 >>> 32);
        int i10 = (int) j4;
        if (i4 > 0) {
            int[] iArr = this.engineState;
            iArr[13] = iArr[13] + i4;
        }
        int[] iArr2 = this.engineState;
        int i11 = iArr2[12];
        iArr2[12] = iArr2[12] + i10;
        if (i11 == 0 || iArr2[12] >= i11) {
            return;
        }
        iArr2[13] = iArr2[13] + 1;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void generateKeyStream(byte[] bArr) {
        chachaCore(this.rounds, this.engineState, this.f91240x);
        Pack.intToLittleEndian(this.f91240x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha" + this.rounds;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected long getCounter() {
        int[] iArr = this.engineState;
        return (iArr[13] << 32) | (iArr[12] & 4294967295L);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void resetCounter() {
        int[] iArr = this.engineState;
        iArr[13] = 0;
        iArr[12] = 0;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void retreatCounter() {
        int[] iArr = this.engineState;
        if (iArr[12] == 0 && iArr[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int i4 = iArr[12] - 1;
        iArr[12] = i4;
        if (i4 == -1) {
            iArr[13] = iArr[13] - 1;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void retreatCounter(long j4) {
        int i4 = (int) (j4 >>> 32);
        int i10 = (int) j4;
        if (i4 != 0) {
            int[] iArr = this.engineState;
            if ((iArr[13] & 4294967295L) < (i4 & 4294967295L)) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
            iArr[13] = iArr[13] - i4;
        }
        int[] iArr2 = this.engineState;
        if ((iArr2[12] & 4294967295L) >= (4294967295L & i10)) {
            iArr2[12] = iArr2[12] - i10;
        } else if (iArr2[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        } else {
            iArr2[13] = iArr2[13] - 1;
            iArr2[12] = iArr2[12] - i10;
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    protected void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 16 && bArr.length != 32) {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
            packTauOrSigma(bArr.length, this.engineState, 0);
            Pack.littleEndianToInt(bArr, 0, this.engineState, 4, 4);
            Pack.littleEndianToInt(bArr, bArr.length - 16, this.engineState, 8, 4);
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 14, 2);
    }
}
