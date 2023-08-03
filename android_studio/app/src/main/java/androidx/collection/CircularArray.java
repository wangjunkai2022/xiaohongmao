package androidx.collection;

/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    private void doubleCapacity() {
        E[] eArr = this.mElements;
        int length = eArr.length;
        int i4 = this.mHead;
        int i10 = length - i4;
        int i11 = length << 1;
        if (i11 >= 0) {
            E[] eArr2 = (E[]) new Object[i11];
            System.arraycopy(eArr, i4, eArr2, 0, i10);
            System.arraycopy(this.mElements, 0, eArr2, i10, this.mHead);
            this.mElements = eArr2;
            this.mHead = 0;
            this.mTail = length;
            this.mCapacityBitmask = i11 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(E e4) {
        int i4 = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = i4;
        this.mElements[i4] = e4;
        if (i4 == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e4) {
        E[] eArr = this.mElements;
        int i4 = this.mTail;
        eArr[i4] = e4;
        int i10 = this.mCapacityBitmask & (i4 + 1);
        this.mTail = i10;
        if (i10 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i4) {
        if (i4 >= 0 && i4 < size()) {
            return this.mElements[this.mCapacityBitmask & (this.mHead + i4)];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getFirst() {
        int i4 = this.mHead;
        if (i4 != this.mTail) {
            return this.mElements[i4];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i4 = this.mHead;
        int i10 = this.mTail;
        if (i4 != i10) {
            return this.mElements[(i10 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }

    public E popFirst() {
        int i4 = this.mHead;
        if (i4 != this.mTail) {
            E[] eArr = this.mElements;
            E e4 = eArr[i4];
            eArr[i4] = null;
            this.mHead = (i4 + 1) & this.mCapacityBitmask;
            return e4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E popLast() {
        int i4 = this.mHead;
        int i10 = this.mTail;
        if (i4 != i10) {
            int i11 = this.mCapacityBitmask & (i10 - 1);
            E[] eArr = this.mElements;
            E e4 = eArr[i11];
            eArr[i11] = null;
            this.mTail = i11;
            return e4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i4) {
        int i10;
        if (i4 <= 0) {
            return;
        }
        if (i4 <= size()) {
            int i11 = this.mTail;
            int i12 = i4 < i11 ? i11 - i4 : 0;
            int i13 = i12;
            while (true) {
                i10 = this.mTail;
                if (i13 >= i10) {
                    break;
                }
                this.mElements[i13] = null;
                i13++;
            }
            int i14 = i10 - i12;
            int i15 = i4 - i14;
            this.mTail = i10 - i14;
            if (i15 > 0) {
                int length = this.mElements.length;
                this.mTail = length;
                int i16 = length - i15;
                for (int i17 = i16; i17 < this.mTail; i17++) {
                    this.mElements[i17] = null;
                }
                this.mTail = i16;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromStart(int i4) {
        if (i4 <= 0) {
            return;
        }
        if (i4 <= size()) {
            int length = this.mElements.length;
            int i10 = this.mHead;
            if (i4 < length - i10) {
                length = i10 + i4;
            }
            while (i10 < length) {
                this.mElements[i10] = null;
                i10++;
            }
            int i11 = this.mHead;
            int i12 = length - i11;
            int i13 = i4 - i12;
            this.mHead = this.mCapacityBitmask & (i11 + i12);
            if (i13 > 0) {
                for (int i14 = 0; i14 < i13; i14++) {
                    this.mElements[i14] = null;
                }
                this.mHead = i13;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }

    public CircularArray(int i4) {
        if (i4 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i4 <= 1073741824) {
            i4 = Integer.bitCount(i4) != 1 ? Integer.highestOneBit(i4 - 1) << 1 : i4;
            this.mCapacityBitmask = i4 - 1;
            this.mElements = (E[]) new Object[i4];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
