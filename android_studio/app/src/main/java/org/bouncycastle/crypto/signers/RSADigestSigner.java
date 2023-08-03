package org.bouncycastle.crypto.signers;

import java.io.IOException;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCSKeyParameters;
import org.bouncycastle.util.Arrays;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes4.dex */
public class RSADigestSigner implements Signer {
    private static final Hashtable oidMap;
    private final AlgorithmIdentifier algId;
    private final Digest digest;
    private boolean forSigning;
    private final AsymmetricBlockCipher rsaEngine;

    static {
        Hashtable hashtable = new Hashtable();
        oidMap = hashtable;
        hashtable.put("RIPEMD128", TeleTrusTObjectIdentifiers.ripemd128);
        hashtable.put("RIPEMD160", TeleTrusTObjectIdentifiers.ripemd160);
        hashtable.put("RIPEMD256", TeleTrusTObjectIdentifiers.ripemd256);
        hashtable.put("SHA-1", X509ObjectIdentifiers.id_SHA1);
        hashtable.put("SHA-224", NISTObjectIdentifiers.id_sha224);
        hashtable.put("SHA-256", NISTObjectIdentifiers.id_sha256);
        hashtable.put("SHA-384", NISTObjectIdentifiers.id_sha384);
        hashtable.put("SHA-512", NISTObjectIdentifiers.id_sha512);
        hashtable.put("SHA-512/224", NISTObjectIdentifiers.id_sha512_224);
        hashtable.put(SPHINCSKeyParameters.SHA512_256, NISTObjectIdentifiers.id_sha512_256);
        hashtable.put(f.f93516h, NISTObjectIdentifiers.id_sha3_224);
        hashtable.put("SHA3-256", NISTObjectIdentifiers.id_sha3_256);
        hashtable.put(f.f93518j, NISTObjectIdentifiers.id_sha3_384);
        hashtable.put(f.f93519k, NISTObjectIdentifiers.id_sha3_512);
        hashtable.put(f.f93509a, PKCSObjectIdentifiers.md2);
        hashtable.put("MD4", PKCSObjectIdentifiers.md4);
        hashtable.put(f.f93510b, PKCSObjectIdentifiers.md5);
    }

    public RSADigestSigner(Digest digest) {
        this(digest, (ASN1ObjectIdentifier) oidMap.get(digest.getAlgorithmName()));
    }

    public RSADigestSigner(Digest digest, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.rsaEngine = new PKCS1Encoding(new RSABlindedEngine());
        this.digest = digest;
        this.algId = aSN1ObjectIdentifier != null ? new AlgorithmIdentifier(aSN1ObjectIdentifier, DERNull.INSTANCE) : null;
    }

    private byte[] derEncode(byte[] bArr) throws IOException {
        AlgorithmIdentifier algorithmIdentifier = this.algId;
        if (algorithmIdentifier == null) {
            try {
                DigestInfo.getInstance(bArr);
                return bArr;
            } catch (IllegalArgumentException e4) {
                throw new IOException("malformed DigestInfo for NONEwithRSA hash: " + e4.getMessage());
            }
        }
        return new DigestInfo(algorithmIdentifier, bArr).getEncoded(ASN1Encoding.DER);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException, DataLengthException {
        if (this.forSigning) {
            byte[] bArr = new byte[this.digest.getDigestSize()];
            this.digest.doFinal(bArr, 0);
            try {
                byte[] derEncode = derEncode(bArr);
                return this.rsaEngine.processBlock(derEncode, 0, derEncode.length);
            } catch (IOException e4) {
                throw new CryptoException("unable to encode signature: " + e4.getMessage(), e4);
            }
        }
        throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
    }

    public String getAlgorithmName() {
        return this.digest.getAlgorithmName() + "withRSA";
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z9, CipherParameters cipherParameters) {
        this.forSigning = z9;
        AsymmetricKeyParameter asymmetricKeyParameter = cipherParameters instanceof ParametersWithRandom ? (AsymmetricKeyParameter) ((ParametersWithRandom) cipherParameters).getParameters() : (AsymmetricKeyParameter) cipherParameters;
        if (z9 && !asymmetricKeyParameter.isPrivate()) {
            throw new IllegalArgumentException("signing requires private key");
        }
        if (!z9 && asymmetricKeyParameter.isPrivate()) {
            throw new IllegalArgumentException("verification requires public key");
        }
        reset();
        this.rsaEngine.init(z9, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        this.digest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i4, int i10) {
        this.digest.update(bArr, i4, i10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] processBlock;
        byte[] derEncode;
        if (this.forSigning) {
            throw new IllegalStateException("RSADigestSigner not initialised for verification");
        }
        int digestSize = this.digest.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        this.digest.doFinal(bArr2, 0);
        try {
            processBlock = this.rsaEngine.processBlock(bArr, 0, bArr.length);
            derEncode = derEncode(bArr2);
        } catch (Exception unused) {
        }
        if (processBlock.length == derEncode.length) {
            return Arrays.constantTimeAreEqual(processBlock, derEncode);
        }
        if (processBlock.length != derEncode.length - 2) {
            Arrays.constantTimeAreEqual(derEncode, derEncode);
            return false;
        }
        int length = (processBlock.length - digestSize) - 2;
        int length2 = (derEncode.length - digestSize) - 2;
        derEncode[1] = (byte) (derEncode[1] - 2);
        derEncode[3] = (byte) (derEncode[3] - 2);
        int i4 = 0;
        for (int i10 = 0; i10 < digestSize; i10++) {
            i4 |= processBlock[length + i10] ^ derEncode[length2 + i10];
        }
        for (int i11 = 0; i11 < length; i11++) {
            i4 |= processBlock[i11] ^ derEncode[i11];
        }
        return i4 == 0;
    }
}
