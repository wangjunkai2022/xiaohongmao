package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    private void gc() {
        int i4 = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            Object obj = objArr[i11];
            if (obj != DELETED) {
                if (i11 != i10) {
                    jArr[i10] = jArr[i11];
                    objArr[i10] = obj;
                    objArr[i11] = null;
                }
                i10++;
            }
        }
        this.mGarbage = false;
        this.mSize = i10;
    }

    public void append(long j4, E e4) {
        int i4 = this.mSize;
        if (i4 != 0 && j4 <= this.mKeys[i4 - 1]) {
            put(j4, e4);
            return;
        }
        if (this.mGarbage && i4 >= this.mKeys.length) {
            gc();
        }
        int i10 = this.mSize;
        if (i10 >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i10 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr = new Object[idealLongArraySize];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[i10] = j4;
        this.mValues[i10] = e4;
        this.mSize = i10 + 1;
    }

    public void clear() {
        int i4 = this.mSize;
        Object[] objArr = this.mValues;
        for (int i10 = 0; i10 < i4; i10++) {
            objArr[i10] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public boolean containsKey(long j4) {
        return indexOfKey(j4) >= 0;
    }

    public boolean containsValue(E e4) {
        return indexOfValue(e4) >= 0;
    }

    @Deprecated
    public void delete(long j4) {
        remove(j4);
    }

    @Nullable
    public E get(long j4) {
        return get(j4, null);
    }

    public int indexOfKey(long j4) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j4);
    }

    public int indexOfValue(E e4) {
        if (this.mGarbage) {
            gc();
        }
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (this.mValues[i4] == e4) {
                return i4;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i4];
    }

    public void put(long j4, E e4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j4);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e4;
            return;
        }
        int i4 = ~binarySearch;
        int i10 = this.mSize;
        if (i4 < i10) {
            Object[] objArr = this.mValues;
            if (objArr[i4] == DELETED) {
                this.mKeys[i4] = j4;
                objArr[i4] = e4;
                return;
            }
        }
        if (this.mGarbage && i10 >= this.mKeys.length) {
            gc();
            i4 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, j4);
        }
        int i11 = this.mSize;
        if (i11 >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i11 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr2 = new Object[idealLongArraySize];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int i12 = this.mSize;
        if (i12 - i4 != 0) {
            long[] jArr3 = this.mKeys;
            int i13 = i4 + 1;
            System.arraycopy(jArr3, i4, jArr3, i13, i12 - i4);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i4, objArr4, i13, this.mSize - i4);
        }
        this.mKeys[i4] = j4;
        this.mValues[i4] = e4;
        this.mSize++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            put(longSparseArray.keyAt(i4), longSparseArray.valueAt(i4));
        }
    }

    @Nullable
    public E putIfAbsent(long j4, E e4) {
        E e10 = get(j4);
        if (e10 == null) {
            put(j4, e4);
        }
        return e10;
    }

    public void remove(long j4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j4);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[binarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[binarySearch] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public void removeAt(int i4) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i4];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i4] = obj2;
            this.mGarbage = true;
        }
    }

    @Nullable
    public E replace(long j4, E e4) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            Object[] objArr = this.mValues;
            E e10 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e4;
            return e10;
        }
        return null;
    }

    public void setValueAt(int i4, E e4) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[i4] = e4;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i4));
            sb.append('=');
            E valueAt = valueAt(i4);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return (E) this.mValues[i4];
    }

    public LongSparseArray(int i4) {
        this.mGarbage = false;
        if (i4 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
            return;
        }
        int idealLongArraySize = ContainerHelpers.idealLongArraySize(i4);
        this.mKeys = new long[idealLongArraySize];
        this.mValues = new Object[idealLongArraySize];
    }

    /* renamed from: clone */
    public LongSparseArray<E> m5clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }

    public E get(long j4, E e4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j4);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[binarySearch] != DELETED) {
                return (E) objArr[binarySearch];
            }
        }
        return e4;
    }

    public boolean replace(long j4, E e4, E e10) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            Object obj = this.mValues[indexOfKey];
            if (obj == e4 || (e4 != null && e4.equals(obj))) {
                this.mValues[indexOfKey] = e10;
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean remove(long j4, Object obj) {
        int indexOfKey = indexOfKey(j4);
        if (indexOfKey >= 0) {
            E valueAt = valueAt(indexOfKey);
            if (obj == valueAt || (obj != null && obj.equals(valueAt))) {
                removeAt(indexOfKey);
                return true;
            }
            return false;
        }
        return false;
    }
}
