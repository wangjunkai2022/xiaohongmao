package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    private void gc() {
        int i4 = this.mSize;
        int[] iArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            Object obj = objArr[i11];
            if (obj != DELETED) {
                if (i11 != i10) {
                    iArr[i10] = iArr[i11];
                    objArr[i10] = obj;
                    objArr[i11] = null;
                }
                i10++;
            }
        }
        this.mGarbage = false;
        this.mSize = i10;
    }

    public void append(int i4, E e4) {
        int i10 = this.mSize;
        if (i10 != 0 && i4 <= this.mKeys[i10 - 1]) {
            put(i4, e4);
            return;
        }
        if (this.mGarbage && i10 >= this.mKeys.length) {
            gc();
        }
        int i11 = this.mSize;
        if (i11 >= this.mKeys.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i11 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr = new Object[idealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = iArr;
            this.mValues = objArr;
        }
        this.mKeys[i11] = i4;
        this.mValues[i11] = e4;
        this.mSize = i11 + 1;
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

    public boolean containsKey(int i4) {
        return indexOfKey(i4) >= 0;
    }

    public boolean containsValue(E e4) {
        return indexOfValue(e4) >= 0;
    }

    @Deprecated
    public void delete(int i4) {
        remove(i4);
    }

    @Nullable
    public E get(int i4) {
        return get(i4, null);
    }

    public int indexOfKey(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
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

    public int keyAt(int i4) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i4];
    }

    public void put(int i4, E e4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e4;
            return;
        }
        int i10 = ~binarySearch;
        int i11 = this.mSize;
        if (i10 < i11) {
            Object[] objArr = this.mValues;
            if (objArr[i10] == DELETED) {
                this.mKeys[i10] = i4;
                objArr[i10] = e4;
                return;
            }
        }
        if (this.mGarbage && i11 >= this.mKeys.length) {
            gc();
            i10 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        }
        int i12 = this.mSize;
        if (i12 >= this.mKeys.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i12 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr2 = new Object[idealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = iArr;
            this.mValues = objArr2;
        }
        int i13 = this.mSize;
        if (i13 - i10 != 0) {
            int[] iArr3 = this.mKeys;
            int i14 = i10 + 1;
            System.arraycopy(iArr3, i10, iArr3, i14, i13 - i10);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i10, objArr4, i14, this.mSize - i10);
        }
        this.mKeys[i10] = i4;
        this.mValues[i10] = e4;
        this.mSize++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i4 = 0; i4 < size; i4++) {
            put(sparseArrayCompat.keyAt(i4), sparseArrayCompat.valueAt(i4));
        }
    }

    @Nullable
    public E putIfAbsent(int i4, E e4) {
        E e10 = get(i4);
        if (e10 == null) {
            put(i4, e4);
        }
        return e10;
    }

    public void remove(int i4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
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

    public void removeAtRange(int i4, int i10) {
        int min = Math.min(this.mSize, i10 + i4);
        while (i4 < min) {
            removeAt(i4);
            i4++;
        }
    }

    @Nullable
    public E replace(int i4, E e4) {
        int indexOfKey = indexOfKey(i4);
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

    public SparseArrayCompat(int i4) {
        this.mGarbage = false;
        if (i4 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
            return;
        }
        int idealIntArraySize = ContainerHelpers.idealIntArraySize(i4);
        this.mKeys = new int[idealIntArraySize];
        this.mValues = new Object[idealIntArraySize];
    }

    /* renamed from: clone */
    public SparseArrayCompat<E> m6clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e4) {
            throw new AssertionError(e4);
        }
    }

    public E get(int i4, E e4) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i4);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[binarySearch] != DELETED) {
                return (E) objArr[binarySearch];
            }
        }
        return e4;
    }

    public boolean replace(int i4, E e4, E e10) {
        int indexOfKey = indexOfKey(i4);
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

    public boolean remove(int i4, Object obj) {
        int indexOfKey = indexOfKey(i4);
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
