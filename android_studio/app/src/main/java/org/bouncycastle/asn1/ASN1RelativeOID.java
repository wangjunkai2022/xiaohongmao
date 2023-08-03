package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
public class ASN1RelativeOID extends ASN1Primitive {
    private static final long LONG_LIMIT = 72057594037927808L;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1RelativeOID.class, 13) { // from class: org.bouncycastle.asn1.ASN1RelativeOID.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1RelativeOID.createPrimitive(dEROctetString.getOctets(), false);
        }
    };
    private byte[] contents;
    private final String identifier;

    public ASN1RelativeOID(String str) {
        Objects.requireNonNull(str, "'identifier' cannot be null");
        if (isValidIdentifier(str, 0)) {
            this.identifier = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a relative OID");
    }

    ASN1RelativeOID(ASN1RelativeOID aSN1RelativeOID, String str) {
        if (!isValidIdentifier(str, 0)) {
            throw new IllegalArgumentException("string " + str + " not a valid OID branch");
        }
        this.identifier = aSN1RelativeOID.getId() + "." + str;
    }

    private ASN1RelativeOID(byte[] bArr, boolean z9) {
        byte[] bArr2 = bArr;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        long j4 = 0;
        BigInteger bigInteger = null;
        for (int i4 = 0; i4 != bArr2.length; i4++) {
            int i10 = bArr2[i4] & 255;
            if (j4 <= LONG_LIMIT) {
                long j10 = j4 + (i10 & 127);
                if ((i10 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(j10);
                    j4 = 0;
                } else {
                    j4 = j10 << 7;
                }
            } else {
                BigInteger or = (bigInteger == null ? BigInteger.valueOf(j4) : bigInteger).or(BigInteger.valueOf(i10 & 127));
                if ((i10 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(or);
                    j4 = 0;
                    bigInteger = null;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        this.identifier = stringBuffer.toString();
        this.contents = z9 ? Arrays.clone(bArr) : bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1RelativeOID createPrimitive(byte[] bArr, boolean z9) {
        return new ASN1RelativeOID(bArr, z9);
    }

    private void doOutput(ByteArrayOutputStream byteArrayOutputStream) {
        OIDTokenizer oIDTokenizer = new OIDTokenizer(this.identifier);
        while (oIDTokenizer.hasMoreTokens()) {
            String nextToken = oIDTokenizer.nextToken();
            if (nextToken.length() <= 18) {
                writeField(byteArrayOutputStream, Long.parseLong(nextToken));
            } else {
                writeField(byteArrayOutputStream, new BigInteger(nextToken));
            }
        }
    }

    public static ASN1RelativeOID fromContents(byte[] bArr) {
        return createPrimitive(bArr, true);
    }

    private synchronized byte[] getContents() {
        if (this.contents == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            doOutput(byteArrayOutputStream);
            this.contents = byteArrayOutputStream.toByteArray();
        }
        return this.contents;
    }

    public static ASN1RelativeOID getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1RelativeOID)) {
            return (ASN1RelativeOID) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1RelativeOID) {
                return (ASN1RelativeOID) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1RelativeOID) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct relative OID from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1RelativeOID getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1RelativeOID) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r7.charAt(r0 + 1) != '0') goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        if (r2 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if (r2 <= 1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isValidIdentifier(java.lang.String r7, int r8) {
        /*
            int r0 = r7.length()
            r1 = 0
        L5:
            r2 = 0
        L6:
            int r0 = r0 + (-1)
            r3 = 48
            r4 = 1
            if (r0 < r8) goto L2c
            char r5 = r7.charAt(r0)
            r6 = 46
            if (r5 != r6) goto L22
            if (r2 == 0) goto L21
            if (r2 <= r4) goto L5
            int r2 = r0 + 1
            char r2 = r7.charAt(r2)
            if (r2 != r3) goto L5
        L21:
            return r1
        L22:
            if (r3 > r5) goto L2b
            r3 = 57
            if (r5 > r3) goto L2b
            int r2 = r2 + 1
            goto L6
        L2b:
            return r1
        L2c:
            if (r2 == 0) goto L39
            if (r2 <= r4) goto L38
            int r0 = r0 + r4
            char r7 = r7.charAt(r0)
            if (r7 != r3) goto L38
            goto L39
        L38:
            return r4
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.ASN1RelativeOID.isValidIdentifier(java.lang.String, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeField(ByteArrayOutputStream byteArrayOutputStream, long j4) {
        byte[] bArr = new byte[9];
        int i4 = 8;
        bArr[8] = (byte) (((int) j4) & 127);
        while (j4 >= 128) {
            j4 >>= 7;
            i4--;
            bArr[i4] = (byte) (((int) j4) | 128);
        }
        byteArrayOutputStream.write(bArr, i4, 9 - i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeField(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i4 = bitLength - 1;
        for (int i10 = i4; i10 >= 0; i10--) {
            bArr[i10] = (byte) (bigInteger.intValue() | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i4] = (byte) (bArr[i4] & Byte.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, bitLength);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (this == aSN1Primitive) {
            return true;
        }
        if (aSN1Primitive instanceof ASN1RelativeOID) {
            return this.identifier.equals(((ASN1RelativeOID) aSN1Primitive).identifier);
        }
        return false;
    }

    public ASN1RelativeOID branch(String str) {
        return new ASN1RelativeOID(this, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        aSN1OutputStream.writeEncodingDL(z9, 13, getContents());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) {
        return ASN1OutputStream.getLengthOfEncodingDL(z9, getContents().length);
    }

    public String getId() {
        return this.identifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return this.identifier.hashCode();
    }

    public String toString() {
        return getId();
    }
}
