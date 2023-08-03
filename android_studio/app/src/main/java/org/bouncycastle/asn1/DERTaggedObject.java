package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERTaggedObject extends ASN1TaggedObject {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DERTaggedObject(int i4, int i10, int i11, ASN1Encodable aSN1Encodable) {
        super(i4, i10, i11, aSN1Encodable);
    }

    public DERTaggedObject(int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(true, i4, i10, aSN1Encodable);
    }

    public DERTaggedObject(int i4, ASN1Encodable aSN1Encodable) {
        super(true, i4, aSN1Encodable);
    }

    public DERTaggedObject(boolean z9, int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(z9, i4, i10, aSN1Encodable);
    }

    public DERTaggedObject(boolean z9, int i4, ASN1Encodable aSN1Encodable) {
        super(z9, i4, aSN1Encodable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        ASN1Primitive dERObject = this.obj.toASN1Primitive().toDERObject();
        boolean isExplicit = isExplicit();
        if (z9) {
            int i4 = this.tagClass;
            if (isExplicit || dERObject.encodeConstructed()) {
                i4 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, i4, this.tagNo);
        }
        if (isExplicit) {
            aSN1OutputStream.writeDL(dERObject.encodedLength(true));
        }
        dERObject.encode(aSN1OutputStream.getDERSubStream(), isExplicit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().toDERObject().encodeConstructed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        ASN1Primitive dERObject = this.obj.toASN1Primitive().toDERObject();
        boolean isExplicit = isExplicit();
        int encodedLength = dERObject.encodedLength(isExplicit);
        if (isExplicit) {
            encodedLength += ASN1OutputStream.getLengthOfDL(encodedLength);
        }
        return encodedLength + (z9 ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    String getASN1Encoding() {
        return ASN1Encoding.DER;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new DERSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1TaggedObject replaceTag(int i4, int i10) {
        return new DERTaggedObject(this.explicitness, i4, i10, this.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
