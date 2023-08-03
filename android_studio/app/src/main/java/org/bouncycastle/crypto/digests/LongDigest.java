package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public abstract class LongDigest implements ExtendedDigest, Memoable, EncodableDigest {
    private static final int BYTE_LENGTH = 128;
    static final long[] K = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};
    protected long H1;
    protected long H2;
    protected long H3;
    protected long H4;
    protected long H5;
    protected long H6;
    protected long H7;
    protected long H8;
    private long[] W;
    private long byteCount1;
    private long byteCount2;
    private int wOff;
    private byte[] xBuf;
    private int xBufOff;

    /* JADX INFO: Access modifiers changed from: protected */
    public LongDigest() {
        this.xBuf = new byte[8];
        this.W = new long[80];
        this.xBufOff = 0;
        reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LongDigest(LongDigest longDigest) {
        this.xBuf = new byte[8];
        this.W = new long[80];
        copyIn(longDigest);
    }

    private long Ch(long j4, long j10, long j11) {
        return ((~j4) & j11) ^ (j10 & j4);
    }

    private long Maj(long j4, long j10, long j11) {
        return ((j4 & j11) ^ (j4 & j10)) ^ (j10 & j11);
    }

    private long Sigma0(long j4) {
        return (j4 >>> 7) ^ (((j4 << 63) | (j4 >>> 1)) ^ ((j4 << 56) | (j4 >>> 8)));
    }

    private long Sigma1(long j4) {
        return (j4 >>> 6) ^ (((j4 << 45) | (j4 >>> 19)) ^ ((j4 << 3) | (j4 >>> 61)));
    }

    private long Sum0(long j4) {
        return ((j4 >>> 39) | (j4 << 25)) ^ (((j4 << 36) | (j4 >>> 28)) ^ ((j4 << 30) | (j4 >>> 34)));
    }

    private long Sum1(long j4) {
        return ((j4 >>> 41) | (j4 << 23)) ^ (((j4 << 50) | (j4 >>> 14)) ^ ((j4 << 46) | (j4 >>> 18)));
    }

    private void adjustByteCounts() {
        long j4 = this.byteCount1;
        if (j4 > 2305843009213693951L) {
            this.byteCount2 += j4 >>> 61;
            this.byteCount1 = j4 & 2305843009213693951L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void copyIn(LongDigest longDigest) {
        byte[] bArr = longDigest.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = longDigest.xBufOff;
        this.byteCount1 = longDigest.byteCount1;
        this.byteCount2 = longDigest.byteCount2;
        this.H1 = longDigest.H1;
        this.H2 = longDigest.H2;
        this.H3 = longDigest.H3;
        this.H4 = longDigest.H4;
        this.H5 = longDigest.H5;
        this.H6 = longDigest.H6;
        this.H7 = longDigest.H7;
        this.H8 = longDigest.H8;
        long[] jArr = longDigest.W;
        System.arraycopy(jArr, 0, this.W, 0, jArr.length);
        this.wOff = longDigest.wOff;
    }

    public void finish() {
        adjustByteCounts();
        long j4 = this.byteCount1 << 3;
        long j10 = this.byteCount2;
        byte b10 = Byte.MIN_VALUE;
        while (true) {
            update(b10);
            if (this.xBufOff == 0) {
                processLength(j4, j10);
                processBlock();
                return;
            }
            b10 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getEncodedStateSize() {
        return (this.wOff * 8) + 96;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void populateState(byte[] bArr) {
        System.arraycopy(this.xBuf, 0, bArr, 0, this.xBufOff);
        Pack.intToBigEndian(this.xBufOff, bArr, 8);
        Pack.longToBigEndian(this.byteCount1, bArr, 12);
        Pack.longToBigEndian(this.byteCount2, bArr, 20);
        Pack.longToBigEndian(this.H1, bArr, 28);
        Pack.longToBigEndian(this.H2, bArr, 36);
        Pack.longToBigEndian(this.H3, bArr, 44);
        Pack.longToBigEndian(this.H4, bArr, 52);
        Pack.longToBigEndian(this.H5, bArr, 60);
        Pack.longToBigEndian(this.H6, bArr, 68);
        Pack.longToBigEndian(this.H7, bArr, 76);
        Pack.longToBigEndian(this.H8, bArr, 84);
        Pack.intToBigEndian(this.wOff, bArr, 92);
        for (int i4 = 0; i4 < this.wOff; i4++) {
            Pack.longToBigEndian(this.W[i4], bArr, (i4 * 8) + 96);
        }
    }

    protected void processBlock() {
        adjustByteCounts();
        for (int i4 = 16; i4 <= 79; i4++) {
            long[] jArr = this.W;
            long Sigma1 = Sigma1(jArr[i4 - 2]);
            long[] jArr2 = this.W;
            jArr[i4] = Sigma1 + jArr2[i4 - 7] + Sigma0(jArr2[i4 - 15]) + this.W[i4 - 16];
        }
        long j4 = this.H1;
        long j10 = this.H2;
        long j11 = this.H3;
        long j12 = this.H4;
        long j13 = this.H5;
        long j14 = this.H6;
        long j15 = this.H7;
        long j16 = j14;
        long j17 = j12;
        int i10 = 0;
        long j18 = j10;
        long j19 = j11;
        long j20 = j13;
        int i11 = 0;
        long j21 = this.H8;
        long j22 = j4;
        long j23 = j15;
        while (i11 < 10) {
            long j24 = j20;
            long[] jArr3 = K;
            int i12 = i10 + 1;
            long Sum1 = j21 + Sum1(j20) + Ch(j20, j16, j23) + jArr3[i10] + this.W[i10];
            long j25 = j17 + Sum1;
            long Sum0 = Sum1 + Sum0(j22) + Maj(j22, j18, j19);
            int i13 = i12 + 1;
            long Sum12 = j23 + Sum1(j25) + Ch(j25, j24, j16) + jArr3[i12] + this.W[i12];
            long j26 = j19 + Sum12;
            long Sum02 = Sum12 + Sum0(Sum0) + Maj(Sum0, j22, j18);
            int i14 = i13 + 1;
            long Sum13 = j16 + Sum1(j26) + Ch(j26, j25, j24) + jArr3[i13] + this.W[i13];
            long j27 = j18 + Sum13;
            long Sum03 = Sum13 + Sum0(Sum02) + Maj(Sum02, Sum0, j22);
            int i15 = i14 + 1;
            long Sum14 = j24 + Sum1(j27) + Ch(j27, j26, j25) + jArr3[i14] + this.W[i14];
            long j28 = j22 + Sum14;
            long Sum04 = Sum14 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            int i16 = i15 + 1;
            long Sum15 = j25 + Sum1(j28) + Ch(j28, j27, j26) + jArr3[i15] + this.W[i15];
            long j29 = Sum0 + Sum15;
            long Sum05 = Sum15 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            int i17 = i16 + 1;
            long Sum16 = j26 + Sum1(j29) + Ch(j29, j28, j27) + jArr3[i16] + this.W[i16];
            long j30 = Sum02 + Sum16;
            long Sum06 = Sum16 + Sum0(Sum05) + Maj(Sum05, Sum04, Sum03);
            j23 = j30;
            int i18 = i17 + 1;
            long Sum17 = j27 + Sum1(j30) + Ch(j30, j29, j28) + jArr3[i17] + this.W[i17];
            long j31 = Sum03 + Sum17;
            j16 = j31;
            j18 = Sum17 + Sum0(Sum06) + Maj(Sum06, Sum05, Sum04);
            long Sum18 = j28 + Sum1(j31) + Ch(j31, j23, j29) + jArr3[i18] + this.W[i18];
            long Sum07 = Sum18 + Sum0(j18) + Maj(j18, Sum06, Sum05);
            i11++;
            j20 = Sum04 + Sum18;
            j19 = Sum06;
            j21 = j29;
            j17 = Sum05;
            i10 = i18 + 1;
            j22 = Sum07;
        }
        this.H1 += j22;
        this.H2 += j18;
        this.H3 += j19;
        this.H4 += j17;
        this.H5 += j20;
        this.H6 += j16;
        this.H7 += j23;
        this.H8 += j21;
        this.wOff = 0;
        for (int i19 = 0; i19 < 16; i19++) {
            this.W[i19] = 0;
        }
    }

    protected void processLength(long j4, long j10) {
        if (this.wOff > 14) {
            processBlock();
        }
        long[] jArr = this.W;
        jArr[14] = j10;
        jArr[15] = j4;
    }

    protected void processWord(byte[] bArr, int i4) {
        this.W[this.wOff] = Pack.bigEndianToLong(bArr, i4);
        int i10 = this.wOff + 1;
        this.wOff = i10;
        if (i10 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount1 = 0L;
        this.byteCount2 = 0L;
        int i4 = 0;
        this.xBufOff = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = 0;
            i10++;
        }
        this.wOff = 0;
        while (true) {
            long[] jArr = this.W;
            if (i4 == jArr.length) {
                return;
            }
            jArr[i4] = 0;
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void restoreState(byte[] bArr) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, 8);
        this.xBufOff = bigEndianToInt;
        System.arraycopy(bArr, 0, this.xBuf, 0, bigEndianToInt);
        this.byteCount1 = Pack.bigEndianToLong(bArr, 12);
        this.byteCount2 = Pack.bigEndianToLong(bArr, 20);
        this.H1 = Pack.bigEndianToLong(bArr, 28);
        this.H2 = Pack.bigEndianToLong(bArr, 36);
        this.H3 = Pack.bigEndianToLong(bArr, 44);
        this.H4 = Pack.bigEndianToLong(bArr, 52);
        this.H5 = Pack.bigEndianToLong(bArr, 60);
        this.H6 = Pack.bigEndianToLong(bArr, 68);
        this.H7 = Pack.bigEndianToLong(bArr, 76);
        this.H8 = Pack.bigEndianToLong(bArr, 84);
        this.wOff = Pack.bigEndianToInt(bArr, 92);
        for (int i4 = 0; i4 < this.wOff; i4++) {
            this.W[i4] = Pack.bigEndianToLong(bArr, (i4 * 8) + 96);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.xBuf;
        int i4 = this.xBufOff;
        int i10 = i4 + 1;
        this.xBufOff = i10;
        bArr[i4] = b10;
        if (i10 == bArr.length) {
            processWord(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount1++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        while (this.xBufOff != 0 && i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
        while (i10 > this.xBuf.length) {
            processWord(bArr, i4);
            byte[] bArr2 = this.xBuf;
            i4 += bArr2.length;
            i10 -= bArr2.length;
            this.byteCount1 += bArr2.length;
        }
        while (i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
    }
}
