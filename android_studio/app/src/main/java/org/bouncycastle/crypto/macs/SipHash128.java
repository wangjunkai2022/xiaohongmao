package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SipHash128 extends SipHash {
    public SipHash128() {
    }

    public SipHash128(int i4, int i10) {
        super(i4, i10);
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i4) throws DataLengthException, IllegalStateException {
        int i10;
        this.f91277m = ((this.f91277m >>> ((7 - this.wordPos) << 3)) >>> 8) | ((((this.wordCount << 3) + i10) & 255) << 56);
        processMessageWord();
        this.f91280v2 ^= 238;
        applySipRounds(this.f91274d);
        long j4 = this.f91278v0;
        long j10 = this.f91279v1;
        long j11 = ((j4 ^ j10) ^ this.f91280v2) ^ this.f91281v3;
        this.f91279v1 = j10 ^ 221;
        applySipRounds(this.f91274d);
        reset();
        Pack.longToLittleEndian(j11, bArr, i4);
        Pack.longToLittleEndian(((this.f91278v0 ^ this.f91279v1) ^ this.f91280v2) ^ this.f91281v3, bArr, i4 + 8);
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash
    public long doFinal() throws DataLengthException, IllegalStateException {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash128-" + this.f91273c + "-" + this.f91274d;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public void reset() {
        super.reset();
        this.f91279v1 ^= 238;
    }
}
