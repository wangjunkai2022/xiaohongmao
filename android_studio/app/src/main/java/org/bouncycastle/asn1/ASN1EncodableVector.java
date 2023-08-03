package org.bouncycastle.asn1;

import java.util.Objects;

/* loaded from: classes4.dex */
public class ASN1EncodableVector {
    private static final int DEFAULT_CAPACITY = 10;
    static final ASN1Encodable[] EMPTY_ELEMENTS = new ASN1Encodable[0];
    private boolean copyOnWrite;
    private int elementCount;
    private ASN1Encodable[] elements;

    public ASN1EncodableVector() {
        this(10);
    }

    public ASN1EncodableVector(int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.elements = i4 == 0 ? EMPTY_ELEMENTS : new ASN1Encodable[i4];
        this.elementCount = 0;
        this.copyOnWrite = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Encodable[] cloneElements(ASN1Encodable[] aSN1EncodableArr) {
        return aSN1EncodableArr.length < 1 ? EMPTY_ELEMENTS : (ASN1Encodable[]) aSN1EncodableArr.clone();
    }

    private void doAddAll(ASN1Encodable[] aSN1EncodableArr, String str) {
        int length = aSN1EncodableArr.length;
        if (length < 1) {
            return;
        }
        int length2 = this.elements.length;
        int i4 = this.elementCount + length;
        int i10 = 0;
        if ((i4 > length2) | this.copyOnWrite) {
            reallocate(i4);
        }
        do {
            ASN1Encodable aSN1Encodable = aSN1EncodableArr[i10];
            Objects.requireNonNull(aSN1Encodable, str);
            this.elements[this.elementCount + i10] = aSN1Encodable;
            i10++;
        } while (i10 < length);
        this.elementCount = i4;
    }

    private void reallocate(int i4) {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[Math.max(this.elements.length, i4 + (i4 >> 1))];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, this.elementCount);
        this.elements = aSN1EncodableArr;
        this.copyOnWrite = false;
    }

    public void add(ASN1Encodable aSN1Encodable) {
        Objects.requireNonNull(aSN1Encodable, "'element' cannot be null");
        int length = this.elements.length;
        int i4 = this.elementCount + 1;
        if (this.copyOnWrite | (i4 > length)) {
            reallocate(i4);
        }
        this.elements[this.elementCount] = aSN1Encodable;
        this.elementCount = i4;
    }

    public void addAll(ASN1EncodableVector aSN1EncodableVector) {
        Objects.requireNonNull(aSN1EncodableVector, "'other' cannot be null");
        doAddAll(aSN1EncodableVector.elements, "'other' elements cannot be null");
    }

    public void addAll(ASN1Encodable[] aSN1EncodableArr) {
        Objects.requireNonNull(aSN1EncodableArr, "'others' cannot be null");
        doAddAll(aSN1EncodableArr, "'others' elements cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Encodable[] copyElements() {
        int i4 = this.elementCount;
        if (i4 == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[i4];
        System.arraycopy(this.elements, 0, aSN1EncodableArr, 0, i4);
        return aSN1EncodableArr;
    }

    public ASN1Encodable get(int i4) {
        if (i4 < this.elementCount) {
            return this.elements[i4];
        }
        throw new ArrayIndexOutOfBoundsException(i4 + " >= " + this.elementCount);
    }

    public int size() {
        return this.elementCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1Encodable[] takeElements() {
        int i4 = this.elementCount;
        if (i4 == 0) {
            return EMPTY_ELEMENTS;
        }
        ASN1Encodable[] aSN1EncodableArr = this.elements;
        if (aSN1EncodableArr.length == i4) {
            this.copyOnWrite = true;
            return aSN1EncodableArr;
        }
        ASN1Encodable[] aSN1EncodableArr2 = new ASN1Encodable[i4];
        System.arraycopy(aSN1EncodableArr, 0, aSN1EncodableArr2, 0, i4);
        return aSN1EncodableArr2;
    }
}
