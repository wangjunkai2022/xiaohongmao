package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.Time;
import org.bouncycastle.jcajce.CompositePublicKey;
import org.bouncycastle.jcajce.io.OutputStreamFactory;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
abstract class X509CRLImpl extends X509CRL {
    protected JcaJceHelper bcHelper;

    /* renamed from: c  reason: collision with root package name */
    protected CertificateList f91373c;
    protected boolean isIndirect;
    protected String sigAlgName;
    protected byte[] sigAlgParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    public X509CRLImpl(JcaJceHelper jcaJceHelper, CertificateList certificateList, String str, byte[] bArr, boolean z9) {
        this.bcHelper = jcaJceHelper;
        this.f91373c = certificateList;
        this.sigAlgName = str;
        this.sigAlgParams = bArr;
        this.isIndirect = z9;
    }

    private void checkSignature(PublicKey publicKey, Signature signature, ASN1Encodable aSN1Encodable, byte[] bArr) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException {
        if (aSN1Encodable != null) {
            X509SignatureUtil.setSignatureParameters(signature, aSN1Encodable);
        }
        signature.initVerify(publicKey);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(OutputStreamFactory.createStream(signature), 512);
            this.f91373c.getTBSCertList().encodeTo(bufferedOutputStream, ASN1Encoding.DER);
            bufferedOutputStream.close();
            if (!signature.verify(bArr)) {
                throw new SignatureException("CRL does not verify with supplied public key.");
            }
        } catch (IOException e4) {
            throw new CRLException(e4.toString());
        }
    }

    private void doVerify(PublicKey publicKey, SignatureCreator signatureCreator) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        if (!this.f91373c.getSignatureAlgorithm().equals(this.f91373c.getTBSCertList().getSignature())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        int i4 = 0;
        if ((publicKey instanceof CompositePublicKey) && X509SignatureUtil.isCompositeAlgorithm(this.f91373c.getSignatureAlgorithm())) {
            List<PublicKey> publicKeys = ((CompositePublicKey) publicKey).getPublicKeys();
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(this.f91373c.getSignatureAlgorithm().getParameters());
            ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(DERBitString.getInstance((Object) this.f91373c.getSignature()).getBytes());
            boolean z9 = false;
            while (i4 != publicKeys.size()) {
                if (publicKeys.get(i4) != null) {
                    AlgorithmIdentifier algorithmIdentifier = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(i4));
                    try {
                        checkSignature(publicKeys.get(i4), signatureCreator.createSignature(X509SignatureUtil.getSignatureName(algorithmIdentifier)), algorithmIdentifier.getParameters(), DERBitString.getInstance((Object) aSN1Sequence2.getObjectAt(i4)).getBytes());
                        e = null;
                        z9 = true;
                    } catch (SignatureException e4) {
                        e = e4;
                    }
                    if (e != null) {
                        throw e;
                    }
                }
                i4++;
            }
            if (!z9) {
                throw new InvalidKeyException("no matching key found");
            }
        } else if (!X509SignatureUtil.isCompositeAlgorithm(this.f91373c.getSignatureAlgorithm())) {
            Signature createSignature = signatureCreator.createSignature(getSigAlgName());
            byte[] bArr = this.sigAlgParams;
            if (bArr == null) {
                checkSignature(publicKey, createSignature, null, getSignature());
                return;
            }
            try {
                checkSignature(publicKey, createSignature, ASN1Primitive.fromByteArray(bArr), getSignature());
            } catch (IOException e10) {
                throw new SignatureException("cannot decode signature parameters: " + e10.getMessage());
            }
        } else {
            ASN1Sequence aSN1Sequence3 = ASN1Sequence.getInstance(this.f91373c.getSignatureAlgorithm().getParameters());
            ASN1Sequence aSN1Sequence4 = ASN1Sequence.getInstance(DERBitString.getInstance((Object) this.f91373c.getSignature()).getBytes());
            boolean z10 = false;
            while (i4 != aSN1Sequence4.size()) {
                AlgorithmIdentifier algorithmIdentifier2 = AlgorithmIdentifier.getInstance(aSN1Sequence3.getObjectAt(i4));
                try {
                    checkSignature(publicKey, signatureCreator.createSignature(X509SignatureUtil.getSignatureName(algorithmIdentifier2)), algorithmIdentifier2.getParameters(), DERBitString.getInstance((Object) aSN1Sequence4.getObjectAt(i4)).getBytes());
                    e = null;
                    z10 = true;
                } catch (InvalidKeyException | NoSuchAlgorithmException unused) {
                    e = null;
                } catch (SignatureException e11) {
                    e = e11;
                }
                if (e != null) {
                    throw e;
                }
                i4++;
            }
            if (!z10) {
                throw new InvalidKeyException("no matching key found");
            }
        }
    }

    private Set getExtensionOIDs(boolean z9) {
        Extensions extensions;
        if (getVersion() != 2 || (extensions = this.f91373c.getTBSCertList().getExtensions()) == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration oids = extensions.oids();
        while (oids.hasMoreElements()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) oids.nextElement();
            if (z9 == extensions.getExtension(aSN1ObjectIdentifier).isCritical()) {
                hashSet.add(aSN1ObjectIdentifier.getId());
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] getExtensionOctets(CertificateList certificateList, String str) {
        ASN1OctetString extensionValue = getExtensionValue(certificateList, str);
        if (extensionValue != null) {
            return extensionValue.getOctets();
        }
        return null;
    }

    protected static ASN1OctetString getExtensionValue(CertificateList certificateList, String str) {
        Extension extension;
        Extensions extensions = certificateList.getTBSCertList().getExtensions();
        if (extensions == null || (extension = extensions.getExtension(new ASN1ObjectIdentifier(str))) == null) {
            return null;
        }
        return extension.getExtnValue();
    }

    private Set loadCRLEntries() {
        Extension extension;
        HashSet hashSet = new HashSet();
        Enumeration revokedCertificateEnumeration = this.f91373c.getRevokedCertificateEnumeration();
        X500Name x500Name = null;
        while (revokedCertificateEnumeration.hasMoreElements()) {
            TBSCertList.CRLEntry cRLEntry = (TBSCertList.CRLEntry) revokedCertificateEnumeration.nextElement();
            hashSet.add(new X509CRLEntryObject(cRLEntry, this.isIndirect, x500Name));
            if (this.isIndirect && cRLEntry.hasExtensions() && (extension = cRLEntry.getExtensions().getExtension(Extension.certificateIssuer)) != null) {
                x500Name = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return getExtensionOIDs(true);
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        ASN1OctetString extensionValue = getExtensionValue(this.f91373c, str);
        if (extensionValue != null) {
            try {
                return extensionValue.getEncoded();
            } catch (Exception e4) {
                throw new IllegalStateException("error parsing " + e4.toString());
            }
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public Principal getIssuerDN() {
        return new X509Principal(X500Name.getInstance(this.f91373c.getIssuer().toASN1Primitive()));
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f91373c.getIssuer().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        Time nextUpdate = this.f91373c.getNextUpdate();
        if (nextUpdate == null) {
            return null;
        }
        return nextUpdate.getDate();
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return getExtensionOIDs(false);
    }

    @Override // java.security.cert.X509CRL
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        Extension extension;
        Enumeration revokedCertificateEnumeration = this.f91373c.getRevokedCertificateEnumeration();
        X500Name x500Name = null;
        while (revokedCertificateEnumeration.hasMoreElements()) {
            TBSCertList.CRLEntry cRLEntry = (TBSCertList.CRLEntry) revokedCertificateEnumeration.nextElement();
            if (cRLEntry.getUserCertificate().hasValue(bigInteger)) {
                return new X509CRLEntryObject(cRLEntry, this.isIndirect, x500Name);
            }
            if (this.isIndirect && cRLEntry.hasExtensions() && (extension = cRLEntry.getExtensions().getExtension(Extension.certificateIssuer)) != null) {
                x500Name = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
            }
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public Set getRevokedCertificates() {
        Set loadCRLEntries = loadCRLEntries();
        if (loadCRLEntries.isEmpty()) {
            return null;
        }
        return Collections.unmodifiableSet(loadCRLEntries);
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgName() {
        return this.sigAlgName;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgOID() {
        return this.f91373c.getSignatureAlgorithm().getAlgorithm().getId();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        return Arrays.clone(this.sigAlgParams);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSignature() {
        return this.f91373c.getSignature().getOctets();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.f91373c.getTBSCertList().getEncoded(ASN1Encoding.DER);
        } catch (IOException e4) {
            throw new CRLException(e4.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f91373c.getThisUpdate().getDate();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f91373c.getVersionNumber();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(Extension.issuingDistributionPoint.getId());
        criticalExtensionOIDs.remove(Extension.deltaCRLIndicator.getId());
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate certificate) {
        X500Name issuer;
        Extension extension;
        if (certificate.getType().equals("X.509")) {
            Enumeration revokedCertificateEnumeration = this.f91373c.getRevokedCertificateEnumeration();
            X500Name issuer2 = this.f91373c.getIssuer();
            if (revokedCertificateEnumeration.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) certificate;
                BigInteger serialNumber = x509Certificate.getSerialNumber();
                while (revokedCertificateEnumeration.hasMoreElements()) {
                    TBSCertList.CRLEntry cRLEntry = TBSCertList.CRLEntry.getInstance(revokedCertificateEnumeration.nextElement());
                    if (this.isIndirect && cRLEntry.hasExtensions() && (extension = cRLEntry.getExtensions().getExtension(Extension.certificateIssuer)) != null) {
                        issuer2 = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
                    }
                    if (cRLEntry.getUserCertificate().hasValue(serialNumber)) {
                        if (certificate instanceof X509Certificate) {
                            issuer = X500Name.getInstance(x509Certificate.getIssuerX500Principal().getEncoded());
                        } else {
                            try {
                                issuer = org.bouncycastle.asn1.x509.Certificate.getInstance(certificate.getEncoded()).getIssuer();
                            } catch (CertificateEncodingException e4) {
                                throw new IllegalArgumentException("Cannot process certificate: " + e4.getMessage());
                            }
                        }
                        return issuer2.equals(issuer);
                    }
                }
            }
            return false;
        }
        throw new IllegalArgumentException("X.509 CRL used with non X.509 Cert");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0143 -> B:7:0x0075). Please submit an issue!!! */
    @Override // java.security.cert.CRL
    public String toString() {
        String str;
        String dumpAsString;
        Object cRLDistPoint;
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append("              Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(lineSeparator);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(lineSeparator);
        stringBuffer.append("          This update: ");
        stringBuffer.append(getThisUpdate());
        stringBuffer.append(lineSeparator);
        stringBuffer.append("          Next update: ");
        stringBuffer.append(getNextUpdate());
        stringBuffer.append(lineSeparator);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(lineSeparator);
        X509SignatureUtil.prettyPrintSignature(getSignature(), stringBuffer, lineSeparator);
        Extensions extensions = this.f91373c.getTBSCertList().getExtensions();
        if (extensions != null) {
            Enumeration oids = extensions.oids();
            if (oids.hasMoreElements()) {
                str = "           Extensions: ";
                stringBuffer.append(str);
                stringBuffer.append(lineSeparator);
            }
            while (oids.hasMoreElements()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) oids.nextElement();
                Extension extension = extensions.getExtension(aSN1ObjectIdentifier);
                if (extension.getExtnValue() != null) {
                    ASN1InputStream aSN1InputStream = new ASN1InputStream(extension.getExtnValue().getOctets());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(extension.isCritical());
                    stringBuffer.append(") ");
                    try {
                    } catch (Exception unused) {
                        stringBuffer.append(aSN1ObjectIdentifier.getId());
                        stringBuffer.append(" value = ");
                        str = "*****";
                    }
                    if (aSN1ObjectIdentifier.equals((ASN1Primitive) Extension.cRLNumber)) {
                        cRLDistPoint = new CRLNumber(ASN1Integer.getInstance(aSN1InputStream.readObject()).getPositiveValue());
                    } else {
                        if (aSN1ObjectIdentifier.equals((ASN1Primitive) Extension.deltaCRLIndicator)) {
                            dumpAsString = "Base CRL: " + new CRLNumber(ASN1Integer.getInstance(aSN1InputStream.readObject()).getPositiveValue());
                        } else if (aSN1ObjectIdentifier.equals((ASN1Primitive) Extension.issuingDistributionPoint)) {
                            cRLDistPoint = IssuingDistributionPoint.getInstance(aSN1InputStream.readObject());
                        } else if (aSN1ObjectIdentifier.equals((ASN1Primitive) Extension.cRLDistributionPoints)) {
                            cRLDistPoint = CRLDistPoint.getInstance(aSN1InputStream.readObject());
                        } else if (aSN1ObjectIdentifier.equals((ASN1Primitive) Extension.freshestCRL)) {
                            cRLDistPoint = CRLDistPoint.getInstance(aSN1InputStream.readObject());
                        } else {
                            stringBuffer.append(aSN1ObjectIdentifier.getId());
                            stringBuffer.append(" value = ");
                            dumpAsString = ASN1Dump.dumpAsString(aSN1InputStream.readObject());
                        }
                        stringBuffer.append(dumpAsString);
                        stringBuffer.append(lineSeparator);
                    }
                    stringBuffer.append(cRLDistPoint);
                    stringBuffer.append(lineSeparator);
                } else {
                    stringBuffer.append(lineSeparator);
                }
            }
        }
        Set<Object> revokedCertificates = getRevokedCertificates();
        if (revokedCertificates != null) {
            for (Object obj : revokedCertificates) {
                stringBuffer.append(obj);
                stringBuffer.append(lineSeparator);
            }
        }
        return stringBuffer.toString();
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        doVerify(publicKey, new SignatureCreator() { // from class: org.bouncycastle.jcajce.provider.asymmetric.x509.X509CRLImpl.1
            @Override // org.bouncycastle.jcajce.provider.asymmetric.x509.SignatureCreator
            public Signature createSignature(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
                try {
                    return X509CRLImpl.this.bcHelper.createSignature(str);
                } catch (Exception unused) {
                    return Signature.getInstance(str);
                }
            }
        });
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, final String str) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        doVerify(publicKey, new SignatureCreator() { // from class: org.bouncycastle.jcajce.provider.asymmetric.x509.X509CRLImpl.2
            @Override // org.bouncycastle.jcajce.provider.asymmetric.x509.SignatureCreator
            public Signature createSignature(String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
                String str3 = str;
                return str3 != null ? Signature.getInstance(str2, str3) : Signature.getInstance(str2);
            }
        });
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, final Provider provider) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        try {
            doVerify(publicKey, new SignatureCreator() { // from class: org.bouncycastle.jcajce.provider.asymmetric.x509.X509CRLImpl.3
                @Override // org.bouncycastle.jcajce.provider.asymmetric.x509.SignatureCreator
                public Signature createSignature(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
                    return provider != null ? Signature.getInstance(X509CRLImpl.this.getSigAlgName(), provider) : Signature.getInstance(X509CRLImpl.this.getSigAlgName());
                }
            });
        } catch (NoSuchProviderException e4) {
            throw new NoSuchAlgorithmException("provider issue: " + e4.getMessage());
        }
    }
}
