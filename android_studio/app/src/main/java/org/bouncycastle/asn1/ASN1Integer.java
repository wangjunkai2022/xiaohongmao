package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes4.dex */
public class ASN1Integer extends ASN1Primitive {
    static final int SIGN_EXT_SIGNED = -1;
    static final int SIGN_EXT_UNSIGNED = 255;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Integer.class, 2) { // from class: org.bouncycastle.asn1.ASN1Integer.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1Integer.createPrimitive(dEROctetString.getOctets());
        }
    };
    private final byte[] bytes;
    private final int start;

    public ASN1Integer(long j4) {
        this.bytes = BigInteger.valueOf(j4).toByteArray();
        this.start = 0;
    }

    public ASN1Integer(BigInteger bigInteger) {
        this.bytes = bigInteger.toByteArray();
        this.start = 0;
    }

    public ASN1Integer(byte[] bArr) {
        this(bArr, true);
    }

    ASN1Integer(byte[] bArr, boolean z9) {
        if (isMalformed(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.bytes = z9 ? Arrays.clone(bArr) : bArr;
        this.start = signBytesToSkip(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Integer createPrimitive(byte[] bArr) {
        return new ASN1Integer(bArr, false);
    }

    public static ASN1Integer getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Integer)) {
            return (ASN1Integer) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (ASN1Integer) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e4) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e4.toString());
        }
    }

    public static ASN1Integer getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1Integer) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int intValue(byte[] bArr, int i4, int i10) {
        int length = bArr.length;
        int max = Math.max(i4, length - 4);
        int i11 = i10 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return i11;
            }
            i11 = (i11 << 8) | (bArr[max] & 255);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isMalformed(byte[] bArr) {
        int length = bArr.length;
        if (length != 0) {
            return (length == 1 || bArr[0] != (bArr[1] >> 7) || Properties.isOverrideSet("org.bouncycastle.asn1.allow_unsafe_integer")) ? false : true;
        }
        return true;
    }

    static long longValue(byte[] bArr, int i4, int i10) {
        int length = bArr.length;
        int max = Math.max(i4, length - 8);
        long j4 = i10 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return j4;
            }
            j4 = (j4 << 8) | (bArr[max] & 255);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int signBytesToSkip(byte[] bArr) {
        int length = bArr.length - 1;
        int i4 = 0;
        while (i4 < length) {
            int i10 = i4 + 1;
            if (bArr[i4] != (bArr[i10] >> 7)) {
                break;
            }
            i4 = i10;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Integer) {
            return Arrays.areEqual(this.bytes, ((ASN1Integer) aSN1Primitive).bytes);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 2, this.bytes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, this.bytes.length);
    }

    public BigInteger getPositiveValue() {
        return new BigInteger(1, this.bytes);
    }

    public BigInteger getValue() {
        return new BigInteger(this.bytes);
    }

    public boolean hasValue(int i4) {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i10 = this.start;
        return length - i10 <= 4 && intValue(bArr, i10, -1) == i4;
    }

    public boolean hasValue(long j4) {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i4 = this.start;
        return length - i4 <= 8 && longValue(bArr, i4, -1) == j4;
    }

    public boolean hasValue(BigInteger bigInteger) {
        return bigInteger != null && intValue(this.bytes, this.start, -1) == bigInteger.intValue() && getValue().equals(bigInteger);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.bytes);
    }

    public int intPositiveValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i4 = this.start;
        int i10 = length - i4;
        if (i10 > 4 || (i10 == 4 && (bArr[i4] & 128) != 0)) {
            throw new ArithmeticException("ASN.1 Integer out of positive int range");
        }
        return intValue(bArr, i4, 255);
    }

    public int intValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i4 = this.start;
        if (length - i4 <= 4) {
            return intValue(bArr, i4, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long longValueExact() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i4 = this.start;
        if (length - i4 <= 8) {
            return longValue(bArr, i4, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    public String toString() {
        return getValue().toString();
    }
}
