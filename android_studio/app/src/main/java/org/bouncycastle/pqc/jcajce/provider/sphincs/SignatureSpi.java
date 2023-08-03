package org.bouncycastle.pqc.jcajce.provider.sphincs;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHA512tDigest;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCS256Signer;

/* loaded from: classes5.dex */
public class SignatureSpi extends java.security.SignatureSpi {
    private Digest digest;
    private SecureRandom random;
    private SPHINCS256Signer signer;
    private final ASN1ObjectIdentifier treeDigest;

    /* loaded from: classes5.dex */
    public static class withSha3_512 extends SignatureSpi {
        public withSha3_512() {
            super(new SHA3Digest(512), NISTObjectIdentifiers.id_sha3_256, new SPHINCS256Signer(new SHA3Digest(256), new SHA3Digest(512)));
        }
    }

    /* loaded from: classes5.dex */
    public static class withSha512 extends SignatureSpi {
        public withSha512() {
            super(new SHA512Digest(), NISTObjectIdentifiers.id_sha512_256, new SPHINCS256Signer(new SHA512tDigest(256), new SHA512Digest()));
        }
    }

    protected SignatureSpi(Digest digest, ASN1ObjectIdentifier aSN1ObjectIdentifier, SPHINCS256Signer sPHINCS256Signer) {
        this.digest = digest;
        this.treeDigest = aSN1ObjectIdentifier;
        this.signer = sPHINCS256Signer;
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof BCSphincs256PrivateKey)) {
            throw new InvalidKeyException("unknown private key passed to SPHINCS-256");
        }
        BCSphincs256PrivateKey bCSphincs256PrivateKey = (BCSphincs256PrivateKey) privateKey;
        if (this.treeDigest.equals((ASN1Primitive) bCSphincs256PrivateKey.getTreeDigest())) {
            CipherParameters keyParams = bCSphincs256PrivateKey.getKeyParams();
            this.digest.reset();
            this.signer.init(true, keyParams);
            return;
        }
        throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + bCSphincs256PrivateKey.getTreeDigest());
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.random = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof BCSphincs256PublicKey)) {
            throw new InvalidKeyException("unknown public key passed to SPHINCS-256");
        }
        BCSphincs256PublicKey bCSphincs256PublicKey = (BCSphincs256PublicKey) publicKey;
        if (this.treeDigest.equals((ASN1Primitive) bCSphincs256PublicKey.getTreeDigest())) {
            CipherParameters keyParams = bCSphincs256PublicKey.getKeyParams();
            this.digest.reset();
            this.signer.init(false, keyParams);
            return;
        }
        throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + bCSphincs256PublicKey.getTreeDigest());
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
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        try {
            return this.signer.generateSignature(bArr);
        } catch (Exception e4) {
            throw new SignatureException(e4.toString());
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
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        return this.signer.verifySignature(bArr2, bArr);
    }
}
