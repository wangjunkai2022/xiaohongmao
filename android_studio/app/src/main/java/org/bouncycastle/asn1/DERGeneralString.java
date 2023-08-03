package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERGeneralString extends ASN1GeneralString {
    public DERGeneralString(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERGeneralString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERGeneralString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERGeneralString)) {
            return (DERGeneralString) obj;
        }
        if (obj instanceof ASN1GeneralString) {
            return new DERGeneralString(((ASN1GeneralString) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERGeneralString) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERGeneralString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERGeneralString)) ? getInstance((Object) object) : new DERGeneralString(ASN1OctetString.getInstance(object).getOctets(), true);
    }
}
