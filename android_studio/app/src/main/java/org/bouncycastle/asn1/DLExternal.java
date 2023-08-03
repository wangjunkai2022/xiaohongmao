package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DLExternal extends ASN1External {
    public DLExternal(ASN1EncodableVector aSN1EncodableVector) {
        this(DLFactory.createSequence(aSN1EncodableVector));
    }

    public DLExternal(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, int i4, ASN1Primitive aSN1Primitive2) {
        super(aSN1ObjectIdentifier, aSN1Integer, aSN1Primitive, i4, aSN1Primitive2);
    }

    public DLExternal(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, DERTaggedObject dERTaggedObject) {
        super(aSN1ObjectIdentifier, aSN1Integer, aSN1Primitive, dERTaggedObject);
    }

    public DLExternal(DLSequence dLSequence) {
        super(dLSequence);
    }

    @Override // org.bouncycastle.asn1.ASN1External
    ASN1Sequence buildSequence() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(4);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = this.directReference;
        if (aSN1ObjectIdentifier != null) {
            aSN1EncodableVector.add(aSN1ObjectIdentifier);
        }
        ASN1Integer aSN1Integer = this.indirectReference;
        if (aSN1Integer != null) {
            aSN1EncodableVector.add(aSN1Integer);
        }
        ASN1Primitive aSN1Primitive = this.dataValueDescriptor;
        if (aSN1Primitive != null) {
            aSN1EncodableVector.add(aSN1Primitive.toDLObject());
        }
        int i4 = this.encoding;
        aSN1EncodableVector.add(new DLTaggedObject(i4 == 0, i4, this.externalContent));
        return new DLSequence(aSN1EncodableVector);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1External, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
