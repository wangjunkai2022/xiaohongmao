package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SM3Digest extends GeneralDigest {
    private static final int BLOCK_SIZE = 16;
    private static final int DIGEST_LENGTH = 32;
    private static final int[] T = new int[64];
    private int[] V;
    private int[] W;
    private int[] inwords;
    private int xOff;

    static {
        int i4;
        int i10 = 0;
        while (true) {
            if (i10 >= 16) {
                break;
            }
            T[i10] = (2043430169 >>> (32 - i10)) | (2043430169 << i10);
            i10++;
        }
        for (i4 = 16; i4 < 64; i4++) {
            int i11 = i4 % 32;
            T[i4] = (2055708042 >>> (32 - i11)) | (2055708042 << i11);
        }
    }

    public SM3Digest() {
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        reset();
    }

    public SM3Digest(SM3Digest sM3Digest) {
        super(sM3Digest);
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        copyIn(sM3Digest);
    }

    private int FF0(int i4, int i10, int i11) {
        return (i4 ^ i10) ^ i11;
    }

    private int FF1(int i4, int i10, int i11) {
        return (i4 & i11) | (i4 & i10) | (i10 & i11);
    }

    private int GG0(int i4, int i10, int i11) {
        return (i4 ^ i10) ^ i11;
    }

    private int GG1(int i4, int i10, int i11) {
        return ((~i4) & i11) | (i10 & i4);
    }

    private int P0(int i4) {
        return (i4 ^ ((i4 << 9) | (i4 >>> 23))) ^ ((i4 << 17) | (i4 >>> 15));
    }

    private int P1(int i4) {
        return (i4 ^ ((i4 << 15) | (i4 >>> 17))) ^ ((i4 << 23) | (i4 >>> 9));
    }

    private void copyIn(SM3Digest sM3Digest) {
        int[] iArr = sM3Digest.V;
        int[] iArr2 = this.V;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = sM3Digest.inwords;
        int[] iArr4 = this.inwords;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        this.xOff = sM3Digest.xOff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SM3Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        Pack.intToBigEndian(this.V, bArr, i4);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SM3";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        int i4;
        int i10 = 0;
        while (true) {
            if (i10 >= 16) {
                break;
            }
            this.W[i10] = this.inwords[i10];
            i10++;
        }
        for (int i11 = 16; i11 < 68; i11++) {
            int[] iArr = this.W;
            int i12 = iArr[i11 - 3];
            int i13 = (i12 >>> 17) | (i12 << 15);
            int i14 = iArr[i11 - 13];
            iArr[i11] = (P1(i13 ^ (iArr[i11 - 16] ^ iArr[i11 - 9])) ^ ((i14 >>> 25) | (i14 << 7))) ^ this.W[i11 - 6];
        }
        int[] iArr2 = this.V;
        int i15 = iArr2[0];
        int i16 = iArr2[1];
        int i17 = iArr2[2];
        int i18 = iArr2[3];
        int i19 = iArr2[4];
        int i20 = iArr2[5];
        int i21 = iArr2[6];
        int i22 = iArr2[7];
        int i23 = i21;
        int i24 = 0;
        for (i4 = 16; i24 < i4; i4 = 16) {
            int i25 = (i15 << 12) | (i15 >>> 20);
            int i26 = i25 + i19 + T[i24];
            int i27 = (i26 << 7) | (i26 >>> 25);
            int[] iArr3 = this.W;
            int i28 = iArr3[i24];
            int i29 = (i16 << 9) | (i16 >>> 23);
            int i30 = (i20 << 19) | (i20 >>> 13);
            i24++;
            i20 = i19;
            i19 = P0(GG0(i19, i20, i23) + i22 + i27 + i28);
            i18 = i17;
            i17 = i29;
            i22 = i23;
            i23 = i30;
            i16 = i15;
            i15 = FF0(i15, i16, i17) + i18 + (i27 ^ i25) + (i28 ^ iArr3[i24 + 4]);
        }
        int i31 = i22;
        int i32 = i19;
        int i33 = i23;
        int i34 = i18;
        int i35 = i17;
        int i36 = i16;
        int i37 = i15;
        int i38 = 16;
        while (i38 < 64) {
            int i39 = (i37 << 12) | (i37 >>> 20);
            int i40 = i39 + i32 + T[i38];
            int i41 = (i40 << 7) | (i40 >>> 25);
            int[] iArr4 = this.W;
            int i42 = iArr4[i38];
            int i43 = (i36 >>> 23) | (i36 << 9);
            int i44 = (i20 << 19) | (i20 >>> 13);
            i38++;
            i20 = i32;
            i32 = P0(GG1(i32, i20, i33) + i31 + i41 + i42);
            i34 = i35;
            i35 = i43;
            i36 = i37;
            i37 = FF1(i37, i36, i35) + i34 + (i41 ^ i39) + (i42 ^ iArr4[i38 + 4]);
            i31 = i33;
            i33 = i44;
        }
        int[] iArr5 = this.V;
        iArr5[0] = i37 ^ iArr5[0];
        iArr5[1] = iArr5[1] ^ i36;
        iArr5[2] = iArr5[2] ^ i35;
        iArr5[3] = iArr5[3] ^ i34;
        iArr5[4] = iArr5[4] ^ i32;
        iArr5[5] = iArr5[5] ^ i20;
        iArr5[6] = i33 ^ iArr5[6];
        iArr5[7] = iArr5[7] ^ i31;
        this.xOff = 0;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j4) {
        int i4 = this.xOff;
        if (i4 > 14) {
            this.inwords[i4] = 0;
            this.xOff = i4 + 1;
            processBlock();
        }
        while (true) {
            int i10 = this.xOff;
            if (i10 >= 14) {
                int[] iArr = this.inwords;
                int i11 = i10 + 1;
                this.xOff = i11;
                iArr[i10] = (int) (j4 >>> 32);
                this.xOff = i11 + 1;
                iArr[i11] = (int) j4;
                return;
            }
            this.inwords[i10] = 0;
            this.xOff = i10 + 1;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i11 + 1] & 255) | ((bArr[i4] & 255) << 24) | ((bArr[i10] & 255) << 16) | ((bArr[i11] & 255) << 8);
        int[] iArr = this.inwords;
        int i13 = this.xOff;
        iArr[i13] = i12;
        int i14 = i13 + 1;
        this.xOff = i14;
        if (i14 >= 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        int[] iArr = this.V;
        iArr[0] = 1937774191;
        iArr[1] = 1226093241;
        iArr[2] = 388252375;
        iArr[3] = -628488704;
        iArr[4] = -1452330820;
        iArr[5] = 372324522;
        iArr[6] = -477237683;
        iArr[7] = -1325724082;
        this.xOff = 0;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SM3Digest sM3Digest = (SM3Digest) memoable;
        super.copyIn((GeneralDigest) sM3Digest);
        copyIn(sM3Digest);
    }
}
