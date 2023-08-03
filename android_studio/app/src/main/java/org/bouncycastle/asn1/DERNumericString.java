package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERNumericString extends ASN1NumericString {
    public DERNumericString(String str) {
        this(str, false);
    }

    public DERNumericString(String str, boolean z9) {
        super(str, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERNumericString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERNumericString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERNumericString)) {
            return (DERNumericString) obj;
        }
        if (obj instanceof ASN1NumericString) {
            return new DERNumericString(((ASN1NumericString) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERNumericString) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERNumericString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERNumericString)) ? getInstance((Object) object) : new DERNumericString(ASN1OctetString.getInstance(object).getOctets(), true);
    }
}
