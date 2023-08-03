package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERGraphicString extends ASN1GraphicString {
    public DERGraphicString(byte[] bArr) {
        this(bArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERGraphicString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERGraphicString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERGraphicString)) {
            return (DERGraphicString) obj;
        }
        if (obj instanceof ASN1GraphicString) {
            return new DERGraphicString(((ASN1GraphicString) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERGraphicString) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERGraphicString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERGraphicString)) ? getInstance((Object) object) : new DERGraphicString(ASN1OctetString.getInstance(object).getOctets());
    }
}
