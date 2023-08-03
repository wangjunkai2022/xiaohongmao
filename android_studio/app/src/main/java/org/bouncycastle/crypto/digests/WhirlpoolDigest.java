package org.bouncycastle.crypto.digests;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.imagepipeline.common.e;
import com.facebook.imageutils.c;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.qennnsad.aknkaksd.util.a1;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.math.Primes;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;

/* loaded from: classes4.dex */
public final class WhirlpoolDigest implements ExtendedDigest, Memoable {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final short[] EIGHT;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;
    private long[] _K;
    private long[] _L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private static final int[] SBOX = {24, 35, 198, 232, h0.J, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, 224, c.f13395j, 194, 46, 75, 254, 87, 21, 119, 55, 229, 159, a0.A, 74, c.f13391f, 88, 201, 41, 10, 177, a1.f54532a, 107, 133, a0.f22979w, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, c.f13388c, 251, 238, 124, 102, 221, 23, 71, 158, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, c.f13390e, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, e.f12205e, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 43, 118, h0.I, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, h0.H, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, 153, 109, 13, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 223, 126, 36, 59, 171, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, 17, 143, 78, 183, 235, 60, h0.G, 148, 247, 185, 19, 44, Primes.SMALL_FACTOR_LIMIT, 231, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, h0.K, 137, 20, c.f13392g, 22, 58, 105, 9, 112, 182, c.f13394i, 237, 204, 66, 152, 164, 40, 92, 248, h0.Q};
    private static final long[] C0 = new long[256];
    private static final long[] C1 = new long[256];
    private static final long[] C2 = new long[256];
    private static final long[] C3 = new long[256];
    private static final long[] C4 = new long[256];
    private static final long[] C5 = new long[256];
    private static final long[] C6 = new long[256];
    private static final long[] C7 = new long[256];

    static {
        short[] sArr = new short[32];
        EIGHT = sArr;
        sArr[31] = 8;
    }

    public WhirlpoolDigest() {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        for (int i4 = 0; i4 < 256; i4++) {
            int i10 = SBOX[i4];
            int maskWithReductionPolynomial = maskWithReductionPolynomial(i10 << 1);
            int maskWithReductionPolynomial2 = maskWithReductionPolynomial(maskWithReductionPolynomial << 1);
            int i11 = maskWithReductionPolynomial2 ^ i10;
            int maskWithReductionPolynomial3 = maskWithReductionPolynomial(maskWithReductionPolynomial2 << 1);
            int i12 = maskWithReductionPolynomial3 ^ i10;
            C0[i4] = packIntoLong(i10, i10, maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3, i11, maskWithReductionPolynomial, i12);
            C1[i4] = packIntoLong(i12, i10, i10, maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3, i11, maskWithReductionPolynomial);
            C2[i4] = packIntoLong(maskWithReductionPolynomial, i12, i10, i10, maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3, i11);
            C3[i4] = packIntoLong(i11, maskWithReductionPolynomial, i12, i10, i10, maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3);
            C4[i4] = packIntoLong(maskWithReductionPolynomial3, i11, maskWithReductionPolynomial, i12, i10, i10, maskWithReductionPolynomial2, i10);
            C5[i4] = packIntoLong(i10, maskWithReductionPolynomial3, i11, maskWithReductionPolynomial, i12, i10, i10, maskWithReductionPolynomial2);
            C6[i4] = packIntoLong(maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3, i11, maskWithReductionPolynomial, i12, i10, i10);
            C7[i4] = packIntoLong(i10, maskWithReductionPolynomial2, i10, maskWithReductionPolynomial3, i11, maskWithReductionPolynomial, i12, i10);
        }
        this._rc[0] = 0;
        for (int i13 = 1; i13 <= 10; i13++) {
            int i14 = (i13 - 1) * 8;
            this._rc[i13] = (((((((C0[i14] & (-72057594037927936L)) ^ (C1[i14 + 1] & 71776119061217280L)) ^ (C2[i14 + 2] & 280375465082880L)) ^ (C3[i14 + 3] & 1095216660480L)) ^ (C4[i14 + 4] & 4278190080L)) ^ (C5[i14 + 5] & 16711680)) ^ (C6[i14 + 6] & 65280)) ^ (C7[i14 + 7] & 255);
        }
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        reset(whirlpoolDigest);
    }

