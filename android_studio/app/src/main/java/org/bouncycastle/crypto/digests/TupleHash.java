package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class TupleHash implements Xof, Digest {
    private static final byte[] N_TUPLE_HASH = Strings.toByteArray("TupleHash");
    private final int bitLength;
    private final CSHAKEDigest cshake;
    private boolean firstOutput;
    private final int outputLength;

    public TupleHash(int i4, byte[] bArr) {
        this(i4, bArr, i4 * 2);
    }

    public TupleHash(int i4, byte[] bArr, int i10) {
        this.cshake = new CSHAKEDigest(i4, N_TUPLE_HASH, bArr);
        this.bitLength = i4;
        this.outputLength = (i10 + 7) / 8;
        reset();
    }

    public TupleHash(TupleHash tupleHash) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(tupleHash.cshake);
        this.cshake = cSHAKEDigest;
        int i4 = cSHAKEDigest.fixedOutputLength;
        this.bitLength = i4;
        this.outputLength = (i4 * 2) / 8;
        this.firstOutput = tupleHash.firstOutput;
    }

    private void wrapUp(int i4) {
        byte[] rightEncode = XofUtils.rightEncode(i4 * 8);
        this.cshake.update(rightEncode, 0, rightEncode.length);
        this.firstOutput = false;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        if (this.firstOutput) {
            wrapUp(getDigestSize());
        }
        int doFinal = this.cshake.doFinal(bArr, i4, getDigestSize());
        reset();
        return doFinal;
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i4, int i10) {
        if (this.firstOutput) {
            wrapUp(getDigestSize());
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
        return "TupleHash" + this.cshake.getAlgorithmName().substring(6);
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
        this.firstOutput = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) throws IllegalStateException {
        byte[] encode = XofUtils.encode(b10);
        this.cshake.update(encode, 0, encode.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) throws DataLengthException, IllegalStateException {
        byte[] encode = XofUtils.encode(bArr, i4, i10);
        this.cshake.update(encode, 0, encode.length);
    }
}
