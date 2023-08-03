package org.bouncycastle.jcajce.provider.asymmetric.edec;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.Ed25519PrivateKeyParameters;
import org.bouncycastle.crypto.params.Ed25519PublicKeyParameters;
import org.bouncycastle.crypto.params.Ed448PublicKeyParameters;
import org.bouncycastle.crypto.params.X25519PublicKeyParameters;
import org.bouncycastle.crypto.params.X448PublicKeyParameters;
import org.bouncycastle.crypto.util.OpenSSHPrivateKeyUtil;
import org.bouncycastle.crypto.util.OpenSSHPublicKeyUtil;
import org.bouncycastle.jcajce.interfaces.EdDSAPublicKey;
import org.bouncycastle.jcajce.interfaces.XDHPublicKey;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.bouncycastle.jcajce.spec.EdDSAParameterSpec;
import org.bouncycastle.jcajce.spec.OpenSSHPrivateKeySpec;
import org.bouncycastle.jcajce.spec.OpenSSHPublicKeySpec;
import org.bouncycastle.jcajce.spec.RawEncodedKeySpec;
import org.bouncycastle.jcajce.spec.XDHParameterSpec;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class KeyFactorySpi extends BaseKeyFactorySpi implements AsymmetricKeyInfoConverter {
    private static final byte Ed25519_type = 112;
    private static final byte Ed448_type = 113;
    private static final byte x25519_type = 110;
    private static final byte x448_type = 111;
    String algorithm;
    private final boolean isXdh;
    private final int specificBase;
    static final byte[] x448Prefix = Hex.decode("3042300506032b656f033900");
    static final byte[] x25519Prefix = Hex.decode("302a300506032b656e032100");
    static final byte[] Ed448Prefix = Hex.decode("3043300506032b6571033a00");
    static final byte[] Ed25519Prefix = Hex.decode("302a300506032b6570032100");

    /* loaded from: classes4.dex */
    public static class Ed25519 extends KeyFactorySpi {
        public Ed25519() {
            super(EdDSAParameterSpec.Ed25519, false, 112);
        }
    }

    /* loaded from: classes4.dex */
    public static class Ed448 extends KeyFactorySpi {
        public Ed448() {
            super(EdDSAParameterSpec.Ed448, false, 113);
        }
    }

    /* loaded from: classes4.dex */
    public static class EdDSA extends KeyFactorySpi {
        public EdDSA() {
            super("EdDSA", false, 0);
        }
    }

    /* loaded from: classes4.dex */
    public static class X25519 extends KeyFactorySpi {
        public X25519() {
            super(XDHParameterSpec.X25519, true, 110);
        }
    }

    /* loaded from: classes4.dex */
    public static class X448 extends KeyFactorySpi {
        public X448() {
            super(XDHParameterSpec.X448, true, 111);
        }
    }

    /* loaded from: classes4.dex */
    public static class XDH extends KeyFactorySpi {
        public XDH() {
            super("XDH", true, 0);
        }
    }

    public KeyFactorySpi(String str, boolean z9, int i4) {
        this.algorithm = str;
        this.isXdh = z9;
        this.specificBase = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof OpenSSHPrivateKeySpec) {
            AsymmetricKeyParameter parsePrivateKeyBlob = OpenSSHPrivateKeyUtil.parsePrivateKeyBlob(((OpenSSHPrivateKeySpec) keySpec).getEncoded());
            if (parsePrivateKeyBlob instanceof Ed25519PrivateKeyParameters) {
                return new BCEdDSAPrivateKey((Ed25519PrivateKeyParameters) parsePrivateKeyBlob);
            }
            throw new IllegalStateException("openssh private key not Ed25519 private key");
        }
        return super.engineGeneratePrivate(keySpec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            byte[] encoded = ((X509EncodedKeySpec) keySpec).getEncoded();
            int i4 = this.specificBase;
            if (i4 == 0 || i4 == encoded[8]) {
                if (encoded[9] == 5 && encoded[10] == 0) {
                    SubjectPublicKeyInfo subjectPublicKeyInfo = SubjectPublicKeyInfo.getInstance(encoded);
                    try {
                        encoded = new SubjectPublicKeyInfo(new AlgorithmIdentifier(subjectPublicKeyInfo.getAlgorithm().getAlgorithm()), subjectPublicKeyInfo.getPublicKeyData().getBytes()).getEncoded(ASN1Encoding.DER);
                    } catch (IOException e4) {
                        throw new InvalidKeySpecException("attempt to reconstruct key failed: " + e4.getMessage());
                    }
                }
                switch (encoded[8]) {
                    case 110:
                        return new BCXDHPublicKey(x25519Prefix, encoded);
                    case 111:
                        return new BCXDHPublicKey(x448Prefix, encoded);
                    case 112:
                        return new BCEdDSAPublicKey(Ed25519Prefix, encoded);
                    case 113:
                        return new BCEdDSAPublicKey(Ed448Prefix, encoded);
                    default:
                        return super.engineGeneratePublic(keySpec);
                }
            }
        } else if (keySpec instanceof RawEncodedKeySpec) {
            byte[] encoded2 = ((RawEncodedKeySpec) keySpec).getEncoded();
            switch (this.specificBase) {
                case 110:
                    return new BCXDHPublicKey(new X25519PublicKeyParameters(encoded2));
                case 111:
                    return new BCXDHPublicKey(new X448PublicKeyParameters(encoded2));
                case 112:
                    return new BCEdDSAPublicKey(new Ed25519PublicKeyParameters(encoded2));
                case 113:
                    return new BCEdDSAPublicKey(new Ed448PublicKeyParameters(encoded2));
                default:
                    throw new InvalidKeySpecException("factory not a specific type, cannot recognise raw encoding");
            }
        } else if (keySpec instanceof OpenSSHPublicKeySpec) {
            AsymmetricKeyParameter parsePublicKey = OpenSSHPublicKeyUtil.parsePublicKey(((OpenSSHPublicKeySpec) keySpec).getEncoded());
            if (parsePublicKey instanceof Ed25519PublicKeyParameters) {
                return new BCEdDSAPublicKey(new byte[0], ((Ed25519PublicKeyParameters) parsePublicKey).getEncoded());
            }
            throw new IllegalStateException("openssh public key not Ed25519 public key");
        }
        return super.engineGeneratePublic(keySpec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi, java.security.KeyFactorySpi
    public KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (cls.isAssignableFrom(OpenSSHPrivateKeySpec.class) && (key instanceof BCEdDSAPrivateKey)) {
            try {
                return new OpenSSHPrivateKeySpec(OpenSSHPrivateKeyUtil.encodePrivateKey(new Ed25519PrivateKeyParameters(ASN1OctetString.getInstance(ASN1Primitive.fromByteArray(ASN1OctetString.getInstance(ASN1Sequence.getInstance(key.getEncoded()).getObjectAt(2)).getOctets())).getOctets())));
            } catch (IOException e4) {
                throw new InvalidKeySpecException(e4.getMessage(), e4.getCause());
            }
        } else if (!cls.isAssignableFrom(OpenSSHPublicKeySpec.class) || !(key instanceof BCEdDSAPublicKey)) {
            if (cls.isAssignableFrom(RawEncodedKeySpec.class)) {
                if (key instanceof XDHPublicKey) {
                    return new RawEncodedKeySpec(((XDHPublicKey) key).getUEncoding());
                }
                if (key instanceof EdDSAPublicKey) {
                    return new RawEncodedKeySpec(((EdDSAPublicKey) key).getPointEncoding());
                }
            }
            return super.engineGetKeySpec(key, cls);
        } else {
            try {
                byte[] encoded = key.getEncoded();
                byte[] bArr = Ed25519Prefix;
                if (Arrays.areEqual(bArr, 0, bArr.length, encoded, 0, encoded.length - 32)) {
                    return new OpenSSHPublicKeySpec(OpenSSHPublicKeyUtil.encodePublicKey(new Ed25519PublicKeyParameters(encoded, bArr.length)));
                }
                throw new InvalidKeySpecException("Invalid Ed25519 public key encoding");
            } catch (IOException e10) {
                throw new InvalidKeySpecException(e10.getMessage(), e10.getCause());
            }
        }
    }

    @Override // java.security.KeyFactorySpi
    protected Key engineTranslateKey(Key key) throws InvalidKeyException {
        throw new InvalidKeyException("key type unknown");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PrivateKey generatePrivate(PrivateKeyInfo privateKeyInfo) throws IOException {
        ASN1ObjectIdentifier algorithm = privateKeyInfo.getPrivateKeyAlgorithm().getAlgorithm();
        if (this.isXdh) {
            int i4 = this.specificBase;
            if ((i4 == 0 || i4 == 111) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_X448)) {
                return new BCXDHPrivateKey(privateKeyInfo);
            }
            int i10 = this.specificBase;
            if ((i10 == 0 || i10 == 110) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_X25519)) {
                return new BCXDHPrivateKey(privateKeyInfo);
            }
        } else {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = EdECObjectIdentifiers.id_Ed448;
            if (algorithm.equals((ASN1Primitive) aSN1ObjectIdentifier) || algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_Ed25519)) {
                int i11 = this.specificBase;
                if ((i11 == 0 || i11 == 113) && algorithm.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                    return new BCEdDSAPrivateKey(privateKeyInfo);
                }
                int i12 = this.specificBase;
                if ((i12 == 0 || i12 == 112) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_Ed25519)) {
                    return new BCEdDSAPrivateKey(privateKeyInfo);
                }
            }
        }
        throw new IOException("algorithm identifier " + algorithm + " in key not recognized");
    }

    @Override // org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter
    public PublicKey generatePublic(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        ASN1ObjectIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm().getAlgorithm();
        if (this.isXdh) {
            int i4 = this.specificBase;
            if ((i4 == 0 || i4 == 111) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_X448)) {
                return new BCXDHPublicKey(subjectPublicKeyInfo);
            }
            int i10 = this.specificBase;
            if ((i10 == 0 || i10 == 110) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_X25519)) {
                return new BCXDHPublicKey(subjectPublicKeyInfo);
            }
        } else {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = EdECObjectIdentifiers.id_Ed448;
            if (algorithm.equals((ASN1Primitive) aSN1ObjectIdentifier) || algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_Ed25519)) {
                int i11 = this.specificBase;
                if ((i11 == 0 || i11 == 113) && algorithm.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                    return new BCEdDSAPublicKey(subjectPublicKeyInfo);
                }
                int i12 = this.specificBase;
                if ((i12 == 0 || i12 == 112) && algorithm.equals((ASN1Primitive) EdECObjectIdentifiers.id_Ed25519)) {
                    return new BCEdDSAPublicKey(subjectPublicKeyInfo);
                }
            }
        }
        throw new IOException("algorithm identifier " + algorithm + " in key not recognized");
    }
}
