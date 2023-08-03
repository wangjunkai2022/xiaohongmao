package kotlin.reflect.jvm.internal.impl.utils;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import m8.g;
import m8.h;

/* compiled from: SmartSet.kt */
/* loaded from: classes4.dex */
public final class SmartSet<T> extends AbstractSet<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @h
    private Object data;
    private int size;

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    private static final class ArrayIterator<T> implements Iterator<T>, KMutableIterator {
        @g
        private final Iterator<T> arrayIterator;

        public ArrayIterator(@g T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.arrayIterator = ArrayIteratorKt.iterator(array);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.arrayIterator.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.arrayIterator.next();
        }

        @Override // java.util.Iterator
        @g
        public Void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final <T> SmartSet<T> create() {
            return new SmartSet<>(null);
        }

        @JvmStatic
        @g
        public final <T> SmartSet<T> create(@g Collection<? extends T> set) {
            Intrinsics.checkNotNullParameter(set, "set");
            SmartSet<T> smartSet = new SmartSet<>(null);
            smartSet.addAll(set);
            return smartSet;
        }
    }

    /* compiled from: SmartSet.kt */
    /* loaded from: classes4.dex */
    private static final class SingletonIterator<T> implements Iterator<T>, KMutableIterator {
        private final T element;
        private boolean hasNext = true;

        public SingletonIterator(T t9) {
            this.element = t9;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.hasNext) {
                this.hasNext = false;
                return this.element;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        @g
        public Void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private SmartSet() {
    }

    public /* synthetic */ SmartSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    @g
    public static final <T> SmartSet<T> create() {
        return Companion.create();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(T t9) {
        boolean contains;
        Object[] objArr;
        LinkedHashSet linkedSetOf;
        if (size() == 0) {
            this.data = t9;
        } else if (size() == 1) {
            if (Intrinsics.areEqual(this.data, t9)) {
                return false;
            }
            this.data = new Object[]{this.data, t9};
        } else if (size() < 5) {
            Object obj = this.data;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr2 = (Object[]) obj;
            contains = ArraysKt___ArraysKt.contains(objArr2, t9);
            if (contains) {
                return false;
            }
            if (size() == 4) {
                linkedSetOf = SetsKt__SetsKt.linkedSetOf(Arrays.copyOf(objArr2, objArr2.length));
                linkedSetOf.add(t9);
                objArr = linkedSetOf;
            } else {
                Object[] copyOf = Arrays.copyOf(objArr2, size() + 1);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                copyOf[copyOf.length - 1] = t9;
                objArr = copyOf;
            }
            this.data = objArr;
        } else {
            Object obj2 = this.data;
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!TypeIntrinsics.asMutableSet(obj2).add(t9)) {
                return false;
            }
        }
        setSize(size() + 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.data = null;
        setSize(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        boolean contains;
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return Intrinsics.areEqual(this.data, obj);
        }
        if (size() >= 5) {
            Object obj2 = this.data;
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
            return ((Set) obj2).contains(obj);
        }
        Object obj3 = this.data;
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
        contains = ArraysKt___ArraysKt.contains((Object[]) obj3, obj);
        return contains;
    }

    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @g
    public Iterator<T> iterator() {
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            return new SingletonIterator(this.data);
        }
        if (size() < 5) {
            Object obj = this.data;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return new ArrayIterator((Object[]) obj);
        }
        Object obj2 = this.data;
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
        return TypeIntrinsics.asMutableSet(obj2).iterator();
    }

    public void setSize(int i4) {
        this.size = i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
