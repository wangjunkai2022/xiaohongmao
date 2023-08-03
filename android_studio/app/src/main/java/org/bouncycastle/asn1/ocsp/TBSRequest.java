package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.X509Extensions;

/* loaded from: classes4.dex */
public class TBSRequest extends ASN1Object {
    private static final ASN1Integer V1 = new ASN1Integer(0);
    Extensions requestExtensions;
    ASN1Sequence requestList;
    GeneralName requestorName;
    ASN1Integer version;
    boolean versionSet;

    private TBSRequest(ASN1Sequence aSN1Sequence) {
        int i4 = 0;
        if ((aSN1Sequence.getObjectAt(0) instanceof ASN1TaggedObject) && ((ASN1TaggedObject) aSN1Sequence.getObjectAt(0)).getTagNo() == 0) {
            this.versionSet = true;
            this.version = ASN1Integer.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(0), true);
            i4 = 1;
        } else {
            this.version = V1;
        }
        if (aSN1Sequence.getObjectAt(i4) instanceof ASN1TaggedObject) {
            this.requestorName = GeneralName.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(i4), true);
            i4++;
        }
        int i10 = i4 + 1;
        this.requestList = (ASN1Sequence) aSN1Sequence.getObjectAt(i4);
        if (aSN1Sequence.size() == i10 + 1) {
            this.requestExtensions = Extensions.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(i10), true);
        }
    }

    public TBSRequest(GeneralName generalName, ASN1Sequence aSN1Sequence, Extensions extensions) {
        this.version = V1;
        this.requestorName = generalName;
        this.requestList = aSN1Sequence;
        this.requestExtensions = extensions;
    }

    public TBSRequest(GeneralName generalName, ASN1Sequence aSN1Sequence, X509Extensions x509Extensions) {
        this.version = V1;
        this.requestorName = generalName;
        this.requestList = aSN1Sequence;
        this.requestExtensions = Extensions.getInstance(x509Extensions);
    }

    public static TBSRequest getInstance(Object obj) {
        if (obj instanceof TBSRequest) {
            return (TBSRequest) obj;
        }
        if (obj != null) {
            return new TBSRequest(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static TBSRequest getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z9));
    }

    public Extensions getRequestExtensions() {
        return this.requestExtensions;
    }

    public ASN1Sequence getRequestList() {
        return this.requestList;
    }

    public GeneralName getRequestorName() {
        return this.requestorName;
    }

    public ASN1Integer getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(4);
        if (!this.version.equals((ASN1Primitive) V1) || this.versionSet) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 0, (ASN1Encodable) this.version));
        }
        GeneralName generalName = this.requestorName;
        if (generalName != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 1, (ASN1Encodable) generalName));
        }
        aSN1EncodableVector.add(this.requestList);
        Extensions extensions = this.requestExtensions;
        if (extensions != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 2, (ASN1Encodable) extensions));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
