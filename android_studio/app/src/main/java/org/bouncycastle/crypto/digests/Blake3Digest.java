package org.bouncycastle.crypto.digests;

import com.google.common.base.c;
import java.util.Iterator;
import java.util.Stack;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.params.Blake3Parameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Blake3Digest implements ExtendedDigest, Memoable, Xof {
    private static final int BLOCKLEN = 64;
    private static final int CHAINING0 = 0;
    private static final int CHAINING1 = 1;
    private static final int CHAINING2 = 2;
    private static final int CHAINING3 = 3;
    private static final int CHAINING4 = 4;
    private static final int CHAINING5 = 5;
    private static final int CHAINING6 = 6;
    private static final int CHAINING7 = 7;
    private static final int CHUNKEND = 2;
    private static final int CHUNKLEN = 1024;
    private static final int CHUNKSTART = 1;
    private static final int COUNT0 = 12;
    private static final int COUNT1 = 13;
    private static final int DATALEN = 14;
    private static final int DERIVECONTEXT = 32;
    private static final int DERIVEKEY = 64;
    private static final String ERR_OUTPUTTING = "Already outputting";
    private static final int FLAGS = 15;
    private static final int IV0 = 8;
    private static final int IV1 = 9;
    private static final int IV2 = 10;
    private static final int IV3 = 11;
    private static final int KEYEDHASH = 16;
    private static final int NUMWORDS = 8;
    private static final int PARENT = 4;
    private static final int ROOT = 8;
    private static final int ROUNDS = 7;
    private long outputAvailable;
    private boolean outputting;
    private final byte[] theBuffer;
    private final int[] theChaining;
    private long theCounter;
    private int theCurrBytes;
    private final int theDigestLen;
    private final byte[] theIndices;
    private final int[] theK;
    private final int[] theM;
    private int theMode;
    private int theOutputDataLen;
    private int theOutputMode;
    private int thePos;
    private final Stack theStack;
    private final int[] theV;
    private static final byte[] SIGMA = {2, 6, 3, 10, 7, 0, 4, c.f32108o, 1, c.f32106m, c.f32107n, 5, 9, c.f32109p, c.f32110q, 8};
    private static final byte[] ROTATE = {16, c.f32107n, 8, 7};
    private static final int[] IV = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};

    public Blake3Digest() {
        this(32);
    }

    public Blake3Digest(int i4) {
        this.theBuffer = new byte[64];
        this.theK = new int[8];
        this.theChaining = new int[8];
        this.theV = new int[16];
        this.theM = new int[16];
        this.theIndices = new byte[16];
        this.theStack = new Stack();
        this.theDigestLen = i4;
        init(null);
    }

    private Blake3Digest(Blake3Digest blake3Digest) {
        this.theBuffer = new byte[64];
        this.theK = new int[8];
        this.theChaining = new int[8];
        this.theV = new int[16];
        this.theM = new int[16];
        this.theIndices = new byte[16];
        this.theStack = new Stack();
        this.theDigestLen = blake3Digest.theDigestLen;
        reset(blake3Digest);
    }

    private void adjustChaining() {
        if (!this.outputting) {
            for (int i4 = 0; i4 < 8; i4++) {
                int[] iArr = this.theChaining;
                int[] iArr2 = this.theV;
                iArr[i4] = iArr2[i4 + 8] ^ iArr2[i4];
            }
            return;
        }
        for (int i10 = 0; i10 < 8; i10++) {
            int[] iArr3 = this.theV;
            int i11 = i10 + 8;
            iArr3[i10] = iArr3[i10] ^ iArr3[i11];
            iArr3[i11] = iArr3[i11] ^ this.theChaining[i10];
        }
        for (int i12 = 0; i12 < 16; i12++) {
            Pack.intToLittleEndian(this.theV[i12], this.theBuffer, i12 * 4);
        }
        this.thePos = 0;
    }

    private void adjustStack() {
        for (long j4 = this.theCounter; j4 > 0 && (j4 & 1) != 1; j4 >>= 1) {
            System.arraycopy((int[]) this.theStack.pop(), 0, this.theM, 0, 8);
            System.arraycopy(this.theChaining, 0, this.theM, 8, 8);
            initParentBlock();
            compress();
        }
        this.theStack.push(Arrays.copyOf(this.theChaining, 8));
    }

    private void compress() {
        initIndices();
        int i4 = 0;
        while (true) {
            performRound();
            if (i4 >= 6) {
                adjustChaining();
                return;
            } else {
                permuteIndices();
                i4++;
            }
        }
    }

    private void compressBlock(byte[] bArr, int i4) {
        initChunkBlock(64, false);
        initM(bArr, i4);
        compress();
        if (this.theCurrBytes == 0) {
            adjustStack();
        }
    }

    private void compressFinalBlock(int i4) {
        initChunkBlock(i4, true);
        initM(this.theBuffer, 0);
        compress();
        processStack();
    }

    private void incrementBlockCount() {
        this.theCounter++;
        this.theCurrBytes = 0;
    }

    private void initChunkBlock(int i4, boolean z9) {
        System.arraycopy(this.theCurrBytes == 0 ? this.theK : this.theChaining, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] iArr = this.theV;
        long j4 = this.theCounter;
        iArr[12] = (int) j4;
        iArr[13] = (int) (j4 >> 32);
        iArr[14] = i4;
        int i10 = this.theMode;
        int i11 = this.theCurrBytes;
        iArr[15] = i10 + (i11 == 0 ? 1 : 0) + (z9 ? 2 : 0);
        int i12 = i11 + i4;
        this.theCurrBytes = i12;
        if (i12 >= 1024) {
            incrementBlockCount();
            int[] iArr2 = this.theV;
            iArr2[15] = iArr2[15] | 2;
        }
        if (z9 && this.theStack.isEmpty()) {
            setRoot();
        }
    }

    private void initIndices() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.theIndices;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = b10;
            b10 = (byte) (b10 + 1);
        }
    }

    private void initKey(byte[] bArr) {
        for (int i4 = 0; i4 < 8; i4++) {
            this.theK[i4] = Pack.littleEndianToInt(bArr, i4 * 4);
        }
        this.theMode = 16;
    }

    private void initKeyFromContext() {
        System.arraycopy(this.theV, 0, this.theK, 0, 8);
        this.theMode = 64;
    }

    private void initM(byte[] bArr, int i4) {
        for (int i10 = 0; i10 < 16; i10++) {
            this.theM[i10] = Pack.littleEndianToInt(bArr, (i10 * 4) + i4);
        }
    }

    private void initNullKey() {
        System.arraycopy(IV, 0, this.theK, 0, 8);
    }

    private void initParentBlock() {
        System.arraycopy(this.theK, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] iArr = this.theV;
        iArr[12] = 0;
        iArr[13] = 0;
        iArr[14] = 64;
        iArr[15] = this.theMode | 4;
    }

    private void mixG(int i4, int i10, int i11, int i12, int i13) {
        int i14 = i4 << 1;
        int[] iArr = this.theV;
        int i15 = i14 + 1;
        iArr[i10] = iArr[i10] + iArr[i11] + this.theM[this.theIndices[i14]];
        int i16 = iArr[i13] ^ iArr[i10];
        byte[] bArr = ROTATE;
        iArr[i13] = Integers.rotateRight(i16, bArr[0]);
        int[] iArr2 = this.theV;
        iArr2[i12] = iArr2[i12] + iArr2[i13];
        iArr2[i11] = Integers.rotateRight(iArr2[i11] ^ iArr2[i12], bArr[1]);
        int[] iArr3 = this.theV;
        iArr3[i10] = iArr3[i10] + iArr3[i11] + this.theM[this.theIndices[i15]];
        iArr3[i13] = Integers.rotateRight(iArr3[i10] ^ iArr3[i13], bArr[2]);
        int[] iArr4 = this.theV;
        iArr4[i12] = iArr4[i12] + iArr4[i13];
        iArr4[i11] = Integers.rotateRight(iArr4[i11] ^ iArr4[i12], bArr[3]);
    }

    private void nextOutputBlock() {
        this.theCounter++;
        System.arraycopy(this.theChaining, 0, this.theV, 0, 8);
        System.arraycopy(IV, 0, this.theV, 8, 4);
        int[] iArr = this.theV;
        long j4 = this.theCounter;
        iArr[12] = (int) j4;
        iArr[13] = (int) (j4 >> 32);
        iArr[14] = this.theOutputDataLen;
        iArr[15] = this.theOutputMode;
        compress();
    }

    private void performRound() {
        mixG(0, 0, 4, 8, 12);
        mixG(1, 1, 5, 9, 13);
        mixG(2, 2, 6, 10, 14);
        mixG(3, 3, 7, 11, 15);
        mixG(4, 0, 5, 10, 15);
        mixG(5, 1, 6, 11, 12);
        mixG(6, 2, 7, 8, 13);
        mixG(7, 3, 4, 9, 14);
    }

    private void permuteIndices() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.theIndices;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = SIGMA[bArr[b10]];
            b10 = (byte) (b10 + 1);
        }
    }

    private void processStack() {
        while (!this.theStack.isEmpty()) {
            System.arraycopy((int[]) this.theStack.pop(), 0, this.theM, 0, 8);
            System.arraycopy(this.theChaining, 0, this.theM, 8, 8);
            initParentBlock();
            if (this.theStack.isEmpty()) {
                setRoot();
            }
            compress();
        }
    }

    private void resetBlockCount() {
        this.theCounter = 0L;
        this.theCurrBytes = 0;
    }

    private void setRoot() {
        int[] iArr = this.theV;
        iArr[15] = iArr[15] | 8;
        this.theOutputMode = iArr[15];
        this.theOutputDataLen = iArr[14];
        this.theCounter = 0L;
        this.outputting = true;
        this.outputAvailable = -1L;
        System.arraycopy(iArr, 0, this.theChaining, 0, 8);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new Blake3Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        return doFinal(bArr, i4, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i4, int i10) {
        if (this.outputting) {
            throw new IllegalStateException(ERR_OUTPUTTING);
        }
        int doOutput = doOutput(bArr, i4, i10);
        reset();
        return doOutput;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int i4, int i10) {
        int i11;
        if (!this.outputting) {
            compressFinalBlock(this.thePos);
        }
        if (i10 >= 0) {
            long j4 = this.outputAvailable;
            if (j4 < 0 || i10 <= j4) {
                int i12 = this.thePos;
                if (i12 < 64) {
                    int min = Math.min(i10, 64 - i12);
                    System.arraycopy(this.theBuffer, this.thePos, bArr, i4, min);
                    this.thePos += min;
                    i4 += min;
                    i11 = i10 - min;
                } else {
                    i11 = i10;
                }
                while (i11 > 0) {
                    nextOutputBlock();
                    int min2 = Math.min(i11, 64);
                    System.arraycopy(this.theBuffer, 0, bArr, i4, min2);
                    this.thePos += min2;
                    i4 += min2;
                    i11 -= min2;
                }
                this.outputAvailable -= i10;
                return i10;
            }
        }
        throw new IllegalArgumentException("Insufficient bytes remaining");
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE3";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.theDigestLen;
    }

    public void init(Blake3Parameters blake3Parameters) {
        byte[] key = blake3Parameters == null ? null : blake3Parameters.getKey();
        byte[] context = blake3Parameters != null ? blake3Parameters.getContext() : null;
        reset();
        if (key != null) {
            initKey(key);
            Arrays.fill(key, (byte) 0);
            return;
        }
        initNullKey();
        if (context == null) {
            this.theMode = 0;
            return;
        }
        this.theMode = 32;
        update(context, 0, context.length);
        doFinal(this.theBuffer, 0);
        initKeyFromContext();
        reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        resetBlockCount();
        this.thePos = 0;
        this.outputting = false;
        Arrays.fill(this.theBuffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        Blake3Digest blake3Digest = (Blake3Digest) memoable;
        this.theCounter = blake3Digest.theCounter;
        this.theCurrBytes = blake3Digest.theCurrBytes;
        this.theMode = blake3Digest.theMode;
        this.outputting = blake3Digest.outputting;
        this.outputAvailable = blake3Digest.outputAvailable;
        this.theOutputMode = blake3Digest.theOutputMode;
        this.theOutputDataLen = blake3Digest.theOutputDataLen;
        int[] iArr = blake3Digest.theChaining;
        int[] iArr2 = this.theChaining;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = blake3Digest.theK;
        int[] iArr4 = this.theK;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = blake3Digest.theM;
        int[] iArr6 = this.theM;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        this.theStack.clear();
        Iterator it = blake3Digest.theStack.iterator();
        while (it.hasNext()) {
            this.theStack.push(Arrays.clone((int[]) it.next()));
        }
        byte[] bArr = blake3Digest.theBuffer;
        byte[] bArr2 = this.theBuffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.thePos = blake3Digest.thePos;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        if (this.outputting) {
            throw new IllegalStateException(ERR_OUTPUTTING);
        }
        byte[] bArr = this.theBuffer;
        if (bArr.length - this.thePos == 0) {
            compressBlock(bArr, 0);
            Arrays.fill(this.theBuffer, (byte) 0);
            this.thePos = 0;
        }
        byte[] bArr2 = this.theBuffer;
        int i4 = this.thePos;
        bArr2[i4] = b10;
        this.thePos = i4 + 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        int i11;
        int i12;
        if (bArr == null || i10 == 0) {
            return;
        }
        if (this.outputting) {
            throw new IllegalStateException(ERR_OUTPUTTING);
        }
        int i13 = this.thePos;
        if (i13 != 0) {
            i11 = 64 - i13;
            if (i11 >= i10) {
                System.arraycopy(bArr, i4, this.theBuffer, i13, i10);
                i12 = this.thePos + i10;
                this.thePos = i12;
            }
            System.arraycopy(bArr, i4, this.theBuffer, i13, i11);
            compressBlock(this.theBuffer, 0);
            this.thePos = 0;
            Arrays.fill(this.theBuffer, (byte) 0);
        } else {
            i11 = 0;
        }
        int i14 = (i4 + i10) - 64;
        int i15 = i11 + i4;
        while (i15 < i14) {
            compressBlock(bArr, i15);
            i15 += 64;
        }
        int i16 = i4 + (i10 - i15);
        System.arraycopy(bArr, i15, this.theBuffer, 0, i16);
        i12 = this.thePos + i16;
        this.thePos = i12;
    }
}
