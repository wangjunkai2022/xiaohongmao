package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class ParallelHash implements Xof, Digest {
    private static final byte[] N_PARALLEL_HASH = Strings.toByteArray("ParallelHash");
    private final int B;
    private final int bitLength;
    private int bufOff;
    private final byte[] buffer;
    private final CSHAKEDigest compressor;
    private final byte[] compressorBuffer;
    private final CSHAKEDigest cshake;
    private boolean firstOutput;
    private int nCount;
    private final int outputLength;

    public ParallelHash(int i4, byte[] bArr, int i10) {
        this(i4, bArr, i10, i4 * 2);
    }

    public ParallelHash(int i4, byte[] bArr, int i10, int i11) {
        this.cshake = new CSHAKEDigest(i4, N_PARALLEL_HASH, bArr);
        this.compressor = new CSHAKEDigest(i4, new byte[0], new byte[0]);
        this.bitLength = i4;
        this.B = i10;
        this.outputLength = (i11 + 7) / 8;
        this.buffer = new byte[i10];
        this.compressorBuffer = new byte[(i4 * 2) / 8];
        reset();
    }

    public ParallelHash(ParallelHash parallelHash) {
        this.cshake = new CSHAKEDigest(parallelHash.cshake);
        this.compressor = new CSHAKEDigest(parallelHash.compressor);
        this.bitLength = parallelHash.bitLength;
        this.B = parallelHash.B;
        this.outputLength = parallelHash.outputLength;
        this.buffer = Arrays.clone(parallelHash.buffer);
        this.compressorBuffer = Arrays.clone(parallelHash.compressorBuffer);
    }

    private void compress() {
        compress(this.buffer, 0, this.bufOff);
        this.bufOff = 0;
    }

    private void compress(byte[] bArr, int i4, int i10) {
        this.compressor.update(bArr, i4, i10);
        CSHAKEDigest cSHAKEDigest = this.compressor;
        byte[] bArr2 = this.compressorBuffer;
        cSHAKEDigest.doFinal(bArr2, 0, bArr2.length);
        CSHAKEDigest cSHAKEDigest2 = this.cshake;
        byte[] bArr3 = this.compressorBuffer;
        cSHAKEDigest2.update(bArr3, 0, bArr3.length);
        this.nCount++;
    }

    private void wrapUp(int i4) {
        if (this.bufOff != 0) {
            compress();
        }
        byte[] rightEncode = XofUtils.rightEncode(this.nCount);
        byte[] rightEncode2 = XofUtils.rightEncode(i4 * 8);
        this.cshake.update(rightEncode, 0, rightEncode.length);
        this.cshake.update(rightEncode2, 0, rightEncode2.length);
        this.firstOutput = false;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        if (this.firstOutput) {
            wrapUp(this.outputLength);
        }
        int doFinal = this.cshake.doFinal(bArr, i4, getDigestSize());
        reset();
        return doFinal;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i4, int i10) {
        if (this.firstOutput) {
            wrapUp(this.outputLength);
        }
        int doFinal = this.cshake.doFinal(bArr, i4, i10);
        reset();
        return doFinal;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int i4, int i10) {
        if (this.firstOutput) {
            wrapUp(0);
        }
        return this.cshake.doOutput(bArr, i4, i10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "ParallelHash" + this.cshake.getAlgorithmName().substring(6);
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.cshake.getByteLength();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.outputLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.cshake.reset();
        Arrays.clear(this.buffer);
        byte[] leftEncode = XofUtils.leftEncode(this.B);
        this.cshake.update(leftEncode, 0, leftEncode.length);
        this.nCount = 0;
        this.bufOff = 0;
        this.firstOutput = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.buffer;
        int i4 = this.bufOff;
        int i10 = i4 + 1;
        this.bufOff = i10;
        bArr[i4] = b10;
        if (i10 == bArr.length) {
            compress();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        int i11 = 0;
        int max = Math.max(0, i10);
        if (this.bufOff != 0) {
            while (i11 < max) {
                int i12 = this.bufOff;
                byte[] bArr2 = this.buffer;
                if (i12 == bArr2.length) {
                    break;
                }
                this.bufOff = i12 + 1;
                bArr2[i12] = bArr[i11 + i4];
                i11++;
            }
            if (this.bufOff == this.buffer.length) {
                compress();
            }
        }
        if (i11 < max) {
            while (true) {
                int i13 = max - i11;
                int i14 = this.B;
                if (i13 <= i14) {
                    break;
                }
                compress(bArr, i4 + i11, i14);
                i11 += this.B;
            }
        }
        while (i11 < max) {
            update(bArr[i11 + i4]);
            i11++;
        }
    }
}
