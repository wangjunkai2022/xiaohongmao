package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DLBitString extends ASN1BitString {
    public DLBitString(byte b10, int i4) {
        super(b10, i4);
    }

    public DLBitString(int i4) {
        super(ASN1BitString.getBytes(i4), ASN1BitString.getPadBits(i4));
    }

    public DLBitString(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER), 0);
    }

    public DLBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public DLBitString(byte[] bArr, int i4) {
        super(bArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DLBitString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void encode(ASN1OutputStream aSN1OutputStream, boolean z9, byte b10, byte[] bArr, int i4, int i10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 3, b10, bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void encode(ASN1OutputStream aSN1OutputStream, boolean z9, byte[] bArr, int i4, int i10) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 3, bArr, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encodedLength(boolean z9, int i4) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, i4);
    }

    static DLBitString fromOctetString(ASN1OctetString aSN1OctetString) {
        return new DLBitString(aSN1OctetString.getOctets(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 3, this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.contents.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1BitString, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
