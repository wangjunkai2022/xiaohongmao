package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.MemoableResetException;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SHA512tDigest extends LongDigest {
    private long H1t;
    private long H2t;
    private long H3t;
    private long H4t;
    private long H5t;
    private long H6t;
    private long H7t;
    private long H8t;
    private int digestLength;

    public SHA512tDigest(int i4) {
        if (i4 >= 512) {
            throw new IllegalArgumentException("bitLength cannot be >= 512");
        }
        if (i4 % 8 != 0) {
            throw new IllegalArgumentException("bitLength needs to be a multiple of 8");
        }
        if (i4 == 384) {
            throw new IllegalArgumentException("bitLength cannot be 384 use SHA384 instead");
        }
        int i10 = i4 / 8;
        this.digestLength = i10;
        tIvGenerate(i10 * 8);
        reset();
    }

    public SHA512tDigest(SHA512tDigest sHA512tDigest) {
        super(sHA512tDigest);
        this.digestLength = sHA512tDigest.digestLength;
        reset(sHA512tDigest);
    }

    public SHA512tDigest(byte[] bArr) {
        this(readDigestLength(bArr));
        restoreState(bArr);
    }

    private static void intToBigEndian(int i4, byte[] bArr, int i10, int i11) {
        int min = Math.min(4, i11);
        while (true) {
            min--;
            if (min < 0) {
                return;
            }
            bArr[i10 + min] = (byte) (i4 >>> ((3 - min) * 8));
        }
    }

    private static void longToBigEndian(long j4, byte[] bArr, int i4, int i10) {
        if (i10 > 0) {
            intToBigEndian((int) (j4 >>> 32), bArr, i4, i10);
            if (i10 > 4) {
                intToBigEndian((int) (j4 & 4294967295L), bArr, i4 + 4, i10 - 4);
            }
        }
    }

    private static int readDigestLength(byte[] bArr) {
        return Pack.bigEndianToInt(bArr, bArr.length - 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x007f, code lost:
        if (r4 > 10) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void tIvGenerate(int r4) {
        /*
            r3 = this;
            r0 = -3482333909917012819(0xcfac43c256196cad, double:-6.392239886847908E75)
            r3.H1 = r0
            r0 = 2216346199247487646(0x1ec20b20216f029e, double:1.604250256667292E-160)
            r3.H2 = r0
            r0 = -7364697282686394994(0x99cb56d75b315d8e, double:-2.0106609494103695E-184)
            r3.H3 = r0
            r0 = 65953792586715988(0xea509ffab89354, double:2.9978976005667514E-304)
            r3.H4 = r0
            r0 = -816286391624063116(0xf4abf7da08432774, double:-1.0252515228978657E254)
            r3.H5 = r0
            r0 = 4512832404995164602(0x3ea0cd298e9bc9ba, double:5.007211971427005E-7)
            r3.H6 = r0
            r0 = -5033199132376557362(0xba267c0e5ee418ce, double:-1.418977391716189E-28)
            r3.H7 = r0
            r0 = -124578254951840548(0xfe4568bcb6db84dc, double:-1.7921927020935902E300)
            r3.H8 = r0
            r0 = 83
            r3.update(r0)
            r0 = 72
            r3.update(r0)
            r0 = 65
            r3.update(r0)
            r0 = 45
            r3.update(r0)
            r0 = 53
            r3.update(r0)
            r0 = 49
            r3.update(r0)
            r0 = 50
            r3.update(r0)
            r0 = 47
            r3.update(r0)
            r0 = 100
            r1 = 10
            if (r4 <= r0) goto L7f
            int r2 = r4 / 100
            int r2 = r2 + 48
            byte r2 = (byte) r2
            r3.update(r2)
            int r4 = r4 % r0
        L6f:
            int r0 = r4 / 10
            int r0 = r0 + 48
            byte r0 = (byte) r0
            r3.update(r0)
            int r4 = r4 % r1
        L78:
            int r4 = r4 + 48
            byte r4 = (byte) r4
            r3.update(r4)
            goto L82
        L7f:
            if (r4 <= r1) goto L78
            goto L6f
        L82:
            r3.finish()
            long r0 = r3.H1
            r3.H1t = r0
            long r0 = r3.H2
            r3.H2t = r0
            long r0 = r3.H3
            r3.H3t = r0
            long r0 = r3.H4
            r3.H4t = r0
            long r0 = r3.H5
            r3.H5t = r0
            long r0 = r3.H6
            r3.H6t = r0
            long r0 = r3.H7
            r3.H7t = r0
            long r0 = r3.H8
            r3.H8t = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.digests.SHA512tDigest.tIvGenerate(int):void");
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA512tDigest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        longToBigEndian(this.H1, bArr, i4, this.digestLength);
        longToBigEndian(this.H2, bArr, i4 + 8, this.digestLength - 8);
        longToBigEndian(this.H3, bArr, i4 + 16, this.digestLength - 16);
        longToBigEndian(this.H4, bArr, i4 + 24, this.digestLength - 24);
        longToBigEndian(this.H5, bArr, i4 + 32, this.digestLength - 32);
        longToBigEndian(this.H6, bArr, i4 + 40, this.digestLength - 40);
        longToBigEndian(this.H7, bArr, i4 + 48, this.digestLength - 48);
        longToBigEndian(this.H8, bArr, i4 + 56, this.digestLength - 56);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-512/" + Integer.toString(this.digestLength * 8);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int encodedStateSize = getEncodedStateSize();
        byte[] bArr = new byte[encodedStateSize + 4];
        populateState(bArr);
        Pack.intToBigEndian(this.digestLength * 8, bArr, encodedStateSize);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = this.H1t;
        this.H2 = this.H2t;
        this.H3 = this.H3t;
        this.H4 = this.H4t;
        this.H5 = this.H5t;
        this.H6 = this.H6t;
        this.H7 = this.H7t;
        this.H8 = this.H8t;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SHA512tDigest sHA512tDigest = (SHA512tDigest) memoable;
        if (this.digestLength != sHA512tDigest.digestLength) {
            throw new MemoableResetException("digestLength inappropriate in other");
        }
        super.copyIn(sHA512tDigest);
        this.H1t = sHA512tDigest.H1t;
        this.H2t = sHA512tDigest.H2t;
        this.H3t = sHA512tDigest.H3t;
        this.H4t = sHA512tDigest.H4t;
        this.H5t = sHA512tDigest.H5t;
        this.H6t = sHA512tDigest.H6t;
        this.H7t = sHA512tDigest.H7t;
        this.H8t = sHA512tDigest.H8t;
    }
}
