package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes4.dex */
public class BERBitString extends ASN1BitString {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final ASN1BitString[] elements;
    private final int segmentLimit;

    public BERBitString(byte b10, int i4) {
        super(b10, i4);
        this.elements = null;
        this.segmentLimit = 1000;
    }

    public BERBitString(ASN1Encodable aSN1Encodable) throws IOException {
        this(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER), 0);
    }

    public BERBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public BERBitString(byte[] bArr, int i4) {
        this(bArr, i4, 1000);
    }

    public BERBitString(byte[] bArr, int i4, int i10) {
        super(bArr, i4);
        this.elements = null;
        this.segmentLimit = i10;
    }

    BERBitString(byte[] bArr, boolean z9) {
        super(bArr, z9);
        this.elements = null;
        this.segmentLimit = 1000;
    }

    public BERBitString(ASN1BitString[] aSN1BitStringArr) {
        this(aSN1BitStringArr, 1000);
    }

    public BERBitString(ASN1BitString[] aSN1BitStringArr, int i4) {
        super(flattenBitStrings(aSN1BitStringArr), false);
        this.elements = aSN1BitStringArr;
        this.segmentLimit = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] flattenBitStrings(ASN1BitString[] aSN1BitStringArr) {
        int length = aSN1BitStringArr.length;
        if (length != 0) {
            if (length != 1) {
                int i4 = length - 1;
                int i10 = 0;
                for (int i11 = 0; i11 < i4; i11++) {
                    byte[] bArr = aSN1BitStringArr[i11].contents;
                    if (bArr[0] != 0) {
                        throw new IllegalArgumentException("only the last nested bitstring can have padding");
                    }
                    i10 += bArr.length - 1;
                }
                byte[] bArr2 = aSN1BitStringArr[i4].contents;
                byte b10 = bArr2[0];
                byte[] bArr3 = new byte[i10 + bArr2.length];
                bArr3[0] = b10;
                int i12 = 1;
                for (ASN1BitString aSN1BitString : aSN1BitStringArr) {
                    byte[] bArr4 = aSN1BitString.contents;
                    int length2 = bArr4.length - 1;
                    System.arraycopy(bArr4, 1, bArr3, i12, length2);
                    i12 += length2;
                }
                return bArr3;
            }
            return aSN1BitStringArr[0].contents;
        }
        return new byte[]{0};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        if (!encodeConstructed()) {
            byte[] bArr = this.contents;
            DLBitString.encode(aSN1OutputStream, z9, bArr, 0, bArr.length);
            return;
        }
        aSN1OutputStream.writeIdentifier(z9, 35);
        aSN1OutputStream.write(128);
        ASN1BitString[] aSN1BitStringArr = this.elements;
        if (aSN1BitStringArr != null) {
            aSN1OutputStream.writePrimitives(aSN1BitStringArr);
        } else {
            byte[] bArr2 = this.contents;
            if (bArr2.length >= 2) {
                byte b10 = bArr2[0];
                int length = bArr2.length;
                int i4 = length - 1;
                int i10 = this.segmentLimit - 1;
                while (i4 > i10) {
                    DLBitString.encode(aSN1OutputStream, true, (byte) 0, this.contents, length - i4, i10);
                    i4 -= i10;
                }
                DLBitString.encode(aSN1OutputStream, true, b10, this.contents, length - i4, i4);
            }
        }
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return this.elements != null || this.contents.length > this.segmentLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        if (!encodeConstructed()) {
            return DLBitString.encodedLength(z9, this.contents.length);
        }
        int i4 = z9 ? 4 : 3;
        if (this.elements == null) {
            byte[] bArr = this.contents;
            if (bArr.length < 2) {
                return i4;
            }
            int i10 = this.segmentLimit;
            int length = (bArr.length - 2) / (i10 - 1);
            return i4 + (DLBitString.encodedLength(true, i10) * length) + DLBitString.encodedLength(true, this.contents.length - (length * (this.segmentLimit - 1)));
        }
        int i11 = 0;
        while (true) {
            ASN1BitString[] aSN1BitStringArr = this.elements;
            if (i11 >= aSN1BitStringArr.length) {
                return i4;
            }
            i4 += aSN1BitStringArr[i11].encodedLength(true);
            i11++;
        }
    }
}
