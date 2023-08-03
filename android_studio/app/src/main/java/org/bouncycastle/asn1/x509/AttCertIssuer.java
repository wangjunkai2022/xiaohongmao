package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes4.dex */
public class AttCertIssuer extends ASN1Object implements ASN1Choice {
    ASN1Primitive choiceObj;
    ASN1Encodable obj;

    public AttCertIssuer(GeneralNames generalNames) {
        this.obj = generalNames;
        this.choiceObj = generalNames.toASN1Primitive();
    }

    public AttCertIssuer(V2Form v2Form) {
        this.obj = v2Form;
        this.choiceObj = new DERTaggedObject(false, 0, (ASN1Encodable) v2Form);
    }

    public static AttCertIssuer getInstance(Object obj) {
        if (obj == null || (obj instanceof AttCertIssuer)) {
            return (AttCertIssuer) obj;
        }
        if (obj instanceof V2Form) {
            return new AttCertIssuer(V2Form.getInstance(obj));
        }
        if (obj instanceof GeneralNames) {
            return new AttCertIssuer((GeneralNames) obj);
        }
        if (obj instanceof ASN1TaggedObject) {
            return new AttCertIssuer(V2Form.getInstance((ASN1TaggedObject) obj, false));
        }
        if (obj instanceof ASN1Sequence) {
            return new AttCertIssuer(GeneralNames.getInstance(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static AttCertIssuer getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public ASN1Encodable getIssuer() {
        return this.obj;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.choiceObj;
    }
}
