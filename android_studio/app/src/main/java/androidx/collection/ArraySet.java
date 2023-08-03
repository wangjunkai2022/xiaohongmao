package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int[] INT = new int[0];
    private static final Object[] OBJECT = new Object[0];
    private static final String TAG = "ArraySet";
    @Nullable
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;
    @Nullable
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private MapCollections<E, E> mCollections;
    private int[] mHashes;
    int mSize;

    public ArraySet() {
        this(0);
    }

    private void allocArrays(int i4) {
        if (i4 == 8) {
            synchronized (ArraySet.class) {
                Object[] objArr = sTwiceBaseCache;
                if (objArr != null) {
                    this.mArray = objArr;
                    sTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    sTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (i4 == 4) {
            synchronized (ArraySet.class) {
                Object[] objArr2 = sBaseCache;
                if (objArr2 != null) {
                    this.mArray = objArr2;
                    sBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    sBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[i4];
        this.mArray = new Object[i4];
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i4) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (sTwiceBaseCacheSize < 10) {
                    objArr[0] = sTwiceBaseCache;
                    objArr[1] = iArr;
                    for (int i10 = i4 - 1; i10 >= 2; i10--) {
                        objArr[i10] = null;
                    }
                    sTwiceBaseCache = objArr;
                    sTwiceBaseCacheSize++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (sBaseCacheSize < 10) {
                    objArr[0] = sBaseCache;
                    objArr[1] = iArr;
                    for (int i11 = i4 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    sBaseCache = objArr;
                    sBaseCacheSize++;
                }
            }
        }
    }

    private MapCollections<E, E> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<E, E>() { // from class: androidx.collection.ArraySet.1
                @Override // androidx.collection.MapCollections
                protected void colClear() {
                    ArraySet.this.clear();
                }

                @Override // androidx.collection.MapCollections
                protected Object colGetEntry(int i4, int i10) {
                    return ArraySet.this.mArray[i4];
                }

                @Override // androidx.collection.MapCollections
                protected Map<E, E> colGetMap() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.collection.MapCollections
                protected int colGetSize() {
                    return ArraySet.this.mSize;
                }

                @Override // androidx.collection.MapCollections
                protected int colIndexOfKey(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected int colIndexOfValue(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected void colPut(E e4, E e10) {
                    ArraySet.this.add(e4);
                }

                @Override // androidx.collection.MapCollections
                protected void colRemoveAt(int i4) {
                    ArraySet.this.removeAt(i4);
                }

                @Override // androidx.collection.MapCollections
                protected E colSetValue(int i4, E e4) {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.mCollections;
    }

    private int indexOf(Object obj, int i4) {
        int i10 = this.mSize;
        if (i10 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i10, i4);
        if (binarySearch >= 0 && !obj.equals(this.mArray[binarySearch])) {
            int i11 = binarySearch + 1;
            while (i11 < i10 && this.mHashes[i11] == i4) {
                if (obj.equals(this.mArray[i11])) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = binarySearch - 1; i12 >= 0 && this.mHashes[i12] == i4; i12--) {
                if (obj.equals(this.mArray[i12])) {
                    return i12;
                }
            }
            return ~i11;
        }
        return binarySearch;
    }

    private int indexOfNull() {
        int i4 = this.mSize;
        if (i4 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i4, 0);
        if (binarySearch >= 0 && this.mArray[binarySearch] != null) {
            int i10 = binarySearch + 1;
            while (i10 < i4 && this.mHashes[i10] == 0) {
                if (this.mArray[i10] == null) {
                    return i10;
                }
                i10++;
            }
            for (int i11 = binarySearch - 1; i11 >= 0 && this.mHashes[i11] == 0; i11--) {
                if (this.mArray[i11] == null) {
                    return i11;
                }
            }
            return ~i10;
        }
        return binarySearch;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e4) {
        int i4;
        int indexOf;
        if (e4 == null) {
            indexOf = indexOfNull();
            i4 = 0;
        } else {
            int hashCode = e4.hashCode();
            i4 = hashCode;
            indexOf = indexOf(e4, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i10 = ~indexOf;
        int i11 = this.mSize;
        int[] iArr = this.mHashes;
        if (i11 >= iArr.length) {
            int i12 = 4;
            if (i11 >= 8) {
                i12 = (i11 >> 1) + i11;
            } else if (i11 >= 4) {
                i12 = 8;
            }
            Object[] objArr = this.mArray;
            allocArrays(i12);
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
        int i13 = this.mSize;
        if (i10 < i13) {
            int[] iArr3 = this.mHashes;
            int i14 = i10 + 1;
            System.arraycopy(iArr3, i10, iArr3, i14, i13 - i10);
            Object[] objArr2 = this.mArray;
            System.arraycopy(objArr2, i10, objArr2, i14, this.mSize - i10);
        }
        this.mHashes[i10] = i4;
        this.mArray[i10] = e4;
        this.mSize++;
        return true;
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i4 = arraySet.mSize;
        ensureCapacity(this.mSize + i4);
        if (this.mSize != 0) {
            for (int i10 = 0; i10 < i4; i10++) {
                add(arraySet.valueAt(i10));
            }
        } else if (i4 > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, i4);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, i4);
            this.mSize = i4;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i4 = this.mSize;
        if (i4 != 0) {
            freeArrays(this.mHashes, this.mArray, i4);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i4) {
        int[] iArr = this.mHashes;
        if (iArr.length < i4) {
            Object[] objArr = this.mArray;
            allocArrays(i4);
            int i10 = this.mSize;
            if (i10 > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i10);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i4 = 0; i4 < this.mSize; i4++) {
                try {
                    if (!set.contains(valueAt(i4))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.mHashes;
        int i4 = this.mSize;
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            i10 += iArr[i11];
        }
        return i10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return getCollection().getKeySet().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i4 = arraySet.mSize;
        int i10 = this.mSize;
        for (int i11 = 0; i11 < i4; i11++) {
            remove(arraySet.valueAt(i11));
        }
        return i10 != this.mSize;
    }

    public E removeAt(int i4) {
        Object[] objArr = this.mArray;
        E e4 = (E) objArr[i4];
        int i10 = this.mSize;
        if (i10 <= 1) {
            freeArrays(this.mHashes, objArr, i10);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        } else {
            int[] iArr = this.mHashes;
            if (iArr.length > 8 && i10 < iArr.length / 3) {
                allocArrays(i10 > 8 ? i10 + (i10 >> 1) : 8);
                this.mSize--;
                if (i4 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i4);
                    System.arraycopy(objArr, 0, this.mArray, 0, i4);
                }
                int i11 = this.mSize;
                if (i4 < i11) {
                    int i12 = i4 + 1;
                    System.arraycopy(iArr, i12, this.mHashes, i4, i11 - i4);
                    System.arraycopy(objArr, i12, this.mArray, i4, this.mSize - i4);
                }
            } else {
                int i13 = i10 - 1;
                this.mSize = i13;
                if (i4 < i13) {
                    int i14 = i4 + 1;
                    System.arraycopy(iArr, i14, iArr, i4, i13 - i4);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i14, objArr2, i4, this.mSize - i4);
                }
                this.mArray[this.mSize] = null;
            }
        }
        return e4;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z9 = false;
        for (int i4 = this.mSize - 1; i4 >= 0; i4--) {
            if (!collection.contains(this.mArray[i4])) {
                removeAt(i4);
                z9 = true;
            }
        }
        return z9;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i4 = this.mSize;
        Object[] objArr = new Object[i4];
        System.arraycopy(this.mArray, 0, objArr, 0, i4);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 14);
        sb.append('{');
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            E valueAt = valueAt(i4);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Nullable
    public E valueAt(int i4) {
        return (E) this.mArray[i4];
    }

    public ArraySet(int i4) {
        if (i4 == 0) {
            this.mHashes = INT;
            this.mArray = OBJECT;
        } else {
            allocArrays(i4);
        }
        this.mSize = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.mSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize));
        }
        System.arraycopy(this.mArray, 0, tArr, 0, this.mSize);
        int length = tArr.length;
        int i4 = this.mSize;
        if (length > i4) {
            tArr[i4] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            z9 |= remove(it.next());
        }
        return z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(this.mSize + collection.size());
        boolean z9 = false;
        for (E e4 : collection) {
            z9 |= add(e4);
        }
        return z9;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
