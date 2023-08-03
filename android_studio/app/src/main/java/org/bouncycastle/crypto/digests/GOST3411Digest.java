package org.bouncycastle.crypto.digests;

import androidx.core.view.MotionEventCompat;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.engines.GOST28147Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class GOST3411Digest implements ExtendedDigest, Memoable {
    private static final byte[] C2 = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};
    private static final int DIGEST_LENGTH = 32;
    private byte[][] C;
    private byte[] H;
    private byte[] K;
    private byte[] L;
    private byte[] M;
    byte[] S;
    private byte[] Sum;
    byte[] U;
    byte[] V;
    byte[] W;

    /* renamed from: a  reason: collision with root package name */
    byte[] f91196a;
    private long byteCount;
    private BlockCipher cipher;
    private byte[] sBox;
    short[] wS;
    short[] w_S;
    private byte[] xBuf;
    private int xBufOff;

    public GOST3411Digest() {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance(byte.class, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f91196a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        byte[] sBox = GOST28147Engine.getSBox("D-A");
        this.sBox = sBox;
        this.cipher.init(true, new ParametersWithSBox(null, sBox));
        reset();
    }

    public GOST3411Digest(GOST3411Digest gOST3411Digest) {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance(byte.class, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f91196a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        reset(gOST3411Digest);
    }

    public GOST3411Digest(byte[] bArr) {
        this.H = new byte[32];
        this.L = new byte[32];
        this.M = new byte[32];
        this.Sum = new byte[32];
        this.C = (byte[][]) Array.newInstance(byte.class, 4, 32);
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.K = new byte[32];
        this.f91196a = new byte[8];
        this.wS = new short[16];
        this.w_S = new short[16];
        this.S = new byte[32];
        this.U = new byte[32];
        this.V = new byte[32];
        this.W = new byte[32];
        byte[] clone = Arrays.clone(bArr);
        this.sBox = clone;
        this.cipher.init(true, new ParametersWithSBox(null, clone));
        reset();
    }

    private byte[] A(byte[] bArr) {
        for (int i4 = 0; i4 < 8; i4++) {
            this.f91196a[i4] = (byte) (bArr[i4] ^ bArr[i4 + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f91196a, 0, bArr, 24, 8);
        return bArr;
    }

    private void E(byte[] bArr, byte[] bArr2, int i4, byte[] bArr3, int i10) {
        this.cipher.init(true, new KeyParameter(bArr));
        this.cipher.processBlock(bArr3, i10, bArr2, i4);
    }

    private byte[] P(byte[] bArr) {
        for (int i4 = 0; i4 < 8; i4++) {
            byte[] bArr2 = this.K;
            int i10 = i4 * 4;
            bArr2[i10] = bArr[i4];
            bArr2[i10 + 1] = bArr[i4 + 8];
            bArr2[i10 + 2] = bArr[i4 + 16];
            bArr2[i10 + 3] = bArr[i4 + 24];
        }
        return this.K;
    }

    private void cpyBytesToShort(byte[] bArr, short[] sArr) {
        for (int i4 = 0; i4 < bArr.length / 2; i4++) {
            int i10 = i4 * 2;
            sArr[i4] = (short) ((bArr[i10] & 255) | ((bArr[i10 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK));
        }
    }

    private void cpyShortToBytes(short[] sArr, byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length / 2; i4++) {
            int i10 = i4 * 2;
            bArr[i10 + 1] = (byte) (sArr[i4] >> 8);
            bArr[i10] = (byte) sArr[i4];
        }
    }

    private void finish() {
        Pack.longToLittleEndian(this.byteCount * 8, this.L, 0);
        while (this.xBufOff != 0) {
            update((byte) 0);
        }
        processBlock(this.L, 0);
        processBlock(this.Sum, 0);
    }

    private void fw(byte[] bArr) {
        cpyBytesToShort(bArr, this.wS);
        short[] sArr = this.w_S;
        short[] sArr2 = this.wS;
        sArr[15] = (short) (((((sArr2[0] ^ sArr2[1]) ^ sArr2[2]) ^ sArr2[3]) ^ sArr2[12]) ^ sArr2[15]);
        System.arraycopy(sArr2, 1, sArr, 0, 15);
        cpyShortToBytes(this.w_S, bArr);
    }

    private void sumByteArray(byte[] bArr) {
        int i4 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr2 = this.Sum;
            if (i4 == bArr2.length) {
                return;
            }
            int i11 = (bArr2[i4] & 255) + (bArr[i4] & 255) + i10;
            bArr2[i4] = (byte) i11;
            i10 = i11 >>> 8;
            i4++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new GOST3411Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        byte[] bArr2 = this.H;
        System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    protected void processBlock(byte[] bArr, int i4) {
        System.arraycopy(bArr, i4, this.M, 0, 32);
        System.arraycopy(this.H, 0, this.U, 0, 32);
        System.arraycopy(this.M, 0, this.V, 0, 32);
        for (int i10 = 0; i10 < 32; i10++) {
            this.W[i10] = (byte) (this.U[i10] ^ this.V[i10]);
        }
        E(P(this.W), this.S, 0, this.H, 0);
        for (int i11 = 1; i11 < 4; i11++) {
            byte[] A = A(this.U);
            for (int i12 = 0; i12 < 32; i12++) {
                this.U[i12] = (byte) (A[i12] ^ this.C[i11][i12]);
            }
            this.V = A(A(this.V));
            for (int i13 = 0; i13 < 32; i13++) {
                this.W[i13] = (byte) (this.U[i13] ^ this.V[i13]);
            }
            int i14 = i11 * 8;
            E(P(this.W), this.S, i14, this.H, i14);
        }
        for (int i15 = 0; i15 < 12; i15++) {
            fw(this.S);
        }
        for (int i16 = 0; i16 < 32; i16++) {
            byte[] bArr2 = this.S;
            bArr2[i16] = (byte) (bArr2[i16] ^ this.M[i16]);
        }
        fw(this.S);
        for (int i17 = 0; i17 < 32; i17++) {
            byte[] bArr3 = this.S;
            bArr3[i17] = (byte) (this.H[i17] ^ bArr3[i17]);
        }
        for (int i18 = 0; i18 < 61; i18++) {
            fw(this.S);
        }
        byte[] bArr4 = this.S;
        byte[] bArr5 = this.H;
        System.arraycopy(bArr4, 0, bArr5, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int i4 = 0;
        while (true) {
            byte[] bArr = this.H;
            if (i4 >= bArr.length) {
                break;
            }
            bArr[i4] = 0;
            i4++;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr2 = this.L;
            if (i10 >= bArr2.length) {
                break;
            }
            bArr2[i10] = 0;
            i10++;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr3 = this.M;
            if (i11 >= bArr3.length) {
                break;
            }
            bArr3[i11] = 0;
            i11++;
        }
        int i12 = 0;
        while (true) {
            byte[][] bArr4 = this.C;
            if (i12 >= bArr4[1].length) {
                break;
            }
            bArr4[1][i12] = 0;
            i12++;
        }
        int i13 = 0;
        while (true) {
            byte[][] bArr5 = this.C;
            if (i13 >= bArr5[3].length) {
                break;
            }
            bArr5[3][i13] = 0;
            i13++;
        }
        int i14 = 0;
        while (true) {
            byte[] bArr6 = this.Sum;
            if (i14 >= bArr6.length) {
                break;
            }
            bArr6[i14] = 0;
            i14++;
        }
        int i15 = 0;
        while (true) {
            byte[] bArr7 = this.xBuf;
            if (i15 >= bArr7.length) {
                byte[] bArr8 = C2;
                System.arraycopy(bArr8, 0, this.C[2], 0, bArr8.length);
                return;
            }
            bArr7[i15] = 0;
            i15++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        GOST3411Digest gOST3411Digest = (GOST3411Digest) memoable;
        byte[] bArr = gOST3411Digest.sBox;
        this.sBox = bArr;
        this.cipher.init(true, new ParametersWithSBox(null, bArr));
        reset();
        byte[] bArr2 = gOST3411Digest.H;
        System.arraycopy(bArr2, 0, this.H, 0, bArr2.length);
        byte[] bArr3 = gOST3411Digest.L;
        System.arraycopy(bArr3, 0, this.L, 0, bArr3.length);
        byte[] bArr4 = gOST3411Digest.M;
        System.arraycopy(bArr4, 0, this.M, 0, bArr4.length);
        byte[] bArr5 = gOST3411Digest.Sum;
        System.arraycopy(bArr5, 0, this.Sum, 0, bArr5.length);
        byte[][] bArr6 = gOST3411Digest.C;
        System.arraycopy(bArr6[1], 0, this.C[1], 0, bArr6[1].length);
        byte[][] bArr7 = gOST3411Digest.C;
        System.arraycopy(bArr7[2], 0, this.C[2], 0, bArr7[2].length);
        byte[][] bArr8 = gOST3411Digest.C;
        System.arraycopy(bArr8[3], 0, this.C[3], 0, bArr8[3].length);
        byte[] bArr9 = gOST3411Digest.xBuf;
        System.arraycopy(bArr9, 0, this.xBuf, 0, bArr9.length);
        this.xBufOff = gOST3411Digest.xBufOff;
        this.byteCount = gOST3411Digest.byteCount;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.xBuf;
        int i4 = this.xBufOff;
        int i10 = i4 + 1;
        this.xBufOff = i10;
        bArr[i4] = b10;
        if (i10 == bArr.length) {
            sumByteArray(bArr);
            processBlock(this.xBuf, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        while (this.xBufOff != 0 && i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
        while (true) {
            byte[] bArr2 = this.xBuf;
            if (i10 <= bArr2.length) {
                break;
            }
            System.arraycopy(bArr, i4, bArr2, 0, bArr2.length);
            sumByteArray(this.xBuf);
            processBlock(this.xBuf, 0);
            byte[] bArr3 = this.xBuf;
            i4 += bArr3.length;
            i10 -= bArr3.length;
            this.byteCount += bArr3.length;
        }
        while (i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
    }
}
