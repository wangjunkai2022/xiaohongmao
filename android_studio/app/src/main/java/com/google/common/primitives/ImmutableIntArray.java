package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class ImmutableIntArray implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableIntArray f34783d = new ImmutableIntArray(new int[0]);

    /* renamed from: a  reason: collision with root package name */
    private final int[] f34784a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f34785b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34786c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableIntArray f34787a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Integer get(int i4) {
            return Integer.valueOf(this.f34787a.get(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return this.f34787a.equals(((b) obj).f34787a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i4 = this.f34787a.f34785b;
                for (Object obj2 : list) {
                    if (obj2 instanceof Integer) {
                        int i10 = i4 + 1;
                        if (this.f34787a.f34784a[i4] == ((Integer) obj2).intValue()) {
                            i4 = i10;
                        }
                    }
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f34787a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.f34787a.indexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.f34787a.lastIndexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34787a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i4, int i10) {
            return this.f34787a.subArray(i4, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f34787a.toString();
        }

        private b(ImmutableIntArray immutableIntArray) {
            this.f34787a = immutableIntArray;
        }
    }

    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private int[] f34788a;

        /* renamed from: b  reason: collision with root package name */
        private int f34789b = 0;

        c(int i4) {
            this.f34788a = new int[i4];
        }

        private void g(int i4) {
            int i10 = this.f34789b + i4;
            int[] iArr = this.f34788a;
            if (i10 > iArr.length) {
                int[] iArr2 = new int[h(iArr.length, i10)];
                System.arraycopy(this.f34788a, 0, iArr2, 0, this.f34789b);
                this.f34788a = iArr2;
            }
        }

        private static int h(int i4, int i10) {
            if (i10 >= 0) {
                int i11 = i4 + (i4 >> 1) + 1;
                if (i11 < i10) {
                    i11 = Integer.highestOneBit(i10 - 1) << 1;
                }
                if (i11 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i11;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        public c a(int i4) {
            g(1);
            int[] iArr = this.f34788a;
            int i10 = this.f34789b;
            iArr[i10] = i4;
            this.f34789b = i10 + 1;
            return this;
        }

        public c b(ImmutableIntArray immutableIntArray) {
            g(immutableIntArray.length());
            System.arraycopy(immutableIntArray.f34784a, immutableIntArray.f34785b, this.f34788a, this.f34789b, immutableIntArray.length());
            this.f34789b += immutableIntArray.length();
            return this;
        }

        public c c(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            for (Integer num : iterable) {
                a(num.intValue());
            }
            return this;
        }

        public c d(Collection<Integer> collection) {
            g(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f34788a;
                int i4 = this.f34789b;
                this.f34789b = i4 + 1;
                iArr[i4] = num.intValue();
            }
            return this;
        }

        public c e(int[] iArr) {
            g(iArr.length);
            System.arraycopy(iArr, 0, this.f34788a, this.f34789b, iArr.length);
            this.f34789b += iArr.length;
            return this;
        }

        @CheckReturnValue
        public ImmutableIntArray f() {
            return this.f34789b == 0 ? ImmutableIntArray.f34783d : new ImmutableIntArray(this.f34788a, 0, this.f34789b);
        }
    }

    public static c builder(int i4) {
        a0.k(i4 >= 0, "Invalid initialCapacity: %s", i4);
        return new c(i4);
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? f34783d : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean d() {
        return this.f34785b > 0 || this.f34786c < this.f34784a.length;
    }

    public static ImmutableIntArray of() {
        return f34783d;
    }

    public List<Integer> asList() {
        return new b();
    }

    public boolean contains(int i4) {
        return indexOf(i4) >= 0;
    }

    Object e() {
        return isEmpty() ? f34783d : this;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableIntArray) {
            ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
            if (length() != immutableIntArray.length()) {
                return false;
            }
            for (int i4 = 0; i4 < length(); i4++) {
                if (get(i4) != immutableIntArray.get(i4)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int get(int i4) {
        a0.C(i4, length());
        return this.f34784a[this.f34785b + i4];
    }

    Object h() {
        return trimmed();
    }

    public int hashCode() {
        int i4 = 1;
        for (int i10 = this.f34785b; i10 < this.f34786c; i10++) {
            i4 = (i4 * 31) + f.l(this.f34784a[i10]);
        }
        return i4;
    }

    public int indexOf(int i4) {
        for (int i10 = this.f34785b; i10 < this.f34786c; i10++) {
            if (this.f34784a[i10] == i4) {
                return i10 - this.f34785b;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.f34786c == this.f34785b;
    }

    public int lastIndexOf(int i4) {
        int i10 = this.f34786c;
        while (true) {
            i10--;
            int i11 = this.f34785b;
            if (i10 < i11) {
                return -1;
            }
            if (this.f34784a[i10] == i4) {
                return i10 - i11;
            }
        }
    }

    public int length() {
        return this.f34786c - this.f34785b;
    }

    public ImmutableIntArray subArray(int i4, int i10) {
        a0.f0(i4, i10, length());
        if (i4 == i10) {
            return f34783d;
        }
        int[] iArr = this.f34784a;
        int i11 = this.f34785b;
        return new ImmutableIntArray(iArr, i4 + i11, i11 + i10);
    }

    public int[] toArray() {
        return Arrays.copyOfRange(this.f34784a, this.f34785b, this.f34786c);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.f34784a[this.f34785b]);
        int i4 = this.f34785b;
        while (true) {
            i4++;
            if (i4 < this.f34786c) {
                sb.append(", ");
                sb.append(this.f34784a[i4]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableIntArray trimmed() {
        return d() ? new ImmutableIntArray(toArray()) : this;
    }

    private ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? f34783d : new ImmutableIntArray(f.B(collection));
    }

    public static ImmutableIntArray of(int i4) {
        return new ImmutableIntArray(new int[]{i4});
    }

    private ImmutableIntArray(int[] iArr, int i4, int i10) {
        this.f34784a = iArr;
        this.f34785b = i4;
        this.f34786c = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Integer>) iterable);
        }
        return builder().c(iterable).f();
    }

    public static ImmutableIntArray of(int i4, int i10) {
        return new ImmutableIntArray(new int[]{i4, i10});
    }

    public static ImmutableIntArray of(int i4, int i10, int i11) {
        return new ImmutableIntArray(new int[]{i4, i10, i11});
    }

    public static ImmutableIntArray of(int i4, int i10, int i11, int i12) {
        return new ImmutableIntArray(new int[]{i4, i10, i11, i12});
    }

    public static ImmutableIntArray of(int i4, int i10, int i11, int i12, int i13) {
        return new ImmutableIntArray(new int[]{i4, i10, i11, i12, i13});
    }

    public static ImmutableIntArray of(int i4, int i10, int i11, int i12, int i13, int i14) {
        return new ImmutableIntArray(new int[]{i4, i10, i11, i12, i13, i14});
    }

    public static ImmutableIntArray of(int i4, int... iArr) {
        a0.e(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i4;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2);
    }
}
