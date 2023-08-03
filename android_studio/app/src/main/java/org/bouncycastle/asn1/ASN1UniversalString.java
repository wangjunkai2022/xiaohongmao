package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public abstract class ASN1UniversalString extends ASN1Primitive implements ASN1String {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1UniversalString.class, 28) { // from class: org.bouncycastle.asn1.ASN1UniversalString.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1UniversalString.createPrimitive(dEROctetString.getOctets());
        }
    };
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final byte[] contents;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1UniversalString(byte[] bArr, boolean z9) {
        this.contents = z9 ? Arrays.clone(bArr) : bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1UniversalString createPrimitive(byte[] bArr) {
        return new DERUniversalString(bArr, false);
    }

    private static void encodeHexByte(StringBuffer stringBuffer, int i4) {
        char[] cArr = table;
        stringBuffer.append(cArr[(i4 >>> 4) & 15]);
        stringBuffer.append(cArr[i4 & 15]);
    }

    private static void encodeHexDL(StringBuffer stringBuffer, int i4) {
        if (i4 < 128) {
            encodeHexByte(stringBuffer, i4);
            return;
        }
        byte[] bArr = new byte[5];
        int i10 = 5;
        do {
            i10--;
            bArr[i10] = (byte) i4;
            i4 >>>= 8;
        } while (i4 != 0);
        int i11 = 5 - i10;
        int i12 = i10 - 1;
        bArr[i12] = (byte) (i11 | 128);
        while (true) {
            int i13 = i12 + 1;
            encodeHexByte(stringBuffer, bArr[i12]);
            if (i13 >= 5) {
                return;
            }
            i12 = i13;
        }
    }

    public static ASN1UniversalString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1UniversalString)) {
            return (ASN1UniversalString) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1UniversalString) {
                return (ASN1UniversalString) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1UniversalString) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error getInstance: " + e4.toString());
        }
    }

    public static ASN1UniversalString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1UniversalString) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1UniversalString) {
            return Arrays.areEqual(this.contents, ((ASN1UniversalString) aSN1Primitive).contents);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 28, this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.contents.length);
    }

    public final byte[] getOctets() {
        return Arrays.clone(this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public final String getString() {
        int length = this.contents.length;
        StringBuffer stringBuffer = new StringBuffer(((ASN1OutputStream.getLengthOfDL(length) + length) * 2) + 3);
        stringBuffer.append("#1C");
        encodeHexDL(stringBuffer, length);
        for (int i4 = 0; i4 < length; i4++) {
            encodeHexByte(stringBuffer, this.contents[i4]);
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    public String toString() {
        return getString();
    }
}
