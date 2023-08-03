package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public abstract class GeneralDigest implements ExtendedDigest, Memoable {
    private static final int BYTE_LENGTH = 64;
    private long byteCount;
    private final byte[] xBuf;
    private int xBufOff;

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneralDigest() {
        this.xBuf = new byte[4];
        this.xBufOff = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneralDigest(GeneralDigest generalDigest) {
        this.xBuf = new byte[4];
        copyIn(generalDigest);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneralDigest(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.xBuf = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.xBufOff = Pack.bigEndianToInt(bArr, 4);
        this.byteCount = Pack.bigEndianToLong(bArr, 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void copyIn(GeneralDigest generalDigest) {
        byte[] bArr = generalDigest.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = generalDigest.xBufOff;
        this.byteCount = generalDigest.byteCount;
    }

    public void finish() {
        long j4 = this.byteCount << 3;
        byte b10 = Byte.MIN_VALUE;
        while (true) {
            update(b10);
            if (this.xBufOff == 0) {
                processLength(j4);
                processBlock();
                return;
            }
            b10 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void populateState(byte[] bArr) {
        System.arraycopy(this.xBuf, 0, bArr, 0, this.xBufOff);
        Pack.intToBigEndian(this.xBufOff, bArr, 4);
        Pack.longToBigEndian(this.byteCount, bArr, 8);
    }

    protected abstract void processBlock();

    protected abstract void processLength(long j4);

    protected abstract void processWord(byte[] bArr, int i4);

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int i4 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i4 >= bArr.length) {
                return;
            }
            bArr[i4] = 0;
            i4++;
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
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        int i11 = 0;
        int max = Math.max(0, i10);
        if (this.xBufOff != 0) {
            int i12 = 0;
            while (true) {
                if (i12 >= max) {
                    i11 = i12;
                    break;
                }
                byte[] bArr2 = this.xBuf;
                int i13 = this.xBufOff;
                int i14 = i13 + 1;
                this.xBufOff = i14;
                int i15 = i12 + 1;
                bArr2[i13] = bArr[i12 + i4];
                if (i14 == 4) {
                    processWord(bArr2, 0);
                    this.xBufOff = 0;
                    i11 = i15;
                    break;
                }
                i12 = i15;
            }
        }
        int i16 = ((max - i11) & (-4)) + i11;
        while (i11 < i16) {
            processWord(bArr, i4 + i11);
            i11 += 4;
        }
        while (i11 < max) {
            byte[] bArr3 = this.xBuf;
            int i17 = this.xBufOff;
            this.xBufOff = i17 + 1;
            bArr3[i17] = bArr[i11 + i4];
            i11++;
        }
        this.byteCount += max;
    }
}
