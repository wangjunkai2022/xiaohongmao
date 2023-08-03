package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class ASN1Enumerated extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Enumerated.class, 10) { // from class: org.bouncycastle.asn1.ASN1Enumerated.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1Enumerated.createPrimitive(dEROctetString.getOctets(), false);
        }
    };
    private static final ASN1Enumerated[] cache = new ASN1Enumerated[12];
    private final byte[] contents;
    private final int start;

    public ASN1Enumerated(int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = BigInteger.valueOf(i4).toByteArray();
        this.start = 0;
    }

    public ASN1Enumerated(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = bigInteger.toByteArray();
        this.start = 0;
    }

    public ASN1Enumerated(byte[] bArr) {
        this(bArr, true);
    }

    ASN1Enumerated(byte[] bArr, boolean z9) {
        if (ASN1Integer.isMalformed(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & 128) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = z9 ? Arrays.clone(bArr) : bArr;
        this.start = ASN1Integer.signBytesToSkip(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Enumerated createPrimitive(byte[] bArr, boolean z9) {
        if (bArr.length > 1) {
            return new ASN1Enumerated(bArr, z9);
        }
        if (bArr.length != 0) {
            int i4 = bArr[0] & 255;
            ASN1Enumerated[] aSN1EnumeratedArr = cache;
            if (i4 >= aSN1EnumeratedArr.length) {
                return new ASN1Enumerated(bArr, z9);
            }
            ASN1Enumerated aSN1Enumerated = aSN1EnumeratedArr[i4];
            if (aSN1Enumerated == null) {
                ASN1Enumerated aSN1Enumerated2 = new ASN1Enumerated(bArr, z9);
                aSN1EnumeratedArr[i4] = aSN1Enumerated2;
                return aSN1Enumerated2;
            }
            return aSN1Enumerated;
        }
        throw new IllegalArgumentException("ENUMERATED has zero length");
    }

    public static ASN1Enumerated getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Enumerated)) {
            return (ASN1Enumerated) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1Enumerated) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static ASN1Enumerated getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1Enumerated) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Enumerated) {
            return Arrays.areEqual(this.contents, ((ASN1Enumerated) aSN1Primitive).contents);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 10, this.contents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.contents.length);
    }

    public BigInteger getValue() {
        return new BigInteger(this.contents);
    }

    public boolean hasValue(int i4) {
        byte[] bArr = this.contents;
        int length = bArr.length;
        int i10 = this.start;
        return length - i10 <= 4 && ASN1Integer.intValue(bArr, i10, -1) == i4;
    }

    public boolean hasValue(BigInteger bigInteger) {
        return bigInteger != null && ASN1Integer.intValue(this.contents, this.start, -1) == bigInteger.intValue() && getValue().equals(bigInteger);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    public int intValueExact() {
        byte[] bArr = this.contents;
        int length = bArr.length;
        int i4 = this.start;
        if (length - i4 <= 4) {
            return ASN1Integer.intValue(bArr, i4, -1);
        }
        throw new ArithmeticException("ASN.1 Enumerated out of int range");
    }
}
