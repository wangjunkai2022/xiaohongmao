package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
public class BEROctetString extends ASN1OctetString {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final ASN1OctetString[] elements;
    private final int segmentLimit;

    public BEROctetString(byte[] bArr) {
        this(bArr, 1000);
    }

    public BEROctetString(byte[] bArr, int i4) {
        this(bArr, null, i4);
    }

    private BEROctetString(byte[] bArr, ASN1OctetString[] aSN1OctetStringArr, int i4) {
        super(bArr);
        this.elements = aSN1OctetStringArr;
        this.segmentLimit = i4;
    }

    public BEROctetString(ASN1OctetString[] aSN1OctetStringArr) {
        this(aSN1OctetStringArr, 1000);
    }

    public BEROctetString(ASN1OctetString[] aSN1OctetStringArr, int i4) {
        this(flattenOctetStrings(aSN1OctetStringArr), aSN1OctetStringArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] flattenOctetStrings(ASN1OctetString[] aSN1OctetStringArr) {
        int length = aSN1OctetStringArr.length;
        if (length != 0) {
            if (length != 1) {
                int i4 = 0;
                for (ASN1OctetString aSN1OctetString : aSN1OctetStringArr) {
                    i4 += aSN1OctetString.string.length;
                }
                byte[] bArr = new byte[i4];
                int i10 = 0;
                for (ASN1OctetString aSN1OctetString2 : aSN1OctetStringArr) {
                    byte[] bArr2 = aSN1OctetString2.string;
                    System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
                    i10 += bArr2.length;
                }
                return bArr;
            }
            return aSN1OctetStringArr[0].string;
        }
        return ASN1OctetString.EMPTY_OCTETS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z9) throws IOException {
        if (!encodeConstructed()) {
            byte[] bArr = this.string;
            DEROctetString.encode(aSN1OutputStream, z9, bArr, 0, bArr.length);
            return;
        }
        aSN1OutputStream.writeIdentifier(z9, 36);
        aSN1OutputStream.write(128);
        ASN1OctetString[] aSN1OctetStringArr = this.elements;
        if (aSN1OctetStringArr == null) {
            int i4 = 0;
            while (true) {
                byte[] bArr2 = this.string;
                if (i4 >= bArr2.length) {
                    break;
                }
                int min = Math.min(bArr2.length - i4, this.segmentLimit);
                DEROctetString.encode(aSN1OutputStream, true, this.string, i4, min);
                i4 += min;
            }
        } else {
            aSN1OutputStream.writePrimitives(aSN1OctetStringArr);
        }
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return this.elements != null || this.string.length > this.segmentLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z9) throws IOException {
        if (!encodeConstructed()) {
            return DEROctetString.encodedLength(z9, this.string.length);
        }
        int i4 = z9 ? 4 : 3;
        if (this.elements == null) {
            int length = this.string.length;
            int i10 = this.segmentLimit;
            int i11 = length / i10;
            int encodedLength = i4 + (DEROctetString.encodedLength(true, i10) * i11);
            int length2 = this.string.length - (i11 * this.segmentLimit);
            return length2 > 0 ? encodedLength + DEROctetString.encodedLength(true, length2) : encodedLength;
        }
        int i12 = 0;
        while (true) {
            ASN1OctetString[] aSN1OctetStringArr = this.elements;
            if (i12 >= aSN1OctetStringArr.length) {
                return i4;
            }
            i4 += aSN1OctetStringArr[i12].encodedLength(true);
            i12++;
        }
    }

    public Enumeration getObjects() {
        return this.elements == null ? new Enumeration() { // from class: org.bouncycastle.asn1.BEROctetString.1
            int pos = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.pos < BEROctetString.this.string.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int i4 = this.pos;
                BEROctetString bEROctetString = BEROctetString.this;
                byte[] bArr = bEROctetString.string;
                if (i4 < bArr.length) {
                    int min = Math.min(bArr.length - i4, bEROctetString.segmentLimit);
                    byte[] bArr2 = new byte[min];
                    System.arraycopy(BEROctetString.this.string, this.pos, bArr2, 0, min);
                    this.pos += min;
                    return new DEROctetString(bArr2);
                }
                throw new NoSuchElementException();
            }
        } : new Enumeration() { // from class: org.bouncycastle.asn1.BEROctetString.2
            int counter = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.counter < BEROctetString.this.elements.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                if (this.counter < BEROctetString.this.elements.length) {
                    ASN1OctetString[] aSN1OctetStringArr = BEROctetString.this.elements;
                    int i4 = this.counter;
                    this.counter = i4 + 1;
                    return aSN1OctetStringArr[i4];
                }
                throw new NoSuchElementException();
            }
        };
    }
}
