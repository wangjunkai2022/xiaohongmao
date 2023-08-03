package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERUniversalString extends ASN1UniversalString {
    public DERUniversalString(byte[] bArr) {
        this(bArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERUniversalString(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERUniversalString getInstance(Object obj) {
        if (obj == null || (obj instanceof DERUniversalString)) {
            return (DERUniversalString) obj;
        }
        if (obj instanceof ASN1UniversalString) {
            return new DERUniversalString(((ASN1UniversalString) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERUniversalString) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error getInstance: " + e4.toString());
        }
    }

    public static DERUniversalString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERUniversalString)) ? getInstance((Object) object) : new DERUniversalString(ASN1OctetString.getInstance(object).getOctets(), true);
    }
}
