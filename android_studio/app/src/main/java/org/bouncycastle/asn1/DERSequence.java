package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERSequence extends ASN1Sequence {
    private int contentsLength;

    public DERSequence() {
        this.contentsLength = -1;
    }

    public DERSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.contentsLength = -1;
    }

    public DERSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
        this.contentsLength = -1;
    }

    public DERSequence(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
        this.contentsLength = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERSequence(ASN1Encodable[] aSN1EncodableArr, boolean z9) {
        super(aSN1EncodableArr, z9);
        this.contentsLength = -1;
    }

    public static DERSequence convert(ASN1Sequence aSN1Sequence) {
        return (DERSequence) aSN1Sequence.toDERObject();
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
        aSN1OutputStream.writeIdentifier(z9, 48);
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
    @Override // org.bouncycastle.asn1.ASN1Sequence
    public ASN1BitString toASN1BitString() {
        return new DERBitString(BERBitString.flattenBitStrings(getConstructedBitStrings()), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence
    public ASN1External toASN1External() {
        return new DERExternal(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence
    public ASN1OctetString toASN1OctetString() {
        return new DEROctetString(BEROctetString.flattenOctetStrings(getConstructedOctetStrings()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence
    public ASN1Set toASN1Set() {
        return new DLSet(false, toArrayInternal());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
