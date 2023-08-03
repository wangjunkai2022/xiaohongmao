package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class ASN1Boolean extends ASN1Primitive {
    private static final byte FALSE_VALUE = 0;
    private static final byte TRUE_VALUE = -1;
    private final byte value;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Boolean.class, 1) { // from class: org.bouncycastle.asn1.ASN1Boolean.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1Boolean.createPrimitive(dEROctetString.getOctets());
        }
    };
    public static final ASN1Boolean FALSE = new ASN1Boolean((byte) 0);
    public static final ASN1Boolean TRUE = new ASN1Boolean((byte) -1);

    private ASN1Boolean(byte b10) {
        this.value = b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Boolean createPrimitive(byte[] bArr) {
        if (bArr.length == 1) {
            byte b10 = bArr[0];
            return b10 != -1 ? b10 != 0 ? new ASN1Boolean(b10) : FALSE : TRUE;
        }
        throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }

    public static ASN1Boolean getInstance(int i4) {
        return i4 != 0 ? TRUE : FALSE;
    }

    public static ASN1Boolean getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Boolean)) {
            return (ASN1Boolean) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1Boolean) TYPE.fromByteArray((byte[]) obj);
        } catch (IOException e4) {
            throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e4.getMessage());
        }
    }

    public static ASN1Boolean getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1Boolean) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    public static ASN1Boolean getInstance(boolean z9) {
        return z9 ? TRUE : FALSE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        return (aSN1Primitive instanceof ASN1Boolean) && isTrue() == ((ASN1Boolean) aSN1Primitive).isTrue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 1, this.value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, 1);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return isTrue() ? 1 : 0;
    }

    public boolean isTrue() {
        return this.value != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return isTrue() ? TRUE : FALSE;
    }

    public String toString() {
        return isTrue() ? "TRUE" : "FALSE";
    }
}
