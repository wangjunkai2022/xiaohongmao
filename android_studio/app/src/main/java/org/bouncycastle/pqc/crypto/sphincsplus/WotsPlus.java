package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
class WotsPlus {
    private final SPHINCSPlusEngine engine;

    /* renamed from: w  reason: collision with root package name */
    private final int f91563w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WotsPlus(SPHINCSPlusEngine sPHINCSPlusEngine) {
        this.engine = sPHINCSPlusEngine;
        this.f91563w = sPHINCSPlusEngine.WOTS_W;
    }

    int[] base_w(byte[] bArr, int i4, int i10) {
        int[] iArr = new int[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15++) {
            if (i11 == 0) {
                i14 = bArr[i12];
                i12++;
                i11 += 8;
            }
            i11 -= this.engine.WOTS_LOGW;
            iArr[i13] = (i14 >>> i11) & (i4 - 1);
            i13++;
        }
        return iArr;
    }

    byte[] chain(byte[] bArr, int i4, int i10, byte[] bArr2, ADRS adrs) {
        if (i10 == 0) {
            return Arrays.clone(bArr);
        }
        int i11 = i4 + i10;
        if (i11 > this.f91563w - 1) {
            return null;
        }
        byte[] chain = chain(bArr, i4, i10 - 1, bArr2, adrs);
        adrs.setHashAddress(i11 - 1);
        return this.engine.F(bArr2, adrs, chain);
    }

    public byte[] pkFromSig(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = new ADRS(adrs);
        int[] base_w = base_w(bArr2, this.f91563w, this.engine.WOTS_LEN1);
        int i4 = 0;
        int i10 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (i4 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            i10 += (this.f91563w - 1) - base_w[i4];
            i4++;
        }
        int i11 = sPHINCSPlusEngine.WOTS_LEN2;
        int i12 = sPHINCSPlusEngine.WOTS_LOGW;
        int[] concatenate = Arrays.concatenate(base_w, base_w(Arrays.copyOfRange(Pack.intToBigEndian(i10 << (8 - ((i11 * i12) % 8))), 4 - (((i11 * i12) + 7) / 8), 4), this.f91563w, this.engine.WOTS_LEN2));
        SPHINCSPlusEngine sPHINCSPlusEngine2 = this.engine;
        byte[] bArr4 = new byte[sPHINCSPlusEngine2.N];
        byte[][] bArr5 = new byte[sPHINCSPlusEngine2.WOTS_LEN];
        for (int i13 = 0; i13 < this.engine.WOTS_LEN; i13++) {
            adrs.setChainAddress(i13);
            int i14 = this.engine.N;
            System.arraycopy(bArr, i13 * i14, bArr4, 0, i14);
            bArr5[i13] = chain(bArr4, concatenate[i13], (this.f91563w - 1) - concatenate[i13], bArr3, adrs);
        }
        adrs2.setType(1);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr3, adrs2, Arrays.concatenate(bArr5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] pkGen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        byte[][] bArr3 = new byte[this.engine.WOTS_LEN];
        for (int i4 = 0; i4 < this.engine.WOTS_LEN; i4++) {
            ADRS adrs3 = new ADRS(adrs);
            adrs3.setChainAddress(i4);
            adrs3.setHashAddress(0);
            bArr3[i4] = chain(this.engine.PRF(bArr, adrs3), 0, this.f91563w - 1, bArr2, adrs3);
        }
        adrs2.setType(1);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr3));
    }

    public byte[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = new ADRS(adrs);
        int[] base_w = base_w(bArr, this.f91563w, this.engine.WOTS_LEN1);
        int i4 = 0;
        int i10 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (i4 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            i10 += (this.f91563w - 1) - base_w[i4];
            i4++;
        }
        int i11 = sPHINCSPlusEngine.WOTS_LOGW;
        if (i11 % 8 != 0) {
            i10 <<= 8 - ((sPHINCSPlusEngine.WOTS_LEN2 * i11) % 8);
        }
        byte[] intToBigEndian = Pack.intToBigEndian(i10);
        int[] concatenate = Arrays.concatenate(base_w, base_w(Arrays.copyOfRange(intToBigEndian, ((sPHINCSPlusEngine.WOTS_LEN2 * i11) + 7) / 8, intToBigEndian.length), this.f91563w, this.engine.WOTS_LEN2));
        byte[][] bArr4 = new byte[this.engine.WOTS_LEN];
        for (int i12 = 0; i12 < this.engine.WOTS_LEN; i12++) {
            adrs2.setChainAddress(i12);
            adrs2.setHashAddress(0);
            bArr4[i12] = chain(this.engine.PRF(bArr2, adrs2), 0, concatenate[i12], bArr3, adrs2);
        }
        return Arrays.concatenate(bArr4);
    }
}
