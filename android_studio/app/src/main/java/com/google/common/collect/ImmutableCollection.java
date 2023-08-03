package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f32702a = new Object[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class a<E> extends b<E> {

        /* renamed from: b  reason: collision with root package name */
        Object[] f32703b;

        /* renamed from: c  reason: collision with root package name */
        int f32704c;

        /* renamed from: d  reason: collision with root package name */
        boolean f32705d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i4) {
            y.b(i4, "initialCapacity");
            this.f32703b = new Object[i4];
            this.f32704c = 0;
        }

        private void h(int i4) {
            Object[] objArr = this.f32703b;
            if (objArr.length < i4) {
                this.f32703b = Arrays.copyOf(objArr, b.f(objArr.length, i4));
                this.f32705d = false;
            } else if (this.f32705d) {
                this.f32703b = (Object[]) objArr.clone();
                this.f32705d = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        public b<E> b(E... eArr) {
            p3.b(eArr);
            h(this.f32704c + eArr.length);
            System.arraycopy(eArr, 0, this.f32703b, this.f32704c, eArr.length);
            this.f32704c += eArr.length;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        public b<E> c(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                h(this.f32704c + collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.f32704c = ((ImmutableCollection) collection).a(this.f32703b, this.f32704c);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.b
        @CanIgnoreReturnValue
        /* renamed from: g */
        public a<E> a(E e4) {
            com.google.common.base.a0.E(e4);
            h(this.f32704c + 1);
            Object[] objArr = this.f32703b;
            int i4 = this.f32704c;
            this.f32704c = i4 + 1;
            objArr[i4] = e4;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b<E> {

        /* renamed from: a  reason: collision with root package name */
        static final int f32706a = 4;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int f(int i4, int i10) {
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

        @CanIgnoreReturnValue
        public abstract b<E> a(E e4);

        @CanIgnoreReturnValue
        public b<E> b(E... eArr) {
            for (E e4 : eArr) {
                a(e4);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> c(Iterable<? extends E> iterable) {
            for (E e4 : iterable) {
                a(e4);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> d(Iterator<? extends E> it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public abstract ImmutableCollection<E> e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public int a(Object[] objArr, int i4) {
        k5<E> it = iterator();
        while (it.hasNext()) {
            objArr[i4] = it.next();
            i4++;
        }
        return i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean add(E e4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.of() : ImmutableList.j(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@NullableDecl Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean e();

    Object h() {
        return new ImmutableList.d(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract k5<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f32702a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final <T> T[] toArray(T[] tArr) {
        com.google.common.base.a0.E(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] b10 = b();
            if (b10 != null) {
                return (T[]) u3.a(b10, d(), c(), tArr);
            }
            tArr = (T[]) p3.j(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        a(tArr, 0);
        return tArr;
    }
}