    private long bytesToLongFromBuffer(byte[] bArr, int i4) {
        return (bArr[i4 + 7] & 255) | ((bArr[i4 + 0] & 255) << 56) | ((bArr[i4 + 1] & 255) << 48) | ((bArr[i4 + 2] & 255) << 40) | ((bArr[i4 + 3] & 255) << 32) | ((bArr[i4 + 4] & 255) << 24) | ((bArr[i4 + 5] & 255) << 16) | ((bArr[i4 + 6] & 255) << 8);
    }

    private void convertLongToByteArray(long j4, byte[] bArr, int i4) {
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i4 + i10] = (byte) ((j4 >> (56 - (i10 * 8))) & 255);
        }
    }

    private byte[] copyBitLength() {
        byte[] bArr = new byte[32];
        for (int i4 = 0; i4 < 32; i4++) {
            bArr[i4] = (byte) (this._bitCount[i4] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] copyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int i4 = this._bufferPos;
        int i10 = i4 + 1;
        this._bufferPos = i10;
        bArr[i4] = (byte) (bArr[i4] | 128);
        if (i10 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        if (this._bufferPos > 32) {
            while (this._bufferPos != 0) {
                update((byte) 0);
            }
        }
        while (this._bufferPos <= 32) {
            update((byte) 0);
        }
        System.arraycopy(copyBitLength, 0, this._buffer, 32, copyBitLength.length);
        processFilledBuffer(this._buffer, 0);
    }

    private void increment() {
        int i4 = 0;
        for (int length = this._bitCount.length - 1; length >= 0; length--) {
            short[] sArr = this._bitCount;
            int i10 = (sArr[length] & 255) + EIGHT[length] + i4;
            i4 = i10 >>> 8;
            sArr[length] = (short) (i10 & 255);
        }
    }

    private int maskWithReductionPolynomial(int i4) {
        return ((long) i4) >= 256 ? i4 ^ REDUCTION_POLYNOMIAL : i4;
    }

    private long packIntoLong(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        return (((((((i10 << 48) ^ (i4 << 56)) ^ (i11 << 40)) ^ (i12 << 32)) ^ (i13 << 24)) ^ (i14 << 16)) ^ (i15 << 8)) ^ i16;
    }

    private void processFilledBuffer(byte[] bArr, int i4) {
        for (int i10 = 0; i10 < this._state.length; i10++) {
            this._block[i10] = bytesToLongFromBuffer(this._buffer, i10 * 8);
        }
        processBlock();
        this._bufferPos = 0;
        Arrays.fill(this._buffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new WhirlpoolDigest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        finish();
        for (int i10 = 0; i10 < 8; i10++) {
            convertLongToByteArray(this._hash[i10], bArr, (i10 * 8) + i4);
        }
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    protected void processBlock() {
        long[] jArr;
        for (int i4 = 0; i4 < 8; i4++) {
            long[] jArr2 = this._state;
            long j4 = this._block[i4];
            long[] jArr3 = this._K;
            long j10 = this._hash[i4];
            jArr3[i4] = j10;
            jArr2[i4] = j4 ^ j10;
        }
        int i10 = 1;
        while (i10 <= 10) {
            int i11 = 0;
            while (i11 < 8) {
                long[] jArr4 = this._L;
                jArr4[i11] = 0;
                long j11 = jArr4[i11];
                long[] jArr5 = C0;
                long[] jArr6 = this._K;
                jArr4[i11] = jArr5[((int) (jArr6[(i11 + 0) & 7] >>> 56)) & 255] ^ j11;
                jArr4[i11] = jArr4[i11] ^ C1[((int) (jArr6[(i11 - 1) & 7] >>> 48)) & 255];
                jArr4[i11] = jArr4[i11] ^ C2[((int) (jArr6[(i11 - 2) & 7] >>> 40)) & 255];
                jArr4[i11] = jArr4[i11] ^ C3[((int) (jArr6[(i11 - 3) & 7] >>> 32)) & 255];
                jArr4[i11] = jArr4[i11] ^ C4[((int) (jArr6[(i11 - 4) & 7] >>> 24)) & 255];
                jArr4[i11] = jArr4[i11] ^ C5[((int) (jArr6[(i11 - 5) & 7] >>> 16)) & 255];
                jArr4[i11] = jArr4[i11] ^ C6[((int) (jArr6[(i11 - 6) & 7] >>> 8)) & 255];
                jArr4[i11] = jArr4[i11] ^ C7[((int) jArr6[(i11 - 7) & 7]) & 255];
                i11++;
                i10 = i10;
            }
            int i12 = i10;
            long[] jArr7 = this._L;
            long[] jArr8 = this._K;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this._K;
            jArr9[0] = jArr9[0] ^ this._rc[i12];
            int i13 = 0;
            while (true) {
                jArr = this._L;
                if (i13 < 8) {
                    jArr[i13] = this._K[i13];
                    long j12 = jArr[i13];
                    long[] jArr10 = C0;
                    long[] jArr11 = this._state;
                    jArr[i13] = j12 ^ jArr10[((int) (jArr11[(i13 + 0) & 7] >>> 56)) & 255];
                    jArr[i13] = jArr[i13] ^ C1[((int) (jArr11[(i13 - 1) & 7] >>> 48)) & 255];
                    jArr[i13] = jArr[i13] ^ C2[((int) (jArr11[(i13 - 2) & 7] >>> 40)) & 255];
                    jArr[i13] = jArr[i13] ^ C3[((int) (jArr11[(i13 - 3) & 7] >>> 32)) & 255];
                    jArr[i13] = jArr[i13] ^ C4[((int) (jArr11[(i13 - 4) & 7] >>> 24)) & 255];
                    jArr[i13] = jArr[i13] ^ C5[((int) (jArr11[(i13 - 5) & 7] >>> 16)) & 255];
                    jArr[i13] = jArr[i13] ^ C6[((int) (jArr11[(i13 - 6) & 7] >>> 8)) & 255];
                    jArr[i13] = jArr[i13] ^ C7[((int) jArr11[(i13 - 7) & 7]) & 255];
                    i13++;
                }
            }
            long[] jArr12 = this._state;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
            i10 = i12 + 1;
        }
        for (int i14 = 0; i14 < 8; i14++) {
            long[] jArr13 = this._hash;
            jArr13[i14] = jArr13[i14] ^ (this._state[i14] ^ this._block[i14]);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this._K, 0L);
        Arrays.fill(this._L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        WhirlpoolDigest whirlpoolDigest = (WhirlpoolDigest) memoable;
        long[] jArr = whirlpoolDigest._rc;
        long[] jArr2 = this._rc;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = whirlpoolDigest._buffer;
        byte[] bArr2 = this._buffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        short[] sArr = whirlpoolDigest._bitCount;
        short[] sArr2 = this._bitCount;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = whirlpoolDigest._hash;
        long[] jArr4 = this._hash;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = whirlpoolDigest._K;
        long[] jArr6 = this._K;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = whirlpoolDigest._L;
        long[] jArr8 = this._L;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = whirlpoolDigest._block;
        long[] jArr10 = this._block;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = whirlpoolDigest._state;
        long[] jArr12 = this._state;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this._buffer;
        int i4 = this._bufferPos;
        bArr[i4] = b10;
        int i10 = i4 + 1;
        this._bufferPos = i10;
        if (i10 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        increment();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        while (i10 > 0) {
            update(bArr[i4]);
            i4++;
            i10--;
        }
    }
}
