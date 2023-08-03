package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public abstract class ASN1BMPString extends ASN1Primitive implements ASN1String {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1BMPString.class, 30) { // from class: org.bouncycastle.asn1.ASN1BMPString.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1BMPString.createPrimitive(dEROctetString.getOctets());
        }
    };
    final char[] string;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BMPString(String str) {
        Objects.requireNonNull(str, "'string' cannot be null");
        this.string = str.toCharArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BMPString(byte[] bArr) {
        Objects.requireNonNull(bArr, "'string' cannot be null");
        int length = bArr.length;
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("malformed BMPString encoding encountered");
        }
        int i4 = length / 2;
        char[] cArr = new char[i4];
        for (int i10 = 0; i10 != i4; i10++) {
            int i11 = i10 * 2;
            cArr[i10] = (char) ((bArr[i11 + 1] & 255) | (bArr[i11] << 8));
        }
        this.string = cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BMPString(char[] cArr) {
        Objects.requireNonNull(cArr, "'string' cannot be null");
        this.string = cArr;
    }

    static ASN1BMPString createPrimitive(byte[] bArr) {
        return new DERBMPString(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1BMPString createPrimitive(char[] cArr) {
        return new DERBMPString(cArr);
    }

    public static ASN1BMPString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1BMPString)) {
            return (ASN1BMPString) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1BMPString) {
                return (ASN1BMPString) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1BMPString) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static ASN1BMPString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1BMPString) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1BMPString) {
            return Arrays.areEqual(this.string, ((ASN1BMPString) aSN1Primitive).string);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        int length = this.string.length;
        aSN1OutputStream.writeIdentifier(z9, 30);
        aSN1OutputStream.writeDL(length * 2);
        byte[] bArr = new byte[8];
        int i4 = length & (-4);
        int i10 = 0;
        while (i10 < i4) {
            char[] cArr = this.string;
            char c10 = cArr[i10];
            char c11 = cArr[i10 + 1];
            char c12 = cArr[i10 + 2];
            char c13 = cArr[i10 + 3];
            i10 += 4;
            bArr[0] = (byte) (c10 >> '\b');
            bArr[1] = (byte) c10;
            bArr[2] = (byte) (c11 >> '\b');
            bArr[3] = (byte) c11;
            bArr[4] = (byte) (c12 >> '\b');
            bArr[5] = (byte) c12;
            bArr[6] = (byte) (c13 >> '\b');
            bArr[7] = (byte) c13;
            aSN1OutputStream.write(bArr, 0, 8);
        }
        if (i10 < length) {
            int i11 = 0;
            do {
                char c14 = this.string[i10];
                i10++;
                int i12 = i11 + 1;
                bArr[i11] = (byte) (c14 >> '\b');
                i11 = i12 + 1;
                bArr[i12] = (byte) c14;
            } while (i10 < length);
            aSN1OutputStream.write(bArr, 0, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.string.length * 2);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public final String getString() {
        return new String(this.string);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.hashCode(this.string);
    }

    public String toString() {
        return getString();
    }
}
