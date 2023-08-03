package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERSet extends ASN1Set {
    private int contentsLength;

    public DERSet() {
        this.contentsLength = -1;
    }

    public DERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.contentsLength = -1;
    }

    public DERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, true);
        this.contentsLength = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERSet(boolean z9, ASN1Encodable[] aSN1EncodableArr) {
        super(checkSorted(z9), aSN1EncodableArr);
        this.contentsLength = -1;
    }

    public DERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, true);
        this.contentsLength = -1;
    }

    private static boolean checkSorted(boolean z9) {
        if (z9) {
            return z9;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    public static DERSet convert(ASN1Set aSN1Set) {
        return (DERSet) aSN1Set.toDERObject();
    }

    private int getContentsLength() throws IOException {
        if (this.contentsLength < 0) {
            int length = this.elements.length;
            int i4 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                i4 += this.elements[i10].toASN1Primitive().toDERObject().encodedLength(true);
            }
            this.contentsLength = i4;
        }
        return this.contentsLength;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeIdentifier(z9, 49);
        DEROutputStream dERSubStream = aSN1OutputStream.getDERSubStream();
        int length = this.elements.length;
        int i4 = 0;
        if (this.contentsLength >= 0 || length > 16) {
            aSN1OutputStream.writeDL(getContentsLength());
            while (i4 < length) {
                this.elements[i4].toASN1Primitive().toDERObject().encode(dERSubStream, true);
                i4++;
            }
            return;
        }
        ASN1Primitive[] aSN1PrimitiveArr = new ASN1Primitive[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            ASN1Primitive dERObject = this.elements[i11].toASN1Primitive().toDERObject();
            aSN1PrimitiveArr[i11] = dERObject;
            i10 += dERObject.encodedLength(true);
        }
        this.contentsLength = i10;
        aSN1OutputStream.writeDL(i10);
        while (i4 < length) {
            aSN1PrimitiveArr[i4].encode(dERSubStream, true);
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, getContentsLength());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Set, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return this.isSorted ? this : super.toDERObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Set, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
