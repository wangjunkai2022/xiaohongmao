package org.bouncycastle.crypto.engines;

/* loaded from: classes4.dex */
public final class CAST6Engine extends CAST5Engine {
    protected static final int BLOCK_SIZE = 16;
    protected static final int ROUNDS = 12;
    protected int[] _Kr = new int[48];
    protected int[] _Km = new int[48];
    protected int[] _Tr = new int[192];
    protected int[] _Tm = new int[192];
    private int[] _workingKey = new int[8];

    protected final void CAST_Decipher(int i4, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14 = 0;
        while (true) {
            if (i14 >= 6) {
                break;
            }
            int i15 = (11 - i14) * 4;
            i11 ^= F1(i12, this._Km[i15], this._Kr[i15]);
            int i16 = i15 + 1;
            i10 ^= F2(i11, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i4 ^= F3(i10, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 3;
            i12 ^= F1(i4, this._Km[i18], this._Kr[i18]);
            i14++;
        }
        for (i13 = 6; i13 < 12; i13++) {
            int i19 = (11 - i13) * 4;
            int i20 = i19 + 3;
            i12 ^= F1(i4, this._Km[i20], this._Kr[i20]);
            int i21 = i19 + 2;
            i4 ^= F3(i10, this._Km[i21], this._Kr[i21]);
            int i22 = i19 + 1;
            i10 ^= F2(i11, this._Km[i22], this._Kr[i22]);
            i11 ^= F1(i12, this._Km[i19], this._Kr[i19]);
        }
        iArr[0] = i4;
        iArr[1] = i10;
        iArr[2] = i11;
        iArr[3] = i12;
    }

    protected final void CAST_Encipher(int i4, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14 = 0;
        while (true) {
            if (i14 >= 6) {
                break;
            }
            int i15 = i14 * 4;
            i11 ^= F1(i12, this._Km[i15], this._Kr[i15]);
            int i16 = i15 + 1;
            i10 ^= F2(i11, this._Km[i16], this._Kr[i16]);
            int i17 = i15 + 2;
            i4 ^= F3(i10, this._Km[i17], this._Kr[i17]);
            int i18 = i15 + 3;
            i12 ^= F1(i4, this._Km[i18], this._Kr[i18]);
            i14++;
        }
        for (i13 = 6; i13 < 12; i13++) {
            int i19 = i13 * 4;
            int i20 = i19 + 3;
            i12 ^= F1(i4, this._Km[i20], this._Kr[i20]);
            int i21 = i19 + 2;
            i4 ^= F3(i10, this._Km[i21], this._Kr[i21]);
            int i22 = i19 + 1;
            i10 ^= F2(i11, this._Km[i22], this._Kr[i22]);
            i11 ^= F1(i12, this._Km[i19], this._Kr[i19]);
        }
        iArr[0] = i4;
        iArr[1] = i10;
        iArr[2] = i11;
        iArr[3] = i12;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    protected int decryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[] iArr = new int[4];
        CAST_Decipher(BytesTo32bits(bArr, i4), BytesTo32bits(bArr, i4 + 4), BytesTo32bits(bArr, i4 + 8), BytesTo32bits(bArr, i4 + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i10);
        Bits32ToBytes(iArr[1], bArr2, i10 + 4);
        Bits32ToBytes(iArr[2], bArr2, i10 + 8);
        Bits32ToBytes(iArr[3], bArr2, i10 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    protected int encryptBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[] iArr = new int[4];
        CAST_Encipher(BytesTo32bits(bArr, i4), BytesTo32bits(bArr, i4 + 4), BytesTo32bits(bArr, i4 + 8), BytesTo32bits(bArr, i4 + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i10);
        Bits32ToBytes(iArr[1], bArr2, i10 + 4);
        Bits32ToBytes(iArr[2], bArr2, i10 + 8);
        Bits32ToBytes(iArr[3], bArr2, i10 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "CAST6";
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine, org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    @Override // org.bouncycastle.crypto.engines.CAST5Engine
    protected void setKey(byte[] bArr) {
        int i4 = 1518500249;
        int i10 = 19;
        for (int i11 = 0; i11 < 24; i11++) {
            for (int i12 = 0; i12 < 8; i12++) {
                int i13 = (i11 * 8) + i12;
                this._Tm[i13] = i4;
                i4 += 1859775393;
                this._Tr[i13] = i10;
                i10 = (i10 + 17) & 31;
            }
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i14 = 0; i14 < 8; i14++) {
            this._workingKey[i14] = BytesTo32bits(bArr2, i14 * 4);
        }
        for (int i15 = 0; i15 < 12; i15++) {
            int i16 = i15 * 2;
            int i17 = i16 * 8;
            int[] iArr = this._workingKey;
            iArr[6] = iArr[6] ^ F1(iArr[7], this._Tm[i17], this._Tr[i17]);
            int[] iArr2 = this._workingKey;
            int i18 = i17 + 1;
            iArr2[5] = iArr2[5] ^ F2(iArr2[6], this._Tm[i18], this._Tr[i18]);
            int[] iArr3 = this._workingKey;
            int i19 = i17 + 2;
            iArr3[4] = iArr3[4] ^ F3(iArr3[5], this._Tm[i19], this._Tr[i19]);
            int[] iArr4 = this._workingKey;
            int i20 = i17 + 3;
            iArr4[3] = F1(iArr4[4], this._Tm[i20], this._Tr[i20]) ^ iArr4[3];
            int[] iArr5 = this._workingKey;
            int i21 = i17 + 4;
            iArr5[2] = F2(iArr5[3], this._Tm[i21], this._Tr[i21]) ^ iArr5[2];
            int[] iArr6 = this._workingKey;
            int i22 = i17 + 5;
            iArr6[1] = F3(iArr6[2], this._Tm[i22], this._Tr[i22]) ^ iArr6[1];
            int[] iArr7 = this._workingKey;
            int i23 = i17 + 6;
            iArr7[0] = iArr7[0] ^ F1(iArr7[1], this._Tm[i23], this._Tr[i23]);
            int[] iArr8 = this._workingKey;
            int i24 = i17 + 7;
            iArr8[7] = F2(iArr8[0], this._Tm[i24], this._Tr[i24]) ^ iArr8[7];
            int i25 = (i16 + 1) * 8;
            int[] iArr9 = this._workingKey;
            iArr9[6] = iArr9[6] ^ F1(iArr9[7], this._Tm[i25], this._Tr[i25]);
            int[] iArr10 = this._workingKey;
            int i26 = i25 + 1;
            iArr10[5] = iArr10[5] ^ F2(iArr10[6], this._Tm[i26], this._Tr[i26]);
            int[] iArr11 = this._workingKey;
            int i27 = i25 + 2;
            iArr11[4] = iArr11[4] ^ F3(iArr11[5], this._Tm[i27], this._Tr[i27]);
            int[] iArr12 = this._workingKey;
            int i28 = i25 + 3;
            iArr12[3] = F1(iArr12[4], this._Tm[i28], this._Tr[i28]) ^ iArr12[3];
            int[] iArr13 = this._workingKey;
            int i29 = i25 + 4;
            iArr13[2] = F2(iArr13[3], this._Tm[i29], this._Tr[i29]) ^ iArr13[2];
            int[] iArr14 = this._workingKey;
            int i30 = i25 + 5;
            iArr14[1] = F3(iArr14[2], this._Tm[i30], this._Tr[i30]) ^ iArr14[1];
            int[] iArr15 = this._workingKey;
            int i31 = i25 + 6;
            iArr15[0] = iArr15[0] ^ F1(iArr15[1], this._Tm[i31], this._Tr[i31]);
            int[] iArr16 = this._workingKey;
            int i32 = i25 + 7;
            iArr16[7] = F2(iArr16[0], this._Tm[i32], this._Tr[i32]) ^ iArr16[7];
            int[] iArr17 = this._Kr;
            int i33 = i15 * 4;
            int[] iArr18 = this._workingKey;
            iArr17[i33] = iArr18[0] & 31;
            int i34 = i33 + 1;
            iArr17[i34] = iArr18[2] & 31;
            int i35 = i33 + 2;
            iArr17[i35] = iArr18[4] & 31;
            int i36 = i33 + 3;
            iArr17[i36] = iArr18[6] & 31;
            int[] iArr19 = this._Km;
            iArr19[i33] = iArr18[7];
            iArr19[i34] = iArr18[5];
            iArr19[i35] = iArr18[3];
            iArr19[i36] = iArr18[1];
        }
    }
}
