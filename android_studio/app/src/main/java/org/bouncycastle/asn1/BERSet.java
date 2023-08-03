package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class BERSet extends ASN1Set {
    public BERSet() {
    }

    public BERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public BERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERSet(boolean z9, ASN1Encodable[] aSN1EncodableArr) {
        super(z9, aSN1EncodableArr);
    }

    public BERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingIL(z9, 49, this.elements);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        int i4 = z9 ? 4 : 3;
        int length = this.elements.length;
        for (int i10 = 0; i10 < length; i10++) {
            i4 += this.elements[i10].toASN1Primitive().encodedLength(true);
        }
        return i4;
    }
}
