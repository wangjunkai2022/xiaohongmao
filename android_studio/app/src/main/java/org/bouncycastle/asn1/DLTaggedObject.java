package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DLTaggedObject extends ASN1TaggedObject {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DLTaggedObject(int i4, int i10, int i11, ASN1Encodable aSN1Encodable) {
        super(i4, i10, i11, aSN1Encodable);
    }

    public DLTaggedObject(int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(true, i4, i10, aSN1Encodable);
    }

    public DLTaggedObject(int i4, ASN1Encodable aSN1Encodable) {
        super(true, i4, aSN1Encodable);
    }

    public DLTaggedObject(boolean z9, int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(z9, i4, i10, aSN1Encodable);
    }

    public DLTaggedObject(boolean z9, int i4, ASN1Encodable aSN1Encodable) {
        super(z9, i4, aSN1Encodable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        ASN1Primitive dLObject = this.obj.toASN1Primitive().toDLObject();
        boolean isExplicit = isExplicit();
        if (z9) {
            int i4 = this.tagClass;
            if (isExplicit || dLObject.encodeConstructed()) {
                i4 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, i4, this.tagNo);
        }
        if (isExplicit) {
            aSN1OutputStream.writeDL(dLObject.encodedLength(true));
        }
        dLObject.encode(aSN1OutputStream.getDLSubStream(), isExplicit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().toDLObject().encodeConstructed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        ASN1Primitive dLObject = this.obj.toASN1Primitive().toDLObject();
        boolean isExplicit = isExplicit();
        int encodedLength = dLObject.encodedLength(isExplicit);
        if (isExplicit) {
            encodedLength += ASN1OutputStream.getLengthOfDL(encodedLength);
        }
        return encodedLength + (z9 ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    String getASN1Encoding() {
        return ASN1Encoding.DL;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new DLSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1TaggedObject replaceTag(int i4, int i10) {
        return new DLTaggedObject(this.explicitness, i4, i10, this.obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
