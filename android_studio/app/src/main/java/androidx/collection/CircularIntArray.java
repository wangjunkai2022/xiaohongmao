package androidx.collection;

/* loaded from: classes.dex */
public final class CircularIntArray {
    private int mCapacityBitmask;
    private int[] mElements;
    private int mHead;
    private int mTail;

    public CircularIntArray() {
        this(8);
    }

    private void doubleCapacity() {
        int[] iArr = this.mElements;
        int length = iArr.length;
        int i4 = this.mHead;
        int i10 = length - i4;
        int i11 = length << 1;
        if (i11 >= 0) {
            int[] iArr2 = new int[i11];
            System.arraycopy(iArr, i4, iArr2, 0, i10);
            System.arraycopy(this.mElements, 0, iArr2, i10, this.mHead);
            this.mElements = iArr2;
            this.mHead = 0;
            this.mTail = length;
            this.mCapacityBitmask = i11 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(int i4) {
        int i10 = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = i10;
        this.mElements[i10] = i4;
        if (i10 == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(int i4) {
        int[] iArr = this.mElements;
        int i10 = this.mTail;
        iArr[i10] = i4;
        int i11 = this.mCapacityBitmask & (i10 + 1);
        this.mTail = i11;
        if (i11 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        this.mTail = this.mHead;
    }

    public int get(int i4) {
        if (i4 >= 0 && i4 < size()) {
            return this.mElements[this.mCapacityBitmask & (this.mHead + i4)];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getFirst() {
        int i4 = this.mHead;
        if (i4 != this.mTail) {
            return this.mElements[i4];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getLast() {
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

    public int popFirst() {
        int i4 = this.mHead;
        if (i4 != this.mTail) {
            int i10 = this.mElements[i4];
            this.mHead = (i4 + 1) & this.mCapacityBitmask;
            return i10;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int popLast() {
        int i4 = this.mHead;
        int i10 = this.mTail;
        if (i4 != i10) {
            int i11 = this.mCapacityBitmask & (i10 - 1);
            int i12 = this.mElements[i11];
            this.mTail = i11;
            return i12;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i4) {
        if (i4 <= 0) {
            return;
        }
        if (i4 <= size()) {
            this.mTail = this.mCapacityBitmask & (this.mTail - i4);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromStart(int i4) {
        if (i4 <= 0) {
            return;
        }
        if (i4 <= size()) {
            this.mHead = this.mCapacityBitmask & (this.mHead + i4);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }

    public CircularIntArray(int i4) {
        if (i4 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i4 <= 1073741824) {
            i4 = Integer.bitCount(i4) != 1 ? Integer.highestOneBit(i4 - 1) << 1 : i4;
            this.mCapacityBitmask = i4 - 1;
            this.mElements = new int[i4];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
