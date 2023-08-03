package org.bouncycastle.asn1;

/* loaded from: classes4.dex */
public class DERUTF8String extends ASN1UTF8String {
    public DERUTF8String(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DERUTF8String(byte[] bArr, boolean z9) {
        super(bArr, z9);
    }

    public static DERUTF8String getInstance(Object obj) {
        if (obj == null || (obj instanceof DERUTF8String)) {
            return (DERUTF8String) obj;
        }
        if (obj instanceof ASN1UTF8String) {
            return new DERUTF8String(((ASN1UTF8String) obj).contents, false);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (DERUTF8String) ASN1Primitive.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static DERUTF8String getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        ASN1Primitive object = aSN1TaggedObject.getObject();
        return (z9 || (object instanceof DERUTF8String)) ? getInstance((Object) object) : new DERUTF8String(ASN1OctetString.getInstance(object).getOctets(), true);
    }
}
