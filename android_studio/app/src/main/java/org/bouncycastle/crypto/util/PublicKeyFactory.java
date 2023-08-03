package org.bouncycastle.crypto.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSAPublicKey;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.ua.DSTU4145BinaryField;
import org.bouncycastle.asn1.ua.DSTU4145ECBinary;
import org.bouncycastle.asn1.ua.DSTU4145NamedCurves;
import org.bouncycastle.asn1.ua.DSTU4145Params;
import org.bouncycastle.asn1.ua.DSTU4145PointEncoder;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.asn1.x9.DHPublicKey;
import org.bouncycastle.asn1.x9.DomainParameters;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.ValidationParams;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECPoint;
import org.bouncycastle.asn1.x9.X9IntegerConverter;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.ec.CustomNamedCurves;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.params.DHValidationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECGOST3410Parameters;
import org.bouncycastle.crypto.params.ECNamedDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.Ed25519PublicKeyParameters;
import org.bouncycastle.crypto.params.Ed448PublicKeyParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.X25519PublicKeyParameters;
import org.bouncycastle.crypto.params.X448PublicKeyParameters;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class PublicKeyFactory {
    private static Map converters;

    /* loaded from: classes4.dex */
    private static class DHAgreementConverter extends SubjectPublicKeyInfoConverter {
        private DHAgreementConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            DHParameter dHParameter = DHParameter.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            ASN1Integer aSN1Integer = (ASN1Integer) subjectPublicKeyInfo.parsePublicKey();
            BigInteger l10 = dHParameter.getL();
            return new DHPublicKeyParameters(aSN1Integer.getValue(), new DHParameters(dHParameter.getP(), dHParameter.getG(), null, l10 == null ? 0 : l10.intValue()));
        }
    }

    /* loaded from: classes4.dex */
    private static class DHPublicNumberConverter extends SubjectPublicKeyInfoConverter {
        private DHPublicNumberConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            BigInteger y9 = DHPublicKey.getInstance(subjectPublicKeyInfo.parsePublicKey()).getY();
            DomainParameters domainParameters = DomainParameters.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            BigInteger p9 = domainParameters.getP();
            BigInteger g4 = domainParameters.getG();
            BigInteger q9 = domainParameters.getQ();
            BigInteger j4 = domainParameters.getJ() != null ? domainParameters.getJ() : null;
            ValidationParams validationParams = domainParameters.getValidationParams();
            return new DHPublicKeyParameters(y9, new DHParameters(p9, g4, q9, j4, validationParams != null ? new DHValidationParameters(validationParams.getSeed(), validationParams.getPgenCounter().intValue()) : null));
        }
    }

    /* loaded from: classes4.dex */
    private static class DSAConverter extends SubjectPublicKeyInfoConverter {
        private DSAConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            DSAParameters dSAParameters;
            ASN1Integer aSN1Integer = (ASN1Integer) subjectPublicKeyInfo.parsePublicKey();
            ASN1Encodable parameters = subjectPublicKeyInfo.getAlgorithm().getParameters();
            if (parameters != null) {
                DSAParameter dSAParameter = DSAParameter.getInstance(parameters.toASN1Primitive());
                dSAParameters = new DSAParameters(dSAParameter.getP(), dSAParameter.getQ(), dSAParameter.getG());
            } else {
                dSAParameters = null;
            }
            return new DSAPublicKeyParameters(aSN1Integer.getValue(), dSAParameters);
        }
    }

    /* loaded from: classes4.dex */
    private static class DSTUConverter extends SubjectPublicKeyInfoConverter {
        private DSTUConverter() {
            super();
        }

        private void reverseBytes(byte[] bArr) {
            for (int i4 = 0; i4 < bArr.length / 2; i4++) {
                byte b10 = bArr[i4];
                bArr[i4] = bArr[(bArr.length - 1) - i4];
                bArr[(bArr.length - 1) - i4] = b10;
            }
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            ECDomainParameters eCDomainParameters;
            AlgorithmIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm();
            ASN1ObjectIdentifier algorithm2 = algorithm.getAlgorithm();
            DSTU4145Params dSTU4145Params = DSTU4145Params.getInstance(algorithm.getParameters());
            try {
                byte[] clone = Arrays.clone(((ASN1OctetString) subjectPublicKeyInfo.parsePublicKey()).getOctets());
                ASN1ObjectIdentifier aSN1ObjectIdentifier = UAObjectIdentifiers.dstu4145le;
                if (algorithm2.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                    reverseBytes(clone);
                }
                if (dSTU4145Params.isNamedCurve()) {
                    eCDomainParameters = DSTU4145NamedCurves.getByOID(dSTU4145Params.getNamedCurve());
                } else {
                    DSTU4145ECBinary eCBinary = dSTU4145Params.getECBinary();
                    byte[] b10 = eCBinary.getB();
                    if (algorithm2.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                        reverseBytes(b10);
                    }
                    BigInteger bigInteger = new BigInteger(1, b10);
                    DSTU4145BinaryField field = eCBinary.getField();
                    ECCurve.F2m f2m = new ECCurve.F2m(field.getM(), field.getK1(), field.getK2(), field.getK3(), eCBinary.getA(), bigInteger);
                    byte[] g4 = eCBinary.getG();
                    if (algorithm2.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                        reverseBytes(g4);
                    }
                    eCDomainParameters = new ECDomainParameters(f2m, DSTU4145PointEncoder.decodePoint(f2m, g4), eCBinary.getN());
                }
                return new ECPublicKeyParameters(DSTU4145PointEncoder.decodePoint(eCDomainParameters.getCurve(), clone), eCDomainParameters);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering DSTU public key");
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class ECConverter extends SubjectPublicKeyInfoConverter {
        private ECConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            ECDomainParameters eCDomainParameters;
            X962Parameters x962Parameters = X962Parameters.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            if (x962Parameters.isNamedCurve()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) x962Parameters.getParameters();
                X9ECParameters byOID = CustomNamedCurves.getByOID(aSN1ObjectIdentifier);
                if (byOID == null) {
                    byOID = ECNamedCurveTable.getByOID(aSN1ObjectIdentifier);
                }
                eCDomainParameters = new ECNamedDomainParameters(aSN1ObjectIdentifier, byOID);
            } else {
                eCDomainParameters = x962Parameters.isImplicitlyCA() ? (ECDomainParameters) obj : new ECDomainParameters(X9ECParameters.getInstance(x962Parameters.getParameters()));
            }
            byte[] bytes = subjectPublicKeyInfo.getPublicKeyData().getBytes();
            ASN1OctetString dEROctetString = new DEROctetString(bytes);
            if (bytes[0] == 4 && bytes[1] == bytes.length - 2 && ((bytes[2] == 2 || bytes[2] == 3) && new X9IntegerConverter().getByteLength(eCDomainParameters.getCurve()) >= bytes.length - 3)) {
                try {
                    dEROctetString = (ASN1OctetString) ASN1Primitive.fromByteArray(bytes);
                } catch (IOException unused) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            return new ECPublicKeyParameters(new X9ECPoint(eCDomainParameters.getCurve(), dEROctetString).getPoint(), eCDomainParameters);
        }
    }

    /* loaded from: classes4.dex */
    private static class Ed25519Converter extends SubjectPublicKeyInfoConverter {
        private Ed25519Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            return new Ed25519PublicKeyParameters(PublicKeyFactory.getRawKey(subjectPublicKeyInfo, obj));
        }
    }

    /* loaded from: classes4.dex */
    private static class Ed448Converter extends SubjectPublicKeyInfoConverter {
        private Ed448Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            return new Ed448PublicKeyParameters(PublicKeyFactory.getRawKey(subjectPublicKeyInfo, obj));
        }
    }

    /* loaded from: classes4.dex */
    private static class ElGamalConverter extends SubjectPublicKeyInfoConverter {
        private ElGamalConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            ElGamalParameter elGamalParameter = ElGamalParameter.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            return new ElGamalPublicKeyParameters(((ASN1Integer) subjectPublicKeyInfo.parsePublicKey()).getValue(), new ElGamalParameters(elGamalParameter.getP(), elGamalParameter.getG()));
        }
    }

    /* loaded from: classes4.dex */
    private static class GOST3410_2001Converter extends SubjectPublicKeyInfoConverter {
        private GOST3410_2001Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters = GOST3410PublicKeyAlgParameters.getInstance(subjectPublicKeyInfo.getAlgorithm().getParameters());
            ASN1ObjectIdentifier publicKeyParamSet = gOST3410PublicKeyAlgParameters.getPublicKeyParamSet();
            ECGOST3410Parameters eCGOST3410Parameters = new ECGOST3410Parameters(new ECNamedDomainParameters(publicKeyParamSet, ECGOST3410NamedCurves.getByOIDX9(publicKeyParamSet)), publicKeyParamSet, gOST3410PublicKeyAlgParameters.getDigestParamSet(), gOST3410PublicKeyAlgParameters.getEncryptionParamSet());
            try {
                byte[] octets = ((ASN1OctetString) subjectPublicKeyInfo.parsePublicKey()).getOctets();
                if (octets.length == 64) {
                    byte[] bArr = new byte[65];
                    bArr[0] = 4;
                    for (int i4 = 1; i4 <= 32; i4++) {
                        bArr[i4] = octets[32 - i4];
                        bArr[i4 + 32] = octets[64 - i4];
                    }
                    return new ECPublicKeyParameters(eCGOST3410Parameters.getCurve().decodePoint(bArr), eCGOST3410Parameters);
                }
                throw new IllegalArgumentException("invalid length for GOST3410_2001 public key");
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering GOST3410_2001 public key");
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class GOST3410_2012Converter extends SubjectPublicKeyInfoConverter {
        private GOST3410_2012Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            AlgorithmIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm();
            ASN1ObjectIdentifier algorithm2 = algorithm.getAlgorithm();
            GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters = GOST3410PublicKeyAlgParameters.getInstance(algorithm.getParameters());
            ASN1ObjectIdentifier publicKeyParamSet = gOST3410PublicKeyAlgParameters.getPublicKeyParamSet();
            ECGOST3410Parameters eCGOST3410Parameters = new ECGOST3410Parameters(new ECNamedDomainParameters(publicKeyParamSet, ECGOST3410NamedCurves.getByOIDX9(publicKeyParamSet)), publicKeyParamSet, gOST3410PublicKeyAlgParameters.getDigestParamSet(), gOST3410PublicKeyAlgParameters.getEncryptionParamSet());
            try {
                ASN1OctetString aSN1OctetString = (ASN1OctetString) subjectPublicKeyInfo.parsePublicKey();
                int i4 = algorithm2.equals((ASN1Primitive) RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512) ? 64 : 32;
                int i10 = i4 * 2;
                byte[] octets = aSN1OctetString.getOctets();
                if (octets.length == i10) {
                    byte[] bArr = new byte[i10 + 1];
                    bArr[0] = 4;
                    for (int i11 = 1; i11 <= i4; i11++) {
                        bArr[i11] = octets[i4 - i11];
                        bArr[i11 + i4] = octets[i10 - i11];
                    }
                    return new ECPublicKeyParameters(eCGOST3410Parameters.getCurve().decodePoint(bArr), eCGOST3410Parameters);
                }
                throw new IllegalArgumentException("invalid length for GOST3410_2012 public key");
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering GOST3410_2012 public key");
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class RSAConverter extends SubjectPublicKeyInfoConverter {
        private RSAConverter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
            RSAPublicKey rSAPublicKey = RSAPublicKey.getInstance(subjectPublicKeyInfo.parsePublicKey());
            return new RSAKeyParameters(false, rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class SubjectPublicKeyInfoConverter {
        private SubjectPublicKeyInfoConverter() {
        }

        abstract AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException;
    }

    /* loaded from: classes4.dex */
    private static class X25519Converter extends SubjectPublicKeyInfoConverter {
        private X25519Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            return new X25519PublicKeyParameters(PublicKeyFactory.getRawKey(subjectPublicKeyInfo, obj));
        }
    }

    /* loaded from: classes4.dex */
    private static class X448Converter extends SubjectPublicKeyInfoConverter {
        private X448Converter() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.PublicKeyFactory.SubjectPublicKeyInfoConverter
        AsymmetricKeyParameter getPublicKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
            return new X448PublicKeyParameters(PublicKeyFactory.getRawKey(subjectPublicKeyInfo, obj));
        }
    }

    static {
        HashMap hashMap = new HashMap();
        converters = hashMap;
        hashMap.put(PKCSObjectIdentifiers.rsaEncryption, new RSAConverter());
        converters.put(PKCSObjectIdentifiers.id_RSASSA_PSS, new RSAConverter());
        converters.put(X509ObjectIdentifiers.id_ea_rsa, new RSAConverter());
        converters.put(X9ObjectIdentifiers.dhpublicnumber, new DHPublicNumberConverter());
        converters.put(PKCSObjectIdentifiers.dhKeyAgreement, new DHAgreementConverter());
        converters.put(X9ObjectIdentifiers.id_dsa, new DSAConverter());
        converters.put(OIWObjectIdentifiers.dsaWithSHA1, new DSAConverter());
        converters.put(OIWObjectIdentifiers.elGamalAlgorithm, new ElGamalConverter());
        converters.put(X9ObjectIdentifiers.id_ecPublicKey, new ECConverter());
        converters.put(CryptoProObjectIdentifiers.gostR3410_2001, new GOST3410_2001Converter());
        converters.put(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256, new GOST3410_2012Converter());
        converters.put(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512, new GOST3410_2012Converter());
        converters.put(UAObjectIdentifiers.dstu4145be, new DSTUConverter());
        converters.put(UAObjectIdentifiers.dstu4145le, new DSTUConverter());
        converters.put(EdECObjectIdentifiers.id_X25519, new X25519Converter());
        converters.put(EdECObjectIdentifiers.id_X448, new X448Converter());
        converters.put(EdECObjectIdentifiers.id_Ed25519, new Ed25519Converter());
        converters.put(EdECObjectIdentifiers.id_Ed448, new Ed448Converter());
    }

    public static AsymmetricKeyParameter createKey(InputStream inputStream) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(new ASN1InputStream(inputStream).readObject()));
    }

    public static AsymmetricKeyParameter createKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        return createKey(subjectPublicKeyInfo, null);
    }

    public static AsymmetricKeyParameter createKey(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) throws IOException {
        AlgorithmIdentifier algorithm = subjectPublicKeyInfo.getAlgorithm();
        SubjectPublicKeyInfoConverter subjectPublicKeyInfoConverter = (SubjectPublicKeyInfoConverter) converters.get(algorithm.getAlgorithm());
        if (subjectPublicKeyInfoConverter != null) {
            return subjectPublicKeyInfoConverter.getPublicKeyParameters(subjectPublicKeyInfo, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + algorithm.getAlgorithm());
    }

    public static AsymmetricKeyParameter createKey(byte[] bArr) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray(bArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] getRawKey(SubjectPublicKeyInfo subjectPublicKeyInfo, Object obj) {
        return subjectPublicKeyInfo.getPublicKeyData().getOctets();
    }
}
