package org.bouncycastle.crypto.digests;

import com.google.common.base.c;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Blake2sDigest implements ExtendedDigest {
    private static final int BLOCK_LENGTH_BYTES = 64;
    private static final int ROUNDS = 10;
    private static final int[] blake2s_IV = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};
    private static final byte[][] blake2s_sigma = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, c.f32106m, c.f32107n, c.f32108o, c.f32109p, c.f32110q}, new byte[]{c.f32109p, 10, 4, 8, 9, c.f32110q, c.f32108o, 6, 1, c.f32107n, 0, 2, c.f32106m, 7, 5, 3}, new byte[]{c.f32106m, 8, c.f32107n, 0, 5, 2, c.f32110q, c.f32108o, 10, c.f32109p, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, c.f32108o, c.f32107n, c.f32106m, c.f32109p, 2, 6, 5, 10, 4, 0, c.f32110q, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, c.f32110q, c.f32109p, 1, c.f32106m, c.f32107n, 6, 8, 3, c.f32108o}, new byte[]{2, c.f32107n, 6, 10, 0, c.f32106m, 8, 3, 4, c.f32108o, 7, 5, c.f32110q, c.f32109p, 1, 9}, new byte[]{c.f32107n, 5, 1, c.f32110q, c.f32109p, c.f32108o, 4, 10, 0, 7, 6, 3, 9, 2, 8, c.f32106m}, new byte[]{c.f32108o, c.f32106m, 7, c.f32109p, c.f32107n, 1, 3, 9, 5, 0, c.f32110q, 4, 8, 6, 2, 10}, new byte[]{6, c.f32110q, c.f32109p, 9, c.f32106m, 3, 0, 8, c.f32107n, 2, c.f32108o, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, c.f32110q, c.f32106m, 9, c.f32109p, 3, c.f32107n, c.f32108o, 0}};
    private byte[] buffer;
    private int bufferPos;
    private int[] chainValue;
    private int depth;
    private int digestLength;

    /* renamed from: f0  reason: collision with root package name */
    private int f91192f0;
    private int fanout;
    private int innerHashLength;
    private int[] internalState;
    private byte[] key;
    private int keyLength;
    private int leafLength;
    private int nodeDepth;
    private long nodeOffset;
    private byte[] personalization;
    private byte[] salt;

    /* renamed from: t0  reason: collision with root package name */
    private int f91193t0;

    /* renamed from: t1  reason: collision with root package name */
    private int f91194t1;

    public Blake2sDigest() {
        this(256);
    }

    public Blake2sDigest(int i4) {
        this.digestLength = 32;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        if (i4 < 8 || i4 > 256 || i4 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2s digest bit length must be a multiple of 8 and not greater than 256");
        }
        this.digestLength = i4 / 8;
        init(null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Blake2sDigest(int i4, int i10, long j4) {
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        this.digestLength = i4;
        this.nodeOffset = j4;
        this.fanout = 0;
        this.depth = 0;
        this.leafLength = i10;
        this.innerHashLength = i10;
        this.nodeDepth = 0;
        init(null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Blake2sDigest(int i4, byte[] bArr, byte[] bArr2, byte[] bArr3, long j4) {
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        this.digestLength = i4;
        this.nodeOffset = j4;
        init(bArr2, bArr3, bArr);
    }

    public Blake2sDigest(Blake2sDigest blake2sDigest) {
        this.digestLength = 32;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        this.bufferPos = blake2sDigest.bufferPos;
        this.buffer = Arrays.clone(blake2sDigest.buffer);
        this.keyLength = blake2sDigest.keyLength;
        this.key = Arrays.clone(blake2sDigest.key);
        this.digestLength = blake2sDigest.digestLength;
        this.internalState = Arrays.clone(this.internalState);
        this.chainValue = Arrays.clone(blake2sDigest.chainValue);
        this.f91193t0 = blake2sDigest.f91193t0;
        this.f91194t1 = blake2sDigest.f91194t1;
        this.f91192f0 = blake2sDigest.f91192f0;
        this.salt = Arrays.clone(blake2sDigest.salt);
        this.personalization = Arrays.clone(blake2sDigest.personalization);
        this.fanout = blake2sDigest.fanout;
        this.depth = blake2sDigest.depth;
        this.leafLength = blake2sDigest.leafLength;
        this.nodeOffset = blake2sDigest.nodeOffset;
        this.nodeDepth = blake2sDigest.nodeDepth;
        this.innerHashLength = blake2sDigest.innerHashLength;
    }

    public Blake2sDigest(byte[] bArr) {
        this.digestLength = 32;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        init(null, null, bArr);
    }

    public Blake2sDigest(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3) {
        this.digestLength = 32;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.f91192f0 = 0;
        if (i4 < 1 || i4 > 32) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 32)");
        }
        this.digestLength = i4;
        init(bArr2, bArr3, bArr);
    }

    private void G(int i4, int i10, int i11, int i12, int i13, int i14) {
        int[] iArr = this.internalState;
        iArr[i11] = iArr[i11] + iArr[i12] + i4;
        iArr[i14] = rotr32(iArr[i14] ^ iArr[i11], 16);
        int[] iArr2 = this.internalState;
        iArr2[i13] = iArr2[i13] + iArr2[i14];
        iArr2[i12] = rotr32(iArr2[i12] ^ iArr2[i13], 12);
        int[] iArr3 = this.internalState;
        iArr3[i11] = iArr3[i11] + iArr3[i12] + i10;
        iArr3[i14] = rotr32(iArr3[i14] ^ iArr3[i11], 8);
        int[] iArr4 = this.internalState;
        iArr4[i13] = iArr4[i13] + iArr4[i14];
        iArr4[i12] = rotr32(iArr4[i12] ^ iArr4[i13], 7);
    }

    private void compress(byte[] bArr, int i4) {
        initializeInternalState();
        int[] iArr = new int[16];
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            iArr[i11] = Pack.littleEndianToInt(bArr, (i11 * 4) + i4);
        }
        for (int i12 = 0; i12 < 10; i12++) {
            byte[][] bArr2 = blake2s_sigma;
            G(iArr[bArr2[i12][0]], iArr[bArr2[i12][1]], 0, 4, 8, 12);
            G(iArr[bArr2[i12][2]], iArr[bArr2[i12][3]], 1, 5, 9, 13);
            G(iArr[bArr2[i12][4]], iArr[bArr2[i12][5]], 2, 6, 10, 14);
            G(iArr[bArr2[i12][6]], iArr[bArr2[i12][7]], 3, 7, 11, 15);
            G(iArr[bArr2[i12][8]], iArr[bArr2[i12][9]], 0, 5, 10, 15);
            G(iArr[bArr2[i12][10]], iArr[bArr2[i12][11]], 1, 6, 11, 12);
            G(iArr[bArr2[i12][12]], iArr[bArr2[i12][13]], 2, 7, 8, 13);
            G(iArr[bArr2[i12][14]], iArr[bArr2[i12][15]], 3, 4, 9, 14);
        }
        while (true) {
            int[] iArr2 = this.chainValue;
            if (i10 >= iArr2.length) {
                return;
            }
            int i13 = iArr2[i10];
            int[] iArr3 = this.internalState;
            iArr2[i10] = (i13 ^ iArr3[i10]) ^ iArr3[i10 + 8];
            i10++;
        }
    }

    private void init(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.buffer = new byte[64];
        if (bArr3 != null && bArr3.length > 0) {
            if (bArr3.length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            byte[] bArr4 = new byte[bArr3.length];
            this.key = bArr4;
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            this.keyLength = bArr3.length;
            System.arraycopy(bArr3, 0, this.buffer, 0, bArr3.length);
            this.bufferPos = 64;
        }
        if (this.chainValue == null) {
            this.chainValue = r0;
            int[] iArr = blake2s_IV;
            long j4 = this.nodeOffset;
            int[] iArr2 = {iArr[0] ^ ((this.digestLength | (this.keyLength << 8)) | ((this.fanout << 16) | (this.depth << 24))), iArr[1] ^ this.leafLength, ((int) j4) ^ iArr[2], ((((int) (j4 >> 32)) | (this.nodeDepth << 16)) | (this.innerHashLength << 24)) ^ iArr[3], iArr[4], iArr[5]};
            if (bArr != null) {
                if (bArr.length != 8) {
                    throw new IllegalArgumentException("Salt length must be exactly 8 bytes");
                }
                byte[] bArr5 = new byte[8];
                this.salt = bArr5;
                System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
                int[] iArr3 = this.chainValue;
                iArr3[4] = iArr3[4] ^ Pack.littleEndianToInt(bArr, 0);
                int[] iArr4 = this.chainValue;
                iArr4[5] = Pack.littleEndianToInt(bArr, 4) ^ iArr4[5];
            }
            int[] iArr5 = this.chainValue;
            iArr5[6] = iArr[6];
            iArr5[7] = iArr[7];
            if (bArr2 != null) {
                if (bArr2.length != 8) {
                    throw new IllegalArgumentException("Personalization length must be exactly 8 bytes");
                }
                byte[] bArr6 = new byte[8];
                this.personalization = bArr6;
                System.arraycopy(bArr2, 0, bArr6, 0, bArr2.length);
                int[] iArr6 = this.chainValue;
                iArr6[6] = iArr6[6] ^ Pack.littleEndianToInt(bArr2, 0);
                int[] iArr7 = this.chainValue;
                iArr7[7] = Pack.littleEndianToInt(bArr2, 4) ^ iArr7[7];
            }
        }
    }

    private void initializeInternalState() {
        int[] iArr = this.chainValue;
        System.arraycopy(iArr, 0, this.internalState, 0, iArr.length);
        int[] iArr2 = blake2s_IV;
        System.arraycopy(iArr2, 0, this.internalState, this.chainValue.length, 4);
        int[] iArr3 = this.internalState;
        iArr3[12] = this.f91193t0 ^ iArr2[4];
        iArr3[13] = this.f91194t1 ^ iArr2[5];
        iArr3[14] = this.f91192f0 ^ iArr2[6];
        iArr3[15] = iArr2[7];
    }

    private int rotr32(int i4, int i10) {
        return (i4 << (32 - i10)) | (i4 >>> i10);
    }

    public void clearKey() {
        byte[] bArr = this.key;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
            Arrays.fill(this.buffer, (byte) 0);
        }
    }

    public void clearSalt() {
        byte[] bArr = this.salt;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        int[] iArr;
        int i10;
        this.f91192f0 = -1;
        int i11 = this.f91193t0;
        int i12 = this.bufferPos;
        int i13 = i11 + i12;
        this.f91193t0 = i13;
        if (i13 < 0 && i12 > (-i13)) {
            this.f91194t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.internalState, 0);
        int i14 = 0;
        while (true) {
            iArr = this.chainValue;
            if (i14 >= iArr.length || (i10 = i14 * 4) >= this.digestLength) {
                break;
            }
            byte[] intToLittleEndian = Pack.intToLittleEndian(iArr[i14]);
            int i15 = this.digestLength;
            if (i10 < i15 - 4) {
                System.arraycopy(intToLittleEndian, 0, bArr, i10 + i4, 4);
            } else {
                System.arraycopy(intToLittleEndian, 0, bArr, i4 + i10, i15 - i10);
            }
            i14++;
        }
        Arrays.fill(iArr, 0);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2s";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.f91192f0 = 0;
        this.f91193t0 = 0;
        this.f91194t1 = 0;
        this.chainValue = null;
        Arrays.fill(this.buffer, (byte) 0);
        byte[] bArr = this.key;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 64;
        }
        init(this.salt, this.personalization, this.key);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int i4 = this.bufferPos;
        if (64 - i4 != 0) {
            this.buffer[i4] = b10;
            this.bufferPos = i4 + 1;
            return;
        }
        int i10 = this.f91193t0 + 64;
        this.f91193t0 = i10;
        if (i10 == 0) {
            this.f91194t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        this.buffer[0] = b10;
        this.bufferPos = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        int i11;
        if (bArr == null || i10 == 0) {
            return;
        }
        int i12 = this.bufferPos;
        if (i12 != 0) {
            i11 = 64 - i12;
            if (i11 >= i10) {
                System.arraycopy(bArr, i4, this.buffer, i12, i10);
                this.bufferPos += i10;
            }
            System.arraycopy(bArr, i4, this.buffer, i12, i11);
            int i13 = this.f91193t0 + 64;
            this.f91193t0 = i13;
            if (i13 == 0) {
                this.f91194t1++;
            }
            compress(this.buffer, 0);
            this.bufferPos = 0;
            Arrays.fill(this.buffer, (byte) 0);
        } else {
            i11 = 0;
        }
        int i14 = i10 + i4;
        int i15 = i14 - 64;
        int i16 = i4 + i11;
        while (i16 < i15) {
            int i17 = this.f91193t0 + 64;
            this.f91193t0 = i17;
            if (i17 == 0) {
                this.f91194t1++;
            }
            compress(bArr, i16);
            i16 += 64;
        }
        i10 = i14 - i16;
        System.arraycopy(bArr, i16, this.buffer, 0, i10);
        this.bufferPos += i10;
    }
}
