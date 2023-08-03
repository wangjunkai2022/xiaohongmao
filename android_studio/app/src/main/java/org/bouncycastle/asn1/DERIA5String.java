package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERIA5String extends ASN1IA5String {
    public DERIA5String(String str) {
        this(str, false);
    }

    public DERIA5String(String str, boolean z9) {
        super(str, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERIA5String(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERIA5String getInstance(Object obj) {
        if (obj == null || (obj instanceof DERIA5String)) {
            return (DERIA5String) obj;
        }
        if (obj instanceof ASN1IA5String) {
            return new DERIA5String(((ASN1IA5String) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERIA5String) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERIA5String getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERIA5String)) ? getInstance((Object) object) : new DERIA5String(ASN1OctetString.getInstance(object).getOctets(), true);
    }
}
