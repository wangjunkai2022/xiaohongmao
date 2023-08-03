package org.bouncycastle.crypto.digests;

import com.fasterxml.jackson.core.json.a;
import com.google.common.base.c;
import com.google.common.primitives.k;
import okio.Utf8;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Memoable;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes4.dex */
public class MD2Digest implements ExtendedDigest, Memoable {
    private static final int DIGEST_LENGTH = 16;
    private static final byte[] S = {41, 46, 67, -55, -94, -40, 124, 1, 61, 54, 84, -95, -20, -16, 6, 19, 98, -89, 5, -13, -64, -57, 115, -116, -104, -109, 43, -39, PSSSigner.TRAILER_IMPLICIT, 76, -126, -54, c.H, -101, 87, 60, -3, -44, -32, c.f32119z, 103, 66, 111, c.B, -118, c.A, -27, c.f32114u, -66, 78, -60, -42, -38, -98, -34, 73, -96, -5, -11, -114, a.f13999j, 47, -18, 122, -87, 104, 121, -111, c.f32118y, -78, 7, Utf8.REPLACEMENT_BYTE, -108, -62, 16, -119, c.f32106m, 34, 95, 33, Byte.MIN_VALUE, Byte.MAX_VALUE, 93, -102, 90, -112, 50, 39, 53, 62, -52, -25, a.f14000k, -9, -105, 3, -1, c.C, 48, -77, 72, -91, -75, -47, -41, 94, -110, 42, -84, 86, -86, -58, 79, -72, 56, -46, -106, -92, 125, -74, 118, -4, 107, -30, -100, 116, 4, -15, 69, -99, 112, 89, 100, 113, -121, 32, -122, 91, -49, 101, -26, 45, -88, 2, c.E, 96, 37, -83, -82, -80, -71, -10, c.F, 70, 97, 105, 52, k.f34876a, 126, c.f32110q, 85, 71, -93, 35, -35, 81, -81, 58, -61, 92, -7, -50, -70, -59, -22, 38, 44, 83, c.f32108o, 110, -123, 40, -124, 9, -45, -33, -51, -12, 65, -127, 77, 82, 106, -36, 55, -56, 108, -63, -85, -6, 36, -31, 123, 8, c.f32107n, -67, -79, 74, 120, -120, -107, -117, -29, 99, -24, 109, -23, -53, -43, -2, 59, 0, c.G, 57, -14, a.f13998i, -73, c.f32109p, 102, 88, -48, -28, -90, 119, 114, -8, -21, 117, 75, 10, 49, 68, 80, -76, -113, -19, c.I, c.D, -37, -103, -115, 51, -97, 17, -125, c.f32117x};
    private byte[] C;
    private int COff;
    private byte[] M;
    private byte[] X;
    private int mOff;
    private int xOff;

    public MD2Digest() {
        this.X = new byte[48];
        this.M = new byte[16];
        this.C = new byte[16];
        reset();
    }

    public MD2Digest(MD2Digest mD2Digest) {
        this.X = new byte[48];
        this.M = new byte[16];
        this.C = new byte[16];
        copyIn(mD2Digest);
    }

    private void copyIn(MD2Digest mD2Digest) {
        byte[] bArr = mD2Digest.X;
        System.arraycopy(bArr, 0, this.X, 0, bArr.length);
        this.xOff = mD2Digest.xOff;
        byte[] bArr2 = mD2Digest.M;
        System.arraycopy(bArr2, 0, this.M, 0, bArr2.length);
        this.mOff = mD2Digest.mOff;
        byte[] bArr3 = mD2Digest.C;
        System.arraycopy(bArr3, 0, this.C, 0, bArr3.length);
        this.COff = mD2Digest.COff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new MD2Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        int length = this.M.length;
        int i10 = this.mOff;
        byte b10 = (byte) (length - i10);
        while (true) {
            byte[] bArr2 = this.M;
            if (i10 >= bArr2.length) {
                processCheckSum(bArr2);
                processBlock(this.M);
                processBlock(this.C);
                System.arraycopy(this.X, this.xOff, bArr, i4, 16);
                reset();
                return 16;
            }
            bArr2[i10] = b10;
            i10++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return f.f93509a;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    protected void processBlock(byte[] bArr) {
        for (int i4 = 0; i4 < 16; i4++) {
            byte[] bArr2 = this.X;
            bArr2[i4 + 16] = bArr[i4];
            bArr2[i4 + 32] = (byte) (bArr[i4] ^ bArr2[i4]);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < 18; i11++) {
            for (int i12 = 0; i12 < 48; i12++) {
                byte[] bArr3 = this.X;
                byte b10 = (byte) (S[i10] ^ bArr3[i12]);
                bArr3[i12] = b10;
                i10 = b10 & 255;
            }
            i10 = (i10 + i11) % 256;
        }
    }

    protected void processCheckSum(byte[] bArr) {
        byte b10 = this.C[15];
        for (int i4 = 0; i4 < 16; i4++) {
            byte[] bArr2 = this.C;
            bArr2[i4] = (byte) (S[(b10 ^ bArr[i4]) & 255] ^ bArr2[i4]);
            b10 = bArr2[i4];
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.xOff = 0;
        int i4 = 0;
        while (true) {
            byte[] bArr = this.X;
            if (i4 == bArr.length) {
                break;
            }
            bArr[i4] = 0;
            i4++;
        }
        this.mOff = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr2 = this.M;
            if (i10 == bArr2.length) {
                break;
            }
            bArr2[i10] = 0;
            i10++;
        }
        this.COff = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr3 = this.C;
            if (i11 == bArr3.length) {
                return;
            }
            bArr3[i11] = 0;
            i11++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((MD2Digest) memoable);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.M;
        int i4 = this.mOff;
        int i10 = i4 + 1;
        this.mOff = i10;
        bArr[i4] = b10;
        if (i10 == 16) {
            processCheckSum(bArr);
            processBlock(this.M);
            this.mOff = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        while (this.mOff != 0 && i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
        while (i10 > 16) {
            System.arraycopy(bArr, i4, this.M, 0, 16);
            processCheckSum(this.M);
            processBlock(this.M);
            i10 -= 16;
            i4 += 16;
        }
        while (i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
    }
}
