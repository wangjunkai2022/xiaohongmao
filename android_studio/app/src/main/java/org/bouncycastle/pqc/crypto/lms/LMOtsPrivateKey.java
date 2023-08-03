package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
class LMOtsPrivateKey {
    private final byte[] I;
    private final byte[] masterSecret;
    private final LMOtsParameters parameter;

    /* renamed from: q  reason: collision with root package name */
    private final int f91511q;

    public LMOtsPrivateKey(LMOtsParameters lMOtsParameters, byte[] bArr, int i4, byte[] bArr2) {
        this.parameter = lMOtsParameters;
        this.I = bArr;
        this.f91511q = i4;
        this.masterSecret = bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SeedDerive getDerivationFunction() {
        SeedDerive seedDerive = new SeedDerive(this.I, this.masterSecret, DigestUtil.getDigest(this.parameter.getDigestOID()));
        seedDerive.setQ(this.f91511q);
        return seedDerive;
    }

    public byte[] getI() {
        return this.I;
    }

    public byte[] getMasterSecret() {
        return this.masterSecret;
    }

    public LMOtsParameters getParameter() {
        return this.parameter;
    }

    public int getQ() {
        return this.f91511q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSContext getSignatureContext(LMSigParameters lMSigParameters, byte[][] bArr) {
        byte[] bArr2 = new byte[32];
        SeedDerive derivationFunction = getDerivationFunction();
        derivationFunction.setJ(-3);
        derivationFunction.deriveSeed(bArr2, false);
        Digest digest = DigestUtil.getDigest(this.parameter.getDigestOID());
        LmsUtils.byteArray(getI(), digest);
        LmsUtils.u32str(getQ(), digest);
        LmsUtils.u16str((short) -32383, digest);
        LmsUtils.byteArray(bArr2, digest);
        return new LMSContext(this, lMSigParameters, digest, bArr2, bArr);
    }
}
