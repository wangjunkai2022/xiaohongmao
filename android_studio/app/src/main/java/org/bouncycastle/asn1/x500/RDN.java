package org.bouncycastle.asn1.x500;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;

/* loaded from: classes4.dex */
public class RDN extends ASN1Object {
    private ASN1Set values;

    public RDN(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(aSN1ObjectIdentifier);
        aSN1EncodableVector.add(aSN1Encodable);
        this.values = new DERSet(new DERSequence(aSN1EncodableVector));
    }

    private RDN(ASN1Set aSN1Set) {
        this.values = aSN1Set;
    }

    public RDN(AttributeTypeAndValue attributeTypeAndValue) {
        this.values = new DERSet(attributeTypeAndValue);
    }

    public RDN(AttributeTypeAndValue[] attributeTypeAndValueArr) {
        this.values = new DERSet(attributeTypeAndValueArr);
    }

    public static RDN getInstance(Object obj) {
        if (obj instanceof RDN) {
            return (RDN) obj;
        }
        if (obj != null) {
            return new RDN(ASN1Set.getInstance(obj));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int collectAttributeTypes(ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr, int i4) {
        int size = this.values.size();
        for (int i10 = 0; i10 < size; i10++) {
            aSN1ObjectIdentifierArr[i4 + i10] = AttributeTypeAndValue.getInstance(this.values.getObjectAt(i10)).getType();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsAttributeType(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        int size = this.values.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (AttributeTypeAndValue.getInstance(this.values.getObjectAt(i4)).getType().equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                return true;
            }
        }
        return false;
    }

    public AttributeTypeAndValue getFirst() {
        if (this.values.size() == 0) {
            return null;
        }
        return AttributeTypeAndValue.getInstance(this.values.getObjectAt(0));
    }

    public AttributeTypeAndValue[] getTypesAndValues() {
        int size = this.values.size();
        AttributeTypeAndValue[] attributeTypeAndValueArr = new AttributeTypeAndValue[size];
        for (int i4 = 0; i4 != size; i4++) {
            attributeTypeAndValueArr[i4] = AttributeTypeAndValue.getInstance(this.values.getObjectAt(i4));
        }
        return attributeTypeAndValueArr;
    }

    public boolean isMultiValued() {
        return this.values.size() > 1;
    }

    public int size() {
        return this.values.size();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.values;
    }
}
