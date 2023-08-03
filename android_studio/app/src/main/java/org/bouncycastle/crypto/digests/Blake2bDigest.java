package org.bouncycastle.crypto.digests;

import com.google.common.base.c;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Blake2bDigest implements ExtendedDigest {
    private static final int BLOCK_LENGTH_BYTES = 128;
    private byte[] buffer;
    private int bufferPos;
    private long[] chainValue;
    private int digestLength;

    /* renamed from: f0  reason: collision with root package name */
    private long f91189f0;
    private long[] internalState;
    private byte[] key;
    private int keyLength;
    private byte[] personalization;
    private byte[] salt;

    /* renamed from: t0  reason: collision with root package name */
    private long f91190t0;

    /* renamed from: t1  reason: collision with root package name */
    private long f91191t1;
    private static final long[] blake2b_IV = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};
    private static final byte[][] blake2b_sigma = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, c.f32106m, c.f32107n, c.f32108o, c.f32109p, c.f32110q}, new byte[]{c.f32109p, 10, 4, 8, 9, c.f32110q, c.f32108o, 6, 1, c.f32107n, 0, 2, c.f32106m, 7, 5, 3}, new byte[]{c.f32106m, 8, c.f32107n, 0, 5, 2, c.f32110q, c.f32108o, 10, c.f32109p, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, c.f32108o, c.f32107n, c.f32106m, c.f32109p, 2, 6, 5, 10, 4, 0, c.f32110q, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, c.f32110q, c.f32109p, 1, c.f32106m, c.f32107n, 6, 8, 3, c.f32108o}, new byte[]{2, c.f32107n, 6, 10, 0, c.f32106m, 8, 3, 4, c.f32108o, 7, 5, c.f32110q, c.f32109p, 1, 9}, new byte[]{c.f32107n, 5, 1, c.f32110q, c.f32109p, c.f32108o, 4, 10, 0, 7, 6, 3, 9, 2, 8, c.f32106m}, new byte[]{c.f32108o, c.f32106m, 7, c.f32109p, c.f32107n, 1, 3, 9, 5, 0, c.f32110q, 4, 8, 6, 2, 10}, new byte[]{6, c.f32110q, c.f32109p, 9, c.f32106m, 3, 0, 8, c.f32107n, 2, c.f32108o, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, c.f32110q, c.f32106m, 9, c.f32109p, 3, c.f32107n, c.f32108o, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, c.f32106m, c.f32107n, c.f32108o, c.f32109p, c.f32110q}, new byte[]{c.f32109p, 10, 4, 8, 9, c.f32110q, c.f32108o, 6, 1, c.f32107n, 0, 2, c.f32106m, 7, 5, 3}};
    private static int ROUNDS = 12;

    public Blake2bDigest() {
        this(512);
    }

    public Blake2bDigest(int i4) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f91190t0 = 0L;
        this.f91191t1 = 0L;
        this.f91189f0 = 0L;
        if (i4 < 8 || i4 > 512 || i4 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2b digest bit length must be a multiple of 8 and not greater than 512");
        }
        this.buffer = new byte[128];
        this.keyLength = 0;
        this.digestLength = i4 / 8;
        init();
    }

    public Blake2bDigest(Blake2bDigest blake2bDigest) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f91190t0 = 0L;
        this.f91191t1 = 0L;
        this.f91189f0 = 0L;
        this.bufferPos = blake2bDigest.bufferPos;
        this.buffer = Arrays.clone(blake2bDigest.buffer);
        this.keyLength = blake2bDigest.keyLength;
        this.key = Arrays.clone(blake2bDigest.key);
        this.digestLength = blake2bDigest.digestLength;
        this.chainValue = Arrays.clone(blake2bDigest.chainValue);
        this.personalization = Arrays.clone(blake2bDigest.personalization);
        this.salt = Arrays.clone(blake2bDigest.salt);
        this.f91190t0 = blake2bDigest.f91190t0;
        this.f91191t1 = blake2bDigest.f91191t1;
        this.f91189f0 = blake2bDigest.f91189f0;
    }

    public Blake2bDigest(byte[] bArr) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f91190t0 = 0L;
        this.f91191t1 = 0L;
        this.f91189f0 = 0L;
        this.buffer = new byte[128];
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.key = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        this.digestLength = 64;
        init();
    }

    public Blake2bDigest(byte[] bArr, int i4, byte[] bArr2, byte[] bArr3) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f91190t0 = 0L;
        this.f91191t1 = 0L;
        this.f91189f0 = 0L;
        this.buffer = new byte[128];
        if (i4 < 1 || i4 > 64) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 64)");
        }
        this.digestLength = i4;
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("salt length must be exactly 16 bytes");
            }
            byte[] bArr4 = new byte[16];
            this.salt = bArr4;
            System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 16) {
                throw new IllegalArgumentException("personalization length must be exactly 16 bytes");
            }
            byte[] bArr5 = new byte[16];
            this.personalization = bArr5;
            System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        }
        if (bArr != null) {
            byte[] bArr6 = new byte[bArr.length];
            this.key = bArr6;
            System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        init();
    }

    private void G(long j4, long j10, int i4, int i10, int i11, int i12) {
        long[] jArr = this.internalState;
        jArr[i4] = jArr[i4] + jArr[i10] + j4;
        jArr[i12] = Longs.rotateRight(jArr[i12] ^ jArr[i4], 32);
        long[] jArr2 = this.internalState;
        jArr2[i11] = jArr2[i11] + jArr2[i12];
        jArr2[i10] = Longs.rotateRight(jArr2[i10] ^ jArr2[i11], 24);
        long[] jArr3 = this.internalState;
        jArr3[i4] = jArr3[i4] + jArr3[i10] + j10;
        jArr3[i12] = Longs.rotateRight(jArr3[i12] ^ jArr3[i4], 16);
        long[] jArr4 = this.internalState;
        jArr4[i11] = jArr4[i11] + jArr4[i12];
        jArr4[i10] = Longs.rotateRight(jArr4[i10] ^ jArr4[i11], 63);
    }

    private void compress(byte[] bArr, int i4) {
        initializeInternalState();
        long[] jArr = new long[16];
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            jArr[i11] = Pack.littleEndianToLong(bArr, (i11 * 8) + i4);
        }
        for (int i12 = 0; i12 < ROUNDS; i12++) {
            byte[][] bArr2 = blake2b_sigma;
            G(jArr[bArr2[i12][0]], jArr[bArr2[i12][1]], 0, 4, 8, 12);
            G(jArr[bArr2[i12][2]], jArr[bArr2[i12][3]], 1, 5, 9, 13);
            G(jArr[bArr2[i12][4]], jArr[bArr2[i12][5]], 2, 6, 10, 14);
            G(jArr[bArr2[i12][6]], jArr[bArr2[i12][7]], 3, 7, 11, 15);
            G(jArr[bArr2[i12][8]], jArr[bArr2[i12][9]], 0, 5, 10, 15);
            G(jArr[bArr2[i12][10]], jArr[bArr2[i12][11]], 1, 6, 11, 12);
            G(jArr[bArr2[i12][12]], jArr[bArr2[i12][13]], 2, 7, 8, 13);
            G(jArr[bArr2[i12][14]], jArr[bArr2[i12][15]], 3, 4, 9, 14);
        }
        while (true) {
            long[] jArr2 = this.chainValue;
            if (i10 >= jArr2.length) {
                return;
            }
            long j4 = jArr2[i10];
            long[] jArr3 = this.internalState;
            jArr2[i10] = (j4 ^ jArr3[i10]) ^ jArr3[i10 + 8];
            i10++;
        }
    }

    private void init() {
        if (this.chainValue == null) {
            this.chainValue = r1;
            long[] jArr = blake2b_IV;
            long[] jArr2 = {jArr[0] ^ ((this.digestLength | (this.keyLength << 8)) | 16842752), jArr[1], jArr[2], jArr[3], jArr[4], jArr[5]};
            byte[] bArr = this.salt;
            if (bArr != null) {
                jArr2[4] = jArr2[4] ^ Pack.littleEndianToLong(bArr, 0);
                long[] jArr3 = this.chainValue;
                jArr3[5] = jArr3[5] ^ Pack.littleEndianToLong(this.salt, 8);
            }
            long[] jArr4 = this.chainValue;
            jArr4[6] = jArr[6];
            jArr4[7] = jArr[7];
            byte[] bArr2 = this.personalization;
            if (bArr2 != null) {
                jArr4[6] = Pack.littleEndianToLong(bArr2, 0) ^ jArr4[6];
                long[] jArr5 = this.chainValue;
                jArr5[7] = jArr5[7] ^ Pack.littleEndianToLong(this.personalization, 8);
            }
        }
    }

    private void initializeInternalState() {
        long[] jArr = this.chainValue;
        System.arraycopy(jArr, 0, this.internalState, 0, jArr.length);
        long[] jArr2 = blake2b_IV;
        System.arraycopy(jArr2, 0, this.internalState, this.chainValue.length, 4);
        long[] jArr3 = this.internalState;
        jArr3[12] = this.f91190t0 ^ jArr2[4];
        jArr3[13] = this.f91191t1 ^ jArr2[5];
        jArr3[14] = this.f91189f0 ^ jArr2[6];
        jArr3[15] = jArr2[7];
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
        long[] jArr;
        int i10;
        this.f91189f0 = -1L;
        long j4 = this.f91190t0;
        int i11 = this.bufferPos;
        long j10 = j4 + i11;
        this.f91190t0 = j10;
        if (i11 > 0 && j10 == 0) {
            this.f91191t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.internalState, 0L);
        int i12 = 0;
        while (true) {
            jArr = this.chainValue;
            if (i12 >= jArr.length || (i10 = i12 * 8) >= this.digestLength) {
                break;
            }
            byte[] longToLittleEndian = Pack.longToLittleEndian(jArr[i12]);
            int i13 = this.digestLength;
            if (i10 < i13 - 8) {
                System.arraycopy(longToLittleEndian, 0, bArr, i10 + i4, 8);
            } else {
                System.arraycopy(longToLittleEndian, 0, bArr, i4 + i10, i13 - i10);
            }
            i12++;
        }
        Arrays.fill(jArr, 0L);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2b";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.f91189f0 = 0L;
        this.f91190t0 = 0L;
        this.f91191t1 = 0L;
        this.chainValue = null;
        Arrays.fill(this.buffer, (byte) 0);
        byte[] bArr = this.key;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        init();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int i4 = this.bufferPos;
        if (128 - i4 != 0) {
            this.buffer[i4] = b10;
            this.bufferPos = i4 + 1;
            return;
        }
        long j4 = this.f91190t0 + 128;
        this.f91190t0 = j4;
        if (j4 == 0) {
            this.f91191t1++;
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
            i11 = 128 - i12;
            if (i11 >= i10) {
                System.arraycopy(bArr, i4, this.buffer, i12, i10);
                this.bufferPos += i10;
            }
            System.arraycopy(bArr, i4, this.buffer, i12, i11);
            long j4 = this.f91190t0 + 128;
            this.f91190t0 = j4;
            if (j4 == 0) {
                this.f91191t1++;
            }
            compress(this.buffer, 0);
            this.bufferPos = 0;
            Arrays.fill(this.buffer, (byte) 0);
        } else {
            i11 = 0;
        }
        int i13 = i10 + i4;
        int i14 = i13 - 128;
        int i15 = i4 + i11;
        while (i15 < i14) {
            long j10 = this.f91190t0 + 128;
            this.f91190t0 = j10;
            if (j10 == 0) {
                this.f91191t1++;
            }
            compress(bArr, i15);
            i15 += 128;
        }
        i10 = i13 - i15;
        System.arraycopy(bArr, i15, this.buffer, 0, i10);
        this.bufferPos += i10;
    }
}
