package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes5.dex */
public class LMSContext implements Digest {
    private final byte[] C;
    private volatile Digest digest;
    private final LMOtsPrivateKey key;
    private final byte[][] path;
    private final LMOtsPublicKey publicKey;
    private final LMSigParameters sigParams;
    private final Object signature;
    private LMSSignedPubKey[] signedPubKeys;

    public LMSContext(LMOtsPrivateKey lMOtsPrivateKey, LMSigParameters lMSigParameters, Digest digest, byte[] bArr, byte[][] bArr2) {
        this.key = lMOtsPrivateKey;
        this.sigParams = lMSigParameters;
        this.digest = digest;
        this.C = bArr;
        this.path = bArr2;
        this.publicKey = null;
        this.signature = null;
    }

    public LMSContext(LMOtsPublicKey lMOtsPublicKey, Object obj, Digest digest) {
        this.publicKey = lMOtsPublicKey;
        this.signature = obj;
        this.digest = digest;
        this.C = null;
        this.key = null;
        this.sigParams = null;
        this.path = null;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i4) {
        return this.digest.doFinal(bArr, i4);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.digest.getAlgorithmName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getC() {
        return this.C;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digest.getDigestSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[][] getPath() {
        return this.path;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMOtsPrivateKey getPrivateKey() {
        return this.key;
    }

    public LMOtsPublicKey getPublicKey() {
        return this.publicKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getQ() {
        byte[] bArr = new byte[34];
        this.digest.doFinal(bArr, 0);
        this.digest = null;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSigParameters getSigParams() {
        return this.sigParams;
    }

    public Object getSignature() {
        return this.signature;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSSignedPubKey[] getSignedPubKeys() {
        return this.signedPubKeys;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.digest.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.digest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i4, int i10) {
        this.digest.update(bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LMSContext withSignedPublicKeys(LMSSignedPubKey[] lMSSignedPubKeyArr) {
        this.signedPubKeys = lMSSignedPubKeyArr;
        return this;
    }
}
