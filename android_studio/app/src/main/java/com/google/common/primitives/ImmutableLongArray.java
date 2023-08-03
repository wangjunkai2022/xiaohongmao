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
public final class ImmutableLongArray implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableLongArray f34790d = new ImmutableLongArray(new long[0]);

    /* renamed from: a  reason: collision with root package name */
    private final long[] f34791a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f34792b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34793c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Long> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableLongArray f34794a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Long get(int i4) {
            return Long.valueOf(this.f34794a.get(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return this.f34794a.equals(((b) obj).f34794a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i4 = this.f34794a.f34792b;
                for (Object obj2 : list) {
                    if (obj2 instanceof Long) {
                        int i10 = i4 + 1;
                        if (this.f34794a.f34791a[i4] == ((Long) obj2).longValue()) {
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
            return this.f34794a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Long) {
                return this.f34794a.indexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Long) {
                return this.f34794a.lastIndexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34794a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i4, int i10) {
            return this.f34794a.subArray(i4, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f34794a.toString();
        }

        private b(ImmutableLongArray immutableLongArray) {
            this.f34794a = immutableLongArray;
        }
    }

    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private long[] f34795a;

        /* renamed from: b  reason: collision with root package name */
        private int f34796b = 0;

        c(int i4) {
            this.f34795a = new long[i4];
        }

        private void g(int i4) {
            int i10 = this.f34796b + i4;
            long[] jArr = this.f34795a;
            if (i10 > jArr.length) {
                long[] jArr2 = new long[h(jArr.length, i10)];
                System.arraycopy(this.f34795a, 0, jArr2, 0, this.f34796b);
                this.f34795a = jArr2;
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

        public c a(long j4) {
            g(1);
            long[] jArr = this.f34795a;
            int i4 = this.f34796b;
            jArr[i4] = j4;
            this.f34796b = i4 + 1;
            return this;
        }

        public c b(ImmutableLongArray immutableLongArray) {
            g(immutableLongArray.length());
            System.arraycopy(immutableLongArray.f34791a, immutableLongArray.f34792b, this.f34795a, this.f34796b, immutableLongArray.length());
            this.f34796b += immutableLongArray.length();
            return this;
        }

        public c c(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            for (Long l10 : iterable) {
                a(l10.longValue());
            }
            return this;
        }

        public c d(Collection<Long> collection) {
            g(collection.size());
            for (Long l10 : collection) {
                long[] jArr = this.f34795a;
                int i4 = this.f34796b;
                this.f34796b = i4 + 1;
                jArr[i4] = l10.longValue();
            }
            return this;
        }

        public c e(long[] jArr) {
            g(jArr.length);
            System.arraycopy(jArr, 0, this.f34795a, this.f34796b, jArr.length);
            this.f34796b += jArr.length;
            return this;
        }

        @CheckReturnValue
        public ImmutableLongArray f() {
            return this.f34796b == 0 ? ImmutableLongArray.f34790d : new ImmutableLongArray(this.f34795a, 0, this.f34796b);
        }
    }

    public static c builder(int i4) {
        a0.k(i4 >= 0, "Invalid initialCapacity: %s", i4);
        return new c(i4);
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        return jArr.length == 0 ? f34790d : new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    private boolean d() {
        return this.f34792b > 0 || this.f34793c < this.f34791a.length;
    }

    public static ImmutableLongArray of() {
        return f34790d;
    }

    public List<Long> asList() {
        return new b();
    }

    public boolean contains(long j4) {
        return indexOf(j4) >= 0;
    }

    Object e() {
        return isEmpty() ? f34790d : this;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableLongArray) {
            ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
            if (length() != immutableLongArray.length()) {
                return false;
            }
            for (int i4 = 0; i4 < length(); i4++) {
                if (get(i4) != immutableLongArray.get(i4)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public long get(int i4) {
        a0.C(i4, length());
        return this.f34791a[this.f34792b + i4];
    }

    Object h() {
        return trimmed();
    }

    public int hashCode() {
        int i4 = 1;
        for (int i10 = this.f34792b; i10 < this.f34793c; i10++) {
            i4 = (i4 * 31) + g.k(this.f34791a[i10]);
        }
        return i4;
    }

    public int indexOf(long j4) {
        for (int i4 = this.f34792b; i4 < this.f34793c; i4++) {
            if (this.f34791a[i4] == j4) {
                return i4 - this.f34792b;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.f34793c == this.f34792b;
    }

    public int lastIndexOf(long j4) {
        int i4 = this.f34793c;
        while (true) {
            i4--;
            int i10 = this.f34792b;
            if (i4 < i10) {
                return -1;
            }
            if (this.f34791a[i4] == j4) {
                return i4 - i10;
            }
        }
    }

    public int length() {
        return this.f34793c - this.f34792b;
    }

    public ImmutableLongArray subArray(int i4, int i10) {
        a0.f0(i4, i10, length());
        if (i4 == i10) {
            return f34790d;
        }
        long[] jArr = this.f34791a;
        int i11 = this.f34792b;
        return new ImmutableLongArray(jArr, i4 + i11, i11 + i10);
    }

    public long[] toArray() {
        return Arrays.copyOfRange(this.f34791a, this.f34792b, this.f34793c);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.f34791a[this.f34792b]);
        int i4 = this.f34792b;
        while (true) {
            i4++;
            if (i4 < this.f34793c) {
                sb.append(", ");
                sb.append(this.f34791a[i4]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableLongArray trimmed() {
        return d() ? new ImmutableLongArray(toArray()) : this;
    }

    private ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public static ImmutableLongArray of(long j4) {
        return new ImmutableLongArray(new long[]{j4});
    }

    private ImmutableLongArray(long[] jArr, int i4, int i10) {
        this.f34791a = jArr;
        this.f34792b = i4;
        this.f34793c = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? f34790d : new ImmutableLongArray(g.z(collection));
    }

    public static ImmutableLongArray of(long j4, long j10) {
        return new ImmutableLongArray(new long[]{j4, j10});
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
        }
        return builder().c(iterable).f();
    }

    public static ImmutableLongArray of(long j4, long j10, long j11) {
        return new ImmutableLongArray(new long[]{j4, j10, j11});
    }

    public static ImmutableLongArray of(long j4, long j10, long j11, long j12) {
        return new ImmutableLongArray(new long[]{j4, j10, j11, j12});
    }

    public static ImmutableLongArray of(long j4, long j10, long j11, long j12, long j13) {
        return new ImmutableLongArray(new long[]{j4, j10, j11, j12, j13});
    }

    public static ImmutableLongArray of(long j4, long j10, long j11, long j12, long j13, long j14) {
        return new ImmutableLongArray(new long[]{j4, j10, j11, j12, j13, j14});
    }

    public static ImmutableLongArray of(long j4, long... jArr) {
        a0.e(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j4;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2);
    }
}
