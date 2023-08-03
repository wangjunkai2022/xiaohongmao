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
public abstract class ASN1Sequence extends ASN1Primitive implements Iterable<ASN1Encodable> {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1Sequence.class, 16) { // from class: org.bouncycastle.asn1.ASN1Sequence.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence;
        }
    };
    ASN1Encodable[] elements;

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence() {
        this.elements = ASN1EncodableVector.EMPTY_ELEMENTS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence(ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'element' cannot be null");
        this.elements = new ASN1Encodable[]{aSN1Encodable};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence(ASN1EncodableVector aSN1EncodableVector) {
        Objects.requireNonNull(aSN1EncodableVector, "'elementVector' cannot be null");
        this.elements = aSN1EncodableVector.takeElements();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ASN1Sequence(ASN1Encodable[] aSN1EncodableArr) {
        if (Arrays.isNullOrContainsNull(aSN1EncodableArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        this.elements = ASN1EncodableVector.cloneElements(aSN1EncodableArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Sequence(ASN1Encodable[] aSN1EncodableArr, boolean z9) {
        this.elements = z9 ? ASN1EncodableVector.cloneElements(aSN1EncodableArr) : aSN1EncodableArr;
    }

    public static ASN1Sequence getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Sequence)) {
            return (ASN1Sequence) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Sequence) {
                return (ASN1Sequence) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1Sequence) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e4) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e4.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1Sequence getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return (ASN1Sequence) TYPE.getContextInstance(aSN1TaggedObject, z9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Sequence) {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
            int size = size();
            if (aSN1Sequence.size() != size) {
                return false;
            }
            for (int i4 = 0; i4 < size; i4++) {
                ASN1Primitive aSN1Primitive2 = this.elements[i4].toASN1Primitive();
                ASN1Primitive aSN1Primitive3 = aSN1Sequence.elements[i4].toASN1Primitive();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1BitString[] getConstructedBitStrings() {
        int size = size();
        ASN1BitString[] aSN1BitStringArr = new ASN1BitString[size];
        for (int i4 = 0; i4 < size; i4++) {
            aSN1BitStringArr[i4] = ASN1BitString.getInstance(this.elements[i4]);
        }
        return aSN1BitStringArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1OctetString[] getConstructedOctetStrings() {
        int size = size();
        ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[size];
        for (int i4 = 0; i4 < size; i4++) {
            aSN1OctetStringArr[i4] = ASN1OctetString.getInstance(this.elements[i4]);
        }
        return aSN1OctetStringArr;
    }

    public ASN1Encodable getObjectAt(int i4) {
        return this.elements[i4];
    }

    public Enumeration getObjects() {
        return new Enumeration() { // from class: org.bouncycastle.asn1.ASN1Sequence.2
            private int pos = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.pos < ASN1Sequence.this.elements.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int i4 = this.pos;
                ASN1Encodable[] aSN1EncodableArr = ASN1Sequence.this.elements;
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
            i4 = (i4 * 257) ^ this.elements[length].toASN1Primitive().hashCode();
        }
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(this.elements);
    }

    public ASN1SequenceParser parser() {
        final int size = size();
        return new ASN1SequenceParser() { // from class: org.bouncycastle.asn1.ASN1Sequence.3
            private int pos = 0;

            @Override // org.bouncycastle.asn1.InMemoryRepresentable
            public ASN1Primitive getLoadedObject() {
                return ASN1Sequence.this;
            }

            @Override // org.bouncycastle.asn1.ASN1SequenceParser
            public ASN1Encodable readObject() throws IOException {
                int i4 = size;
                int i10 = this.pos;
                if (i4 == i10) {
                    return null;
                }
                ASN1Encodable[] aSN1EncodableArr = ASN1Sequence.this.elements;
                this.pos = i10 + 1;
                ASN1Encodable aSN1Encodable = aSN1EncodableArr[i10];
                return aSN1Encodable instanceof ASN1Sequence ? ((ASN1Sequence) aSN1Encodable).parser() : aSN1Encodable instanceof ASN1Set ? ((ASN1Set) aSN1Encodable).parser() : aSN1Encodable;
            }

            @Override // org.bouncycastle.asn1.ASN1Encodable
            public ASN1Primitive toASN1Primitive() {
                return ASN1Sequence.this;
            }
        };
    }

    public int size() {
        return this.elements.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ASN1BitString toASN1BitString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ASN1External toASN1External();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ASN1OctetString toASN1OctetString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ASN1Set toASN1Set();

    public ASN1Encodable[] toArray() {
        return ASN1EncodableVector.cloneElements(this.elements);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Encodable[] toArrayInternal() {
        return this.elements;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERSequence(this.elements, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLSequence(this.elements, false);
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
