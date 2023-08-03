package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class BERTaggedObject extends ASN1TaggedObject {
    public BERTaggedObject(int i4) {
        super(false, i4, new BERSequence());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERTaggedObject(int i4, int i10, int i11, ASN1Encodable aSN1Encodable) {
        super(i4, i10, i11, aSN1Encodable);
    }

    public BERTaggedObject(int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(true, i4, i10, aSN1Encodable);
    }

    public BERTaggedObject(int i4, ASN1Encodable aSN1Encodable) {
        super(true, i4, aSN1Encodable);
    }

    public BERTaggedObject(boolean z9, int i4, int i10, ASN1Encodable aSN1Encodable) {
        super(z9, i4, i10, aSN1Encodable);
    }

    public BERTaggedObject(boolean z9, int i4, ASN1Encodable aSN1Encodable) {
        super(z9, i4, aSN1Encodable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        boolean isExplicit = isExplicit();
        if (z9) {
            int i4 = this.tagClass;
            if (isExplicit || aSN1Primitive.encodeConstructed()) {
                i4 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, i4, this.tagNo);
        }
        if (!isExplicit) {
            aSN1Primitive.encode(aSN1OutputStream, false);
            return;
        }
        aSN1OutputStream.write(128);
        aSN1Primitive.encode(aSN1OutputStream, true);
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().encodeConstructed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        boolean isExplicit = isExplicit();
        int encodedLength = aSN1Primitive.encodedLength(isExplicit);
        if (isExplicit) {
            encodedLength += 3;
        }
        return encodedLength + (z9 ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    String getASN1Encoding() {
        return ASN1Encoding.BER;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new BERSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    ASN1TaggedObject replaceTag(int i4, int i10) {
        return new BERTaggedObject(this.explicitness, i4, i10, this.obj);
    }
}
