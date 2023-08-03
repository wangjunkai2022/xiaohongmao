package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class DERBitString extends ASN1BitString {
    public DERBitString(byte b10, int i4) {
        super(b10, i4);
    }

    public DERBitString(int i4) {
        super(ASN1BitString.getBytes(i4), ASN1BitString.getPadBits(i4));
    }

    public DERBitString(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER), 0);
    }

    public DERBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public DERBitString(byte[] bArr, int i4) {
        super(bArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERBitString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERBitString convert(ASN1BitString aSN1BitString) {
        return (DERBitString) aSN1BitString.toDERObject();
    }

    static DERBitString fromOctetString(ASN1OctetString aSN1OctetString) {
        return new DERBitString(aSN1OctetString.getOctets(), true);
    }

    public static DERBitString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERBitString)) {
            return (DERBitString) obj;
        }
        if (obj instanceof ASN1BitString) {
            return convert((ASN1BitString) obj);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return convert((ASN1BitString) ASN1Primitive.fromByteArray((byte[]) obj));
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERBitString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERBitString)) ? getInstance((Object) object) : fromOctetString(ASN1OctetString.getInstance(object));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        byte[] bArr = this.contents;
        int length = bArr.length - 1;
        byte b10 = bArr[length];
        byte b11 = (byte) ((255 << (bArr[0] & 255)) & bArr[length]);
        if (b10 == b11) {
            aSN1OutputStream.writeEncodingDL(z9, 3, bArr);
        } else {
            aSN1OutputStream.writeEncodingDL(z9, 3, bArr, 0, length, b11);
        }
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
    public ASN1Primitive toDERObject() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1BitString, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
