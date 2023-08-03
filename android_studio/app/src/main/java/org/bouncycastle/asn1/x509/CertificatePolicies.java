package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes4.dex */
public class CertificatePolicies extends ASN1Object {
    private final PolicyInformation[] policyInformation;

    private CertificatePolicies(ASN1Sequence aSN1Sequence) {
        this.policyInformation = new PolicyInformation[aSN1Sequence.size()];
        for (int i4 = 0; i4 != aSN1Sequence.size(); i4++) {
            this.policyInformation[i4] = PolicyInformation.getInstance(aSN1Sequence.getObjectAt(i4));
        }
    }

    public CertificatePolicies(PolicyInformation policyInformation) {
        this.policyInformation = new PolicyInformation[]{policyInformation};
    }

    public CertificatePolicies(PolicyInformation[] policyInformationArr) {
        this.policyInformation = copy(policyInformationArr);
    }

    private static PolicyInformation[] copy(PolicyInformation[] policyInformationArr) {
        PolicyInformation[] policyInformationArr2 = new PolicyInformation[policyInformationArr.length];
        System.arraycopy(policyInformationArr, 0, policyInformationArr2, 0, policyInformationArr.length);
        return policyInformationArr2;
    }

    public static CertificatePolicies fromExtensions(Extensions extensions) {
        return getInstance(Extensions.getExtensionParsedValue(extensions, Extension.certificatePolicies));
    }

    public static CertificatePolicies getInstance(Object obj) {
        if (obj instanceof CertificatePolicies) {
            return (CertificatePolicies) obj;
        }
        if (obj != null) {
            return new CertificatePolicies(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static CertificatePolicies getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z9));
    }

    public PolicyInformation getPolicyInformation(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        int i4 = 0;
        while (true) {
            PolicyInformation[] policyInformationArr = this.policyInformation;
            if (i4 == policyInformationArr.length) {
                return null;
            }
            if (aSN1ObjectIdentifier.equals((ASN1Primitive) policyInformationArr[i4].getPolicyIdentifier())) {
                return this.policyInformation[i4];
            }
            i4++;
        }
    }

    public PolicyInformation[] getPolicyInformation() {
        return copy(this.policyInformation);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(this.policyInformation);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.policyInformation.length; i4++) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.policyInformation[i4]);
        }
        return "CertificatePolicies: [" + ((Object) stringBuffer) + "]";
    }
}
