package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERBMPString extends ASN1BMPString {
    public DERBMPString(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERBMPString(byte[] bArr) {
        super(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERBMPString(char[] cArr) {
        super(cArr);
    }

    public static DERBMPString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERBMPString)) {
            return (DERBMPString) obj;
        }
        if (obj instanceof ASN1BMPString) {
            return new DERBMPString(((ASN1BMPString) obj).string);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERBMPString) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERBMPString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERBMPString)) ? getInstance((Object) object) : new DERBMPString(ASN1OctetString.getInstance(object).getOctets());
    }
}
