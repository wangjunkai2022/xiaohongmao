package org.bouncycastle.crypto.digests;

import com.google.common.base.c;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SHA224Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 28;
    static final int[] K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int H8;
    private int[] X;
    private int xOff;

    public SHA224Digest() {
        this.X = new int[64];
        reset();
    }

    public SHA224Digest(SHA224Digest sHA224Digest) {
        super(sHA224Digest);
        this.X = new int[64];
        doCopy(sHA224Digest);
    }

    public SHA224Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[64];
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.H6 = Pack.bigEndianToInt(bArr, 36);
        this.H7 = Pack.bigEndianToInt(bArr, 40);
        this.H8 = Pack.bigEndianToInt(bArr, 44);
        this.xOff = Pack.bigEndianToInt(bArr, 48);
        for (int i4 = 0; i4 != this.xOff; i4++) {
            this.X[i4] = Pack.bigEndianToInt(bArr, (i4 * 4) + 52);
        }
    }

    private int Ch(int i4, int i10, int i11) {
        return ((~i4) & i11) ^ (i10 & i4);
    }

    private int Maj(int i4, int i10, int i11) {
        return ((i4 & i11) ^ (i4 & i10)) ^ (i10 & i11);
    }

    private int Sum0(int i4) {
        return ((i4 << 10) | (i4 >>> 22)) ^ (((i4 >>> 2) | (i4 << 30)) ^ ((i4 >>> 13) | (i4 << 19)));
    }

    private int Sum1(int i4) {
        return ((i4 << 7) | (i4 >>> 25)) ^ (((i4 >>> 6) | (i4 << 26)) ^ ((i4 >>> 11) | (i4 << 21)));
    }

    private int Theta0(int i4) {
        return (i4 >>> 3) ^ (((i4 >>> 7) | (i4 << 25)) ^ ((i4 >>> 18) | (i4 << 14)));
    }

    private int Theta1(int i4) {
        return (i4 >>> 10) ^ (((i4 >>> 17) | (i4 << 15)) ^ ((i4 >>> 19) | (i4 << 13)));
    }

    private void doCopy(SHA224Digest sHA224Digest) {
        super.copyIn(sHA224Digest);
        this.H1 = sHA224Digest.H1;
        this.H2 = sHA224Digest.H2;
        this.H3 = sHA224Digest.H3;
        this.H4 = sHA224Digest.H4;
        this.H5 = sHA224Digest.H5;
        this.H6 = sHA224Digest.H6;
        this.H7 = sHA224Digest.H7;
        this.H8 = sHA224Digest.H8;
        int[] iArr = sHA224Digest.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = sHA224Digest.xOff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA224Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, i4);
        Pack.intToBigEndian(this.H2, bArr, i4 + 4);
        Pack.intToBigEndian(this.H3, bArr, i4 + 8);
        Pack.intToBigEndian(this.H4, bArr, i4 + 12);
        Pack.intToBigEndian(this.H5, bArr, i4 + 16);
        Pack.intToBigEndian(this.H6, bArr, i4 + 20);
        Pack.intToBigEndian(this.H7, bArr, i4 + 24);
        reset();
        return 28;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-224";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 28;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[(this.xOff * 4) + 52];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.H6, bArr, 36);
        Pack.intToBigEndian(this.H7, bArr, 40);
        Pack.intToBigEndian(this.H8, bArr, 44);
        Pack.intToBigEndian(this.xOff, bArr, 48);
        for (int i4 = 0; i4 != this.xOff; i4++) {
            Pack.intToBigEndian(this.X[i4], bArr, (i4 * 4) + 52);
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        for (int i4 = 16; i4 <= 63; i4++) {
            int[] iArr = this.X;
            int Theta1 = Theta1(iArr[i4 - 2]);
            int[] iArr2 = this.X;
            iArr[i4] = Theta1 + iArr2[i4 - 7] + Theta0(iArr2[i4 - 15]) + this.X[i4 - 16];
        }
        int i10 = this.H1;
        int i11 = this.H2;
        int i12 = this.H3;
        int i13 = this.H4;
        int i14 = this.H5;
        int i15 = this.H6;
        int i16 = this.H7;
        int i17 = this.H8;
        int i18 = 0;
        for (int i19 = 0; i19 < 8; i19++) {
            int Sum1 = Sum1(i14) + Ch(i14, i15, i16);
            int[] iArr3 = K;
            int i20 = i17 + Sum1 + iArr3[i18] + this.X[i18];
            int i21 = i13 + i20;
            int Sum0 = i20 + Sum0(i10) + Maj(i10, i11, i12);
            int i22 = i18 + 1;
            int Sum12 = i16 + Sum1(i21) + Ch(i21, i14, i15) + iArr3[i22] + this.X[i22];
            int i23 = i12 + Sum12;
            int Sum02 = Sum12 + Sum0(Sum0) + Maj(Sum0, i10, i11);
            int i24 = i22 + 1;
            int Sum13 = i15 + Sum1(i23) + Ch(i23, i21, i14) + iArr3[i24] + this.X[i24];
            int i25 = i11 + Sum13;
            int Sum03 = Sum13 + Sum0(Sum02) + Maj(Sum02, Sum0, i10);
            int i26 = i24 + 1;
            int Sum14 = i14 + Sum1(i25) + Ch(i25, i23, i21) + iArr3[i26] + this.X[i26];
            int i27 = i10 + Sum14;
            int Sum04 = Sum14 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            int i28 = i26 + 1;
            int Sum15 = i21 + Sum1(i27) + Ch(i27, i25, i23) + iArr3[i28] + this.X[i28];
            i17 = Sum0 + Sum15;
            i13 = Sum15 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            int i29 = i28 + 1;
            int Sum16 = i23 + Sum1(i17) + Ch(i17, i27, i25) + iArr3[i29] + this.X[i29];
            i16 = Sum02 + Sum16;
            i12 = Sum16 + Sum0(i13) + Maj(i13, Sum04, Sum03);
            int i30 = i29 + 1;
            int Sum17 = i25 + Sum1(i16) + Ch(i16, i17, i27) + iArr3[i30] + this.X[i30];
            i15 = Sum03 + Sum17;
            i11 = Sum17 + Sum0(i12) + Maj(i12, i13, Sum04);
            int i31 = i30 + 1;
            int Sum18 = i27 + Sum1(i15) + Ch(i15, i16, i17) + iArr3[i31] + this.X[i31];
            i14 = Sum04 + Sum18;
            i10 = Sum18 + Sum0(i11) + Maj(i11, i12, i13);
            i18 = i31 + 1;
        }
        this.H1 += i10;
        this.H2 += i11;
        this.H3 += i12;
        this.H4 += i13;
        this.H5 += i14;
        this.H6 += i15;
        this.H7 += i16;
        this.H8 += i17;
        this.xOff = 0;
        for (int i32 = 0; i32 < 16; i32++) {
            this.X[i32] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j4) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.X;
        iArr[14] = (int) (j4 >>> 32);
        iArr[15] = (int) (j4 & (-1));
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
        this.H1 = -1056596264;
        this.H2 = 914150663;
        this.H3 = 812702999;
        this.H4 = -150054599;
        this.H5 = -4191439;
        this.H6 = 1750603025;
        this.H7 = 1694076839;
        this.H8 = -1090891868;
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
        doCopy((SHA224Digest) memoable);
    }
}
