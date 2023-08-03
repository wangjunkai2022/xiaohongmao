package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Iterable;

/* loaded from: classes4.dex */
public abstract class ASN1Set extends ASN1Primitive implements Iterable<ASN1Encodable> {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Set.class, 17) { // from class: org.bouncycastle.asn1.ASN1Set.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1Set();
        }
    };
    protected final ASN1Encodable[] elements;
    protected final boolean isSorted;

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set() {
        this.elements = ASN1EncodableVector.EMPTY_ELEMENTS;
        this.isSorted = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'element' cannot be null");
        this.elements = new ASN1Encodable[]{aSN1Encodable};
        this.isSorted = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z9) {
        ASN1Encodable[] takeElements;
        Objects.requireNonNull(aSN1EncodableVector, "'elementVector' cannot be null");
        if (!z9 || aSN1EncodableVector.size() < 2) {
            takeElements = aSN1EncodableVector.takeElements();
        } else {
            takeElements = aSN1EncodableVector.copyElements();
            sort(takeElements);
        }
        this.elements = takeElements;
        this.isSorted = z9 || takeElements.length < 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Set(boolean z9, ASN1Encodable[] aSN1EncodableArr) {
        this.elements = aSN1EncodableArr;
        this.isSorted = z9 || aSN1EncodableArr.length < 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z9) {
        if (Arrays.isNullOrContainsNull(aSN1EncodableArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        ASN1Encodable[] cloneElements = ASN1EncodableVector.cloneElements(aSN1EncodableArr);
        if (z9 && cloneElements.length >= 2) {
            sort(cloneElements);
        }
        this.elements = cloneElements;
        this.isSorted = z9 || cloneElements.length < 2;
    }

    private static byte[] getDEREncoded(ASN1Encodable aSN1Encodable) {
        try {
            return aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static ASN1Set getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Set)) {
            return (ASN1Set) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Set) {
                return (ASN1Set) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1Set) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Set getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1Set) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    private static boolean lessThanOrEqual(byte[] bArr, byte[] bArr2) {
        int i4 = bArr[0] & (-33);
        int i10 = bArr2[0] & (-33);
        if (i4 != i10) {
            return i4 < i10;
        }
        int min = Math.min(bArr.length, bArr2.length) - 1;
        for (int i11 = 1; i11 < min; i11++) {
            if (bArr[i11] != bArr2[i11]) {
                return (bArr[i11] & 255) < (bArr2[i11] & 255);
            }
        }
        return (bArr[min] & 255) <= (bArr2[min] & 255);
    }

    private static void sort(ASN1Encodable[] aSN1EncodableArr) {
        int length = aSN1EncodableArr.length;
        if (length < 2) {
            return;
        }
        ASN1Encodable aSN1Encodable = aSN1EncodableArr[0];
        ASN1Encodable aSN1Encodable2 = aSN1EncodableArr[1];
        byte[] dEREncoded = getDEREncoded(aSN1Encodable);
        byte[] dEREncoded2 = getDEREncoded(aSN1Encodable2);
        if (lessThanOrEqual(dEREncoded2, dEREncoded)) {
            aSN1Encodable2 = aSN1Encodable;
            aSN1Encodable = aSN1Encodable2;
            dEREncoded2 = dEREncoded;
            dEREncoded = dEREncoded2;
        }
        for (int i4 = 2; i4 < length; i4++) {
            ASN1Encodable aSN1Encodable3 = aSN1EncodableArr[i4];
            byte[] dEREncoded3 = getDEREncoded(aSN1Encodable3);
            if (lessThanOrEqual(dEREncoded2, dEREncoded3)) {
                aSN1EncodableArr[i4 - 2] = aSN1Encodable;
                aSN1Encodable = aSN1Encodable2;
                dEREncoded = dEREncoded2;
                aSN1Encodable2 = aSN1Encodable3;
                dEREncoded2 = dEREncoded3;
            } else if (lessThanOrEqual(dEREncoded, dEREncoded3)) {
                aSN1EncodableArr[i4 - 2] = aSN1Encodable;
                aSN1Encodable = aSN1Encodable3;
                dEREncoded = dEREncoded3;
            } else {
                int i10 = i4 - 1;
                while (true) {
                    i10--;
                    if (i10 <= 0) {
                        break;
                    }
                    ASN1Encodable aSN1Encodable4 = aSN1EncodableArr[i10 - 1];
                    if (lessThanOrEqual(getDEREncoded(aSN1Encodable4), dEREncoded3)) {
                        break;
                    }
                    aSN1EncodableArr[i10] = aSN1Encodable4;
                }
                aSN1EncodableArr[i10] = aSN1Encodable3;
            }
        }
        aSN1EncodableArr[length - 2] = aSN1Encodable;
        aSN1EncodableArr[length - 1] = aSN1Encodable2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Set) {
            ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
            int size = size();
            if (aSN1Set.size() != size) {
                return false;
            }
            DERSet dERSet = (DERSet) toDERObject();
            DERSet dERSet2 = (DERSet) aSN1Set.toDERObject();
            for (int i4 = 0; i4 < size; i4++) {
                ASN1Primitive aSN1Primitive2 = dERSet.elements[i4].toASN1Primitive();
                ASN1Primitive aSN1Primitive3 = dERSet2.elements[i4].toASN1Primitive();
                if (aSN1Primitive2 != aSN1Primitive3 && !aSN1Primitive2.asn1Equals(aSN1Primitive3)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return true;
    }

    public ASN1Encodable getObjectAt(int i4) {
        return this.elements[i4];
    }

    public Enumeration getObjects() {
        return new Enumeration() { // from class: org.bouncycastle.asn1.ASN1Set.2
            private int pos = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.pos < ASN1Set.this.elements.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int i4 = this.pos;
                ASN1Encodable[] aSN1EncodableArr = ASN1Set.this.elements;
                if (i4 < aSN1EncodableArr.length) {
                    this.pos = i4 + 1;
                    return aSN1EncodableArr[i4];
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        int length = this.elements.length;
        int i4 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i4;
            }
            i4 += this.elements[length].toASN1Primitive().hashCode();
        }
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(toArray());
    }

    public ASN1SetParser parser() {
        final int size = size();
        return new ASN1SetParser() { // from class: org.bouncycastle.asn1.ASN1Set.3
            private int pos = 0;

            @Override // org.bouncycastle.asn1.InMemoryRepresentable
            public ASN1Primitive getLoadedObject() {
                return ASN1Set.this;
            }

            @Override // org.bouncycastle.asn1.ASN1SetParser
            public ASN1Encodable readObject() throws IOException {
                int i4 = size;
                int i10 = this.pos;
                if (i4 == i10) {
                    return null;
                }
                ASN1Encodable[] aSN1EncodableArr = ASN1Set.this.elements;
                this.pos = i10 + 1;
                ASN1Encodable aSN1Encodable = aSN1EncodableArr[i10];
                return aSN1Encodable instanceof ASN1Sequence ? ((ASN1Sequence) aSN1Encodable).parser() : aSN1Encodable instanceof ASN1Set ? ((ASN1Set) aSN1Encodable).parser() : aSN1Encodable;
            }

            @Override // org.bouncycastle.asn1.ASN1Encodable
            public ASN1Primitive toASN1Primitive() {
                return ASN1Set.this;
            }
        };
    }

    public int size() {
        return this.elements.length;
    }

    public ASN1Encodable[] toArray() {
        return ASN1EncodableVector.cloneElements(this.elements);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        ASN1Encodable[] aSN1EncodableArr;
        if (this.isSorted) {
            aSN1EncodableArr = this.elements;
        } else {
            aSN1EncodableArr = (ASN1Encodable[]) this.elements.clone();
            sort(aSN1EncodableArr);
        }
        return new DERSet(true, aSN1EncodableArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLSet(this.isSorted, this.elements);
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i4 = 0;
        while (true) {
            stringBuffer.append(this.elements[i4]);
            i4++;
            if (i4 >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }
}
