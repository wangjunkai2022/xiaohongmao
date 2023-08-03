package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class EnumMultiset<E extends Enum<E>> extends i<E> implements Serializable {
    @h3.c

    /* renamed from: h  reason: collision with root package name */
    private static final long f32640h = 0;

    /* renamed from: c  reason: collision with root package name */
    private transient Class<E> f32641c;

    /* renamed from: d  reason: collision with root package name */
    private transient E[] f32642d;

    /* renamed from: e  reason: collision with root package name */
    private transient int[] f32643e;

    /* renamed from: f  reason: collision with root package name */
    private transient int f32644f;

    /* renamed from: g  reason: collision with root package name */
    private transient long f32645g;

    /* loaded from: classes2.dex */
    class a extends EnumMultiset<E>.c<E> {
        a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* renamed from: b */
        public E a(int i4) {
            return (E) EnumMultiset.this.f32642d[i4];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends EnumMultiset<E>.c<k3.a<E>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends l3.f<E> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f32648a;

            a(int i4) {
                this.f32648a = i4;
            }

            @Override // com.google.common.collect.k3.a
            /* renamed from: a */
            public E getElement() {
                return (E) EnumMultiset.this.f32642d[this.f32648a];
            }

            @Override // com.google.common.collect.k3.a
            public int getCount() {
                return EnumMultiset.this.f32643e[this.f32648a];
            }
        }

        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* renamed from: b */
        public k3.a<E> a(int i4) {
            return new a(i4);
        }
    }

    /* loaded from: classes2.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f32650a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f32651b = -1;

        c() {
        }

        abstract T a(int i4);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f32650a < EnumMultiset.this.f32642d.length) {
                int[] iArr = EnumMultiset.this.f32643e;
                int i4 = this.f32650a;
                if (iArr[i4] > 0) {
                    return true;
                }
                this.f32650a = i4 + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T a10 = a(this.f32650a);
                int i4 = this.f32650a;
                this.f32651b = i4;
                this.f32650a = i4 + 1;
                return a10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            y.e(this.f32651b >= 0);
            if (EnumMultiset.this.f32643e[this.f32651b] > 0) {
                EnumMultiset.j(EnumMultiset.this);
                EnumMultiset.this.f32645g -= EnumMultiset.this.f32643e[this.f32651b];
                EnumMultiset.this.f32643e[this.f32651b] = 0;
            }
            this.f32651b = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.f32641c = cls;
        com.google.common.base.a0.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.f32642d = enumConstants;
        this.f32643e = new int[enumConstants.length];
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    static /* synthetic */ int j(EnumMultiset enumMultiset) {
        int i4 = enumMultiset.f32644f;
        enumMultiset.f32644f = i4 - 1;
        return i4;
    }

    private boolean n(@NullableDecl Object obj) {
        if (obj instanceof Enum) {
            Enum r52 = (Enum) obj;
            int ordinal = r52.ordinal();
            E[] eArr = this.f32642d;
            return ordinal < eArr.length && eArr[ordinal] == r52;
        }
        return false;
    }

    @h3.c
    private void o(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.f32641c = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.f32642d = enumConstants;
        this.f32643e = new int[enumConstants.length];
        m4.f(this, objectInputStream);
    }

    @h3.c
    private void p(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f32641c);
        m4.k(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ int add(Object obj, int i4) {
        return add((EnumMultiset<E>) ((Enum) obj), i4);
    }

    @Override // com.google.common.collect.i
    int b() {
        return this.f32644f;
    }

    @Override // com.google.common.collect.i
    Iterator<E> c() {
        return new a();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.f32643e, 0);
        this.f32645g = 0L;
        this.f32644f = 0;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        if (obj == null || !n(obj)) {
            return 0;
        }
        return this.f32643e[((Enum) obj).ordinal()];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    public Iterator<k3.a<E>> d() {
        return new b();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.k3
    public Iterator<E> iterator() {
        return l3.n(this);
    }

    void m(@NullableDecl Object obj) {
        com.google.common.base.a0.E(obj);
        if (n(obj)) {
            return;
        }
        throw new ClassCastException("Expected an " + this.f32641c + " but got " + obj);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i4) {
        if (obj == null || !n(obj)) {
            return 0;
        }
        Enum r12 = (Enum) obj;
        y.b(i4, "occurrences");
        if (i4 == 0) {
            return count(obj);
        }
        int ordinal = r12.ordinal();
        int[] iArr = this.f32643e;
        int i10 = iArr[ordinal];
        if (i10 == 0) {
            return 0;
        }
        if (i10 <= i4) {
            iArr[ordinal] = 0;
            this.f32644f--;
            this.f32645g -= i10;
        } else {
            iArr[ordinal] = i10 - i4;
            this.f32645g -= i4;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.i, com.google.common.collect.k3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ int setCount(Object obj, int i4) {
        return setCount((EnumMultiset<E>) ((Enum) obj), i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        return com.google.common.primitives.f.x(this.f32645g);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        com.google.common.base.a0.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        w2.a(enumMultiset, iterable);
        return enumMultiset;
    }

    @CanIgnoreReturnValue
    public int add(E e4, int i4) {
        m(e4);
        y.b(i4, "occurrences");
        if (i4 == 0) {
            return count(e4);
        }
        int ordinal = e4.ordinal();
        int i10 = this.f32643e[ordinal];
        long j4 = i4;
        long j10 = i10 + j4;
        com.google.common.base.a0.p(j10 <= 2147483647L, "too many occurrences: %s", j10);
        this.f32643e[ordinal] = (int) j10;
        if (i10 == 0) {
            this.f32644f++;
        }
        this.f32645g += j4;
        return i10;
    }

    @CanIgnoreReturnValue
    public int setCount(E e4, int i4) {
        m(e4);
        y.b(i4, "count");
        int ordinal = e4.ordinal();
        int[] iArr = this.f32643e;
        int i10 = iArr[ordinal];
        iArr[ordinal] = i4;
        this.f32645g += i4 - i10;
        if (i10 == 0 && i4 > 0) {
            this.f32644f++;
        } else if (i10 > 0 && i4 == 0) {
            this.f32644f--;
        }
        return i10;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> create = create(cls);
        w2.a(create, iterable);
        return create;
    }
}
