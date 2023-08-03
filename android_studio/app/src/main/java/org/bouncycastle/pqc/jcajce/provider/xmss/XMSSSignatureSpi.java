package org.bouncycastle.pqc.jcajce.provider.xmss;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.NullDigest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.xmss.XMSSPrivateKeyParameters;
import org.bouncycastle.pqc.crypto.xmss.XMSSSigner;
import org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature;

/* loaded from: classes5.dex */
public class XMSSSignatureSpi extends Signature implements StateAwareSignature {
    private Digest digest;
    private SecureRandom random;
    private XMSSSigner signer;
    private ASN1ObjectIdentifier treeDigest;

    /* loaded from: classes5.dex */
    public static class generic extends XMSSSignatureSpi {
        public generic() {
            super("XMSS", new NullDigest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withSha256 extends XMSSSignatureSpi {
        public withSha256() {
            super("XMSS-SHA256", new NullDigest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withSha256andPrehash extends XMSSSignatureSpi {
        public withSha256andPrehash() {
            super("SHA256withXMSS-SHA256", new SHA256Digest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withSha512 extends XMSSSignatureSpi {
        public withSha512() {
            super("XMSS-SHA512", new NullDigest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withSha512andPrehash extends XMSSSignatureSpi {
        public withSha512andPrehash() {
            super("SHA512withXMSS-SHA512", new SHA512Digest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withShake128 extends XMSSSignatureSpi {
        public withShake128() {
            super("XMSS-SHAKE128", new NullDigest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withShake128andPrehash extends XMSSSignatureSpi {
        public withShake128andPrehash() {
            super("SHAKE128withXMSSMT-SHAKE128", new SHAKEDigest(128), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withShake256 extends XMSSSignatureSpi {
        public withShake256() {
            super("XMSS-SHAKE256", new NullDigest(), new XMSSSigner());
        }
    }

    /* loaded from: classes5.dex */
    public static class withShake256andPrehash extends XMSSSignatureSpi {
        public withShake256andPrehash() {
            super("SHAKE256withXMSS-SHAKE256", new SHAKEDigest(256), new XMSSSigner());
        }
    }

    protected XMSSSignatureSpi(String str) {
        super(str);
    }

    protected XMSSSignatureSpi(String str, Digest digest, XMSSSigner xMSSSigner) {
        super(str);
        this.digest = digest;
        this.signer = xMSSSigner;
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof BCXMSSPrivateKey)) {
            throw new InvalidKeyException("unknown private key passed to XMSS");
        }
        BCXMSSPrivateKey bCXMSSPrivateKey = (BCXMSSPrivateKey) privateKey;
        CipherParameters keyParams = bCXMSSPrivateKey.getKeyParams();
        this.treeDigest = bCXMSSPrivateKey.getTreeDigestOID();
        SecureRandom secureRandom = this.random;
        if (secureRandom != null) {
            keyParams = new ParametersWithRandom(keyParams, secureRandom);
        }
        this.digest.reset();
        this.signer.init(true, keyParams);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.random = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof BCXMSSPublicKey)) {
            throw new InvalidKeyException("unknown public key passed to XMSS");
        }
        CipherParameters keyParams = ((BCXMSSPublicKey) publicKey).getKeyParams();
        this.treeDigest = null;
        this.digest.reset();
        this.signer.init(false, keyParams);
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected byte[] engineSign() throws SignatureException {
        try {
            return this.signer.generateSignature(DigestUtil.getDigestResult(this.digest));
        } catch (Exception e4) {
            if (e4 instanceof IllegalStateException) {
                throw new SignatureException(e4.getMessage(), e4);
            }
            throw new SignatureException(e4.toString(), e4);
        }
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte b10) throws SignatureException {
        this.digest.update(b10);
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte[] bArr, int i4, int i10) throws SignatureException {
        this.digest.update(bArr, i4, i10);
    }

    @Override // java.security.SignatureSpi
    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.signer.verifySignature(DigestUtil.getDigestResult(this.digest), bArr);
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public PrivateKey getUpdatedPrivateKey() {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = this.treeDigest;
        if (aSN1ObjectIdentifier != null) {
            BCXMSSPrivateKey bCXMSSPrivateKey = new BCXMSSPrivateKey(aSN1ObjectIdentifier, (XMSSPrivateKeyParameters) this.signer.getUpdatedPrivateKey());
            this.treeDigest = null;
            return bCXMSSPrivateKey;
        }
        throw new IllegalStateException("signature object not in a signing state");
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public boolean isSigningCapable() {
        return (this.treeDigest == null || this.signer.getUsagesRemaining() == 0) ? false : true;
    }
}
