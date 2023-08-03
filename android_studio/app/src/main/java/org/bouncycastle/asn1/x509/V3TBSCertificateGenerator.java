package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;

/* loaded from: classes4.dex */
public class V3TBSCertificateGenerator {
    private boolean altNamePresentAndCritical;
    Time endDate;
    Extensions extensions;
    X500Name issuer;
    private DERBitString issuerUniqueID;
    ASN1Integer serialNumber;
    AlgorithmIdentifier signature;
    Time startDate;
    X500Name subject;
    SubjectPublicKeyInfo subjectPublicKeyInfo;
    private DERBitString subjectUniqueID;
    DERTaggedObject version = new DERTaggedObject(true, 0, (ASN1Encodable) new ASN1Integer(2));

    public TBSCertificate generateTBSCertificate() {
        if (this.serialNumber == null || this.signature == null || this.issuer == null || this.startDate == null || this.endDate == null || ((this.subject == null && !this.altNamePresentAndCritical) || this.subjectPublicKeyInfo == null)) {
            throw new IllegalStateException("not all mandatory fields set in V3 TBScertificate generator");
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(10);
        aSN1EncodableVector.add(this.version);
        aSN1EncodableVector.add(this.serialNumber);
        aSN1EncodableVector.add(this.signature);
        aSN1EncodableVector.add(this.issuer);
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector(2);
        aSN1EncodableVector2.add(this.startDate);
        aSN1EncodableVector2.add(this.endDate);
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        ASN1Encodable aSN1Encodable = this.subject;
        if (aSN1Encodable == null) {
            aSN1Encodable = new DERSequence();
        }
        aSN1EncodableVector.add(aSN1Encodable);
        aSN1EncodableVector.add(this.subjectPublicKeyInfo);
        DERBitString dERBitString = this.issuerUniqueID;
        if (dERBitString != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 1, (ASN1Encodable) dERBitString));
        }
        DERBitString dERBitString2 = this.subjectUniqueID;
        if (dERBitString2 != null) {
            aSN1EncodableVector.add(new DERTaggedObject(false, 2, (ASN1Encodable) dERBitString2));
        }
        Extensions extensions = this.extensions;
        if (extensions != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 3, (ASN1Encodable) extensions));
        }
        return TBSCertificate.getInstance(new DERSequence(aSN1EncodableVector));
    }

    public void setEndDate(ASN1UTCTime aSN1UTCTime) {
        this.endDate = new Time(aSN1UTCTime);
    }

    public void setEndDate(Time time) {
        this.endDate = time;
    }

    public void setExtensions(Extensions extensions) {
        Extension extension;
        this.extensions = extensions;
        if (extensions == null || (extension = extensions.getExtension(Extension.subjectAlternativeName)) == null || !extension.isCritical()) {
            return;
        }
        this.altNamePresentAndCritical = true;
    }

    public void setExtensions(X509Extensions x509Extensions) {
        setExtensions(Extensions.getInstance(x509Extensions));
    }

    public void setIssuer(X500Name x500Name) {
        this.issuer = x500Name;
    }

    public void setIssuer(X509Name x509Name) {
        this.issuer = X500Name.getInstance(x509Name);
    }

    public void setIssuerUniqueID(DERBitString dERBitString) {
        this.issuerUniqueID = dERBitString;
    }

    public void setSerialNumber(ASN1Integer aSN1Integer) {
        this.serialNumber = aSN1Integer;
    }

    public void setSignature(AlgorithmIdentifier algorithmIdentifier) {
        this.signature = algorithmIdentifier;
    }

    public void setStartDate(ASN1UTCTime aSN1UTCTime) {
        this.startDate = new Time(aSN1UTCTime);
    }

    public void setStartDate(Time time) {
        this.startDate = time;
    }

    public void setSubject(X500Name x500Name) {
        this.subject = x500Name;
    }

    public void setSubject(X509Name x509Name) {
        this.subject = X500Name.getInstance(x509Name.toASN1Primitive());
    }

    public void setSubjectPublicKeyInfo(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.subjectPublicKeyInfo = subjectPublicKeyInfo;
    }

    public void setSubjectUniqueID(DERBitString dERBitString) {
        this.subjectUniqueID = dERBitString;
    }
}
