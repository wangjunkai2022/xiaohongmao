package org.bouncycastle.crypto.digests;

import com.google.common.base.c;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SHA1Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 20;
    private static final int Y1 = 1518500249;
    private static final int Y2 = 1859775393;
    private static final int Y3 = -1894007588;
    private static final int Y4 = -899497514;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int[] X;
    private int xOff;

    public SHA1Digest() {
        this.X = new int[80];
        reset();
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        this.X = new int[80];
        copyIn(sHA1Digest);
    }

    public SHA1Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[80];
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.xOff = Pack.bigEndianToInt(bArr, 36);
        for (int i4 = 0; i4 != this.xOff; i4++) {
            this.X[i4] = Pack.bigEndianToInt(bArr, (i4 * 4) + 40);
        }
    }

    private void copyIn(SHA1Digest sHA1Digest) {
        this.H1 = sHA1Digest.H1;
        this.H2 = sHA1Digest.H2;
        this.H3 = sHA1Digest.H3;
        this.H4 = sHA1Digest.H4;
        this.H5 = sHA1Digest.H5;
        int[] iArr = sHA1Digest.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = sHA1Digest.xOff;
    }

    private int f(int i4, int i10, int i11) {
        return ((~i4) & i11) | (i10 & i4);
    }

    private int g(int i4, int i10, int i11) {
        return (i4 & i11) | (i4 & i10) | (i10 & i11);
    }

    private int h(int i4, int i10, int i11) {
        return (i4 ^ i10) ^ i11;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA1Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, i4);
        Pack.intToBigEndian(this.H2, bArr, i4 + 4);
        Pack.intToBigEndian(this.H3, bArr, i4 + 8);
        Pack.intToBigEndian(this.H4, bArr, i4 + 12);
        Pack.intToBigEndian(this.H5, bArr, i4 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-1";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.xOff * 4) + 40];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.xOff, bArr, 36);
        for (int i4 = 0; i4 != this.xOff; i4++) {
            Pack.intToBigEndian(this.X[i4], bArr, (i4 * 4) + 40);
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        for (int i4 = 16; i4 < 80; i4++) {
            int[] iArr = this.X;
            int i10 = ((iArr[i4 - 3] ^ iArr[i4 - 8]) ^ iArr[i4 - 14]) ^ iArr[i4 - 16];
            iArr[i4] = (i10 >>> 31) | (i10 << 1);
        }
        int i11 = this.H1;
        int i12 = this.H2;
        int i13 = this.H3;
        int i14 = this.H4;
        int i15 = this.H5;
        int i16 = 0;
        int i17 = 0;
        while (i16 < 4) {
            int i18 = i17 + 1;
            int f10 = i15 + ((i11 << 5) | (i11 >>> 27)) + f(i12, i13, i14) + this.X[i17] + Y1;
            int i19 = (i12 >>> 2) | (i12 << 30);
            int i20 = i18 + 1;
            int f11 = i14 + ((f10 << 5) | (f10 >>> 27)) + f(i11, i19, i13) + this.X[i18] + Y1;
            int i21 = (i11 >>> 2) | (i11 << 30);
            int i22 = i20 + 1;
            int f12 = i13 + ((f11 << 5) | (f11 >>> 27)) + f(f10, i21, i19) + this.X[i20] + Y1;
            i15 = (f10 >>> 2) | (f10 << 30);
            int i23 = i22 + 1;
            i12 = i19 + ((f12 << 5) | (f12 >>> 27)) + f(f11, i15, i21) + this.X[i22] + Y1;
            i14 = (f11 >>> 2) | (f11 << 30);
            i11 = i21 + ((i12 << 5) | (i12 >>> 27)) + f(f12, i14, i15) + this.X[i23] + Y1;
            i13 = (f12 >>> 2) | (f12 << 30);
            i16++;
            i17 = i23 + 1;
        }
        int i24 = 0;
        while (i24 < 4) {
            int i25 = i17 + 1;
            int h4 = i15 + ((i11 << 5) | (i11 >>> 27)) + h(i12, i13, i14) + this.X[i17] + Y2;
            int i26 = (i12 >>> 2) | (i12 << 30);
            int i27 = i25 + 1;
            int h10 = i14 + ((h4 << 5) | (h4 >>> 27)) + h(i11, i26, i13) + this.X[i25] + Y2;
            int i28 = (i11 >>> 2) | (i11 << 30);
            int i29 = i27 + 1;
            int h11 = i13 + ((h10 << 5) | (h10 >>> 27)) + h(h4, i28, i26) + this.X[i27] + Y2;
            i15 = (h4 >>> 2) | (h4 << 30);
            int i30 = i29 + 1;
            i12 = i26 + ((h11 << 5) | (h11 >>> 27)) + h(h10, i15, i28) + this.X[i29] + Y2;
            i14 = (h10 >>> 2) | (h10 << 30);
            i11 = i28 + ((i12 << 5) | (i12 >>> 27)) + h(h11, i14, i15) + this.X[i30] + Y2;
            i13 = (h11 >>> 2) | (h11 << 30);
            i24++;
            i17 = i30 + 1;
        }
        int i31 = 0;
        while (i31 < 4) {
            int i32 = i17 + 1;
            int g4 = i15 + ((i11 << 5) | (i11 >>> 27)) + g(i12, i13, i14) + this.X[i17] + Y3;
            int i33 = (i12 >>> 2) | (i12 << 30);
            int i34 = i32 + 1;
            int g10 = i14 + ((g4 << 5) | (g4 >>> 27)) + g(i11, i33, i13) + this.X[i32] + Y3;
            int i35 = (i11 >>> 2) | (i11 << 30);
            int i36 = i34 + 1;
            int g11 = i13 + ((g10 << 5) | (g10 >>> 27)) + g(g4, i35, i33) + this.X[i34] + Y3;
            i15 = (g4 >>> 2) | (g4 << 30);
            int i37 = i36 + 1;
            i12 = i33 + ((g11 << 5) | (g11 >>> 27)) + g(g10, i15, i35) + this.X[i36] + Y3;
            i14 = (g10 >>> 2) | (g10 << 30);
            i11 = i35 + ((i12 << 5) | (i12 >>> 27)) + g(g11, i14, i15) + this.X[i37] + Y3;
            i13 = (g11 >>> 2) | (g11 << 30);
            i31++;
            i17 = i37 + 1;
        }
        int i38 = 0;
        while (i38 <= 3) {
            int i39 = i17 + 1;
            int h12 = i15 + ((i11 << 5) | (i11 >>> 27)) + h(i12, i13, i14) + this.X[i17] + Y4;
            int i40 = (i12 >>> 2) | (i12 << 30);
            int i41 = i39 + 1;
            int h13 = i14 + ((h12 << 5) | (h12 >>> 27)) + h(i11, i40, i13) + this.X[i39] + Y4;
            int i42 = (i11 >>> 2) | (i11 << 30);
            int i43 = i41 + 1;
            int h14 = i13 + ((h13 << 5) | (h13 >>> 27)) + h(h12, i42, i40) + this.X[i41] + Y4;
            i15 = (h12 >>> 2) | (h12 << 30);
            int i44 = i43 + 1;
            i12 = i40 + ((h14 << 5) | (h14 >>> 27)) + h(h13, i15, i42) + this.X[i43] + Y4;
            i14 = (h13 >>> 2) | (h13 << 30);
            i11 = i42 + ((i12 << 5) | (i12 >>> 27)) + h(h14, i14, i15) + this.X[i44] + Y4;
            i13 = (h14 >>> 2) | (h14 << 30);
            i38++;
            i17 = i44 + 1;
        }
        this.H1 += i11;
        this.H2 += i12;
        this.H3 += i13;
        this.H4 += i14;
        this.H5 += i15;
        this.xOff = 0;
        for (int i45 = 0; i45 < 16; i45++) {
            this.X[i45] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j4) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.X;
        iArr[14] = (int) (j4 >>> 32);
        iArr[15] = (int) j4;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        int i12 = (bArr[i11 + 1] & 255) | (bArr[i4] << c.B) | ((bArr[i10] & 255) << 16) | ((bArr[i11] & 255) << 8);
        int[] iArr = this.X;
        int i13 = this.xOff;
        iArr[i13] = i12;
        int i14 = i13 + 1;
        this.xOff = i14;
        if (i14 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.H5 = -1009589776;
        this.xOff = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.X;
            if (i4 == iArr.length) {
                return;
            }
            iArr[i4] = 0;
            i4++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA1Digest sHA1Digest = (SHA1Digest) memoable;
        super.copyIn((GeneralDigest) sHA1Digest);
        copyIn(sHA1Digest);
    }
}
